<?php

class Photos extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function upload_photos()
    {
        //upload config
        $config['upload_path'] = './uploads/';
        $config['allowed_types'] = 'jpg|png';
        $config['max_size'] = 0;
        $config['max_width'] = 0;
        $config['max_height'] = 0;
        $config['file_ext_tolower'] = TRUE;
        $config['encrypt_name'] = TRUE;

        $this->load->library('upload', $config);

        $this->load->library('image_lib');

        $number_of_files = sizeof($_FILES['photos']['tmp_name']);


        for ($i = 0; $i < $number_of_files; $i++) {
            $_FILES['currentimage']['name'] = $_FILES['photos']['name'][$i];
            $_FILES['currentimage']['type'] = $_FILES['photos']['type'][$i];
            $_FILES['currentimage']['tmp_name'] = $_FILES['photos']['tmp_name'][$i];
            $_FILES['currentimage']['error'] = $_FILES['photos']['error'][$i];
            $_FILES['currentimage']['size'] = $_FILES['photos']['size'][$i];

            $this->upload->initialize($config);
            $this->image_lib->clear();

            if (!$this->upload->do_upload('currentimage')) {
                $data['upload_error'] = $this->upload->display_errors();
            } else {
                $current_photo = $this->upload->data();
                $category_id = $this->get_category_id($this->input->post('category'));
                $max_order = $this->get_max_order($category_id[0]->id_category);

                $current_photo_to_insert = array(
                    'name' => $current_photo['raw_name'],
                    'category_id' => $category_id[0]->id_category,
                    'photo_order' => $max_order[0]->max + 1,
                );

                //inserting a photo:
                $this->db->insert('photos', $current_photo_to_insert);

                //config for resizing
                $config_resize['image_library'] = 'gd2';
                $config_resize['source_image'] = './uploads/' . $current_photo['file_name'];
                $config_resize['quality'] = '89%';


                if ($this->input->post('category') == 'slider') {
                    $config_resize['width'] = 1110; // x 740
                    $config_resize['quality'] = '90%';
                    $thumbs = TRUE;
                } else {
                    $config_resize['width'] = 2000;
                    $config_resize['height'] = 1200;
                    $config_resize['maintain_ratio'] = TRUE;
                    $config_resize['master_dim'] = 'height';
                    $thumbs = TRUE;
                }

                $this->image_lib->clear();
                $this->image_lib->initialize($config_resize);
                $this->image_lib->resize();


                if ($this->input->post('category') == 'slider') {

                    $config_crop_slider['source_image'] = $config_resize['source_image'];
                    $config_crop_slider['width'] = 1110;
                    $config_crop_slider['height'] = 740;
                    $config_crop_slider['maintain_ratio'] = FALSE;
                    $this->image_lib->initialize($config_crop_slider);
                    $this->image_lib->crop();


                }

                //creating thumbnail
                $config_resize_thumb['source_image'] = $config_resize['source_image'];
                $config_resize_thumb['maintain_ratio'] = TRUE;
                $config_resize_thumb['width'] = 300;
                $config_resize_thumb['height'] = 200;
                $config_resize_thumb['create_thumb'] = TRUE;
                $config_resize_thumb['thumb_marker'] = '_thumb';
                $config_resize_thumb['master_dim'] = 'height';
                $config_resize_thumb['quality'] = '75%';
                $this->image_lib->initialize($config_resize_thumb);
                $this->image_lib->resize();
                $this->image_lib->clear();

                //watermarking
                if ($this->input->post('category') != 'slider') {
                    $config_watermark['image_library'] = 'gd2';
                    $config_watermark['wm_type'] = 'overlay';
                    $config_watermark['source_image'] = $config_resize['source_image'];
                    $config_watermark['wm_padding'] = '-20px';
                    $config_watermark['wm_vrt_alignment'] = 'bottom';
                    $config_watermark['wm_hor_alignment'] = 'right';
                    $config_watermark['wm_overlay_path'] = './images/watermark.png';
                    $config_watermark['wm_opacity'] = '1';
                    $config_watermark['wm_x_transp'] = 4;
                    $config_watermark['wm_y_transp'] = 4;
                    $this->image_lib->initialize($config_watermark);
                    $this->image_lib->watermark();
                    $this->image_lib->clear();
                }

                $data['upload_success'] = TRUE;
                $data['category'] = $this->input->post('category');
                $data['num'] = $number_of_files;
            }
        }
        $data['files'] = $_FILES['photos'];

        return $data;
    }

    public function get_last_added($amount)
    {
        $this->db->order_by('id_photo', "DESC");
        $this->db->limit($amount);
        $query = $this->db->get('photos');
        return $query->result();
    }

    public function get_slides()
    {
        $category_id = $this->get_category_id('slider');

        $this->db->select('name');
        $this->db->where('category_id', $category_id[0]->id_category);
        $this->db->order_by('photo_order', 'DESC');
        $query = $this->db->get('photos');
        return $query->result();
    }

    public function get_photos($category)
    {
        $category_id = $this->get_category_id($category);
        $this->db->select('name');
        $this->db->where('category_id', $category_id[0]->id_category);
        $this->db->order_by('photo_order', 'DESC');
        $query = $this->db->get('photos');
        return $query->result();
    }

    public function get_category_id($name)
    {
        $this->db->select('id_category');
        $this->db->where('name', $name);
        $query = $this->db->get('categories');
        return $query->result();
    }

    function get_max_order($category_id)
    {
        $this->db->select_max('photo_order', 'max');
        $this->db->where('category_id', $category_id);
        $query = $this->db->get('photos');
        return $query->result();
    }


    public function get_category_from_name($photo_name)
    {
        $this->db->select('category_id');
        $this->db->where('name', $photo_name);
        $query = $this->db->get('photos');
        return $query->result();
    }

    public function delete_photo($photo_name)
    {
        $category_of_photo = $this->get_category_from_name($photo_name);


        $this->db->where('name', $photo_name);
        if ($this->db->delete('photos')) {
            $this->refresh_order($category_of_photo[0]->category_id);
            return TRUE;
        } else {
            return FALSE;
        }

    }

    public function refresh_order($category_id)
    {
        $this->db->select('id_photo, name, category_id, photo_order');
        $this->db->where('category_id', $category_id);
        $this->db->order_by('category_id', 'ASC');
        $query = $this->db->get('photos');
        $i = 0;
        foreach ($query->result() as $photo_order) {

            $new_order = array(
                'id_photo' => $photo_order->id_photo,
                'name' => $photo_order->name,
                'category_id' => $photo_order->category_id,
                'photo_order' => (string)$i++
            );
            $this->db->replace('photos', $new_order);
        }
    }

    public function backward_photo($photo_name)
    {
        $this->db->select('category_id, photo_order');
        $this->db->where('name', $photo_name);
        $query = $this->db->get('photos');
        $row = $query->result();
        $curr_order = (int)$row[0]->photo_order;

        $category_of_photo = $this->get_category_from_name($photo_name);
        $max_order = $this->get_max_order($category_of_photo[0]->category_id);

        if ($curr_order < $max_order[0]->max) {

            $new_order = (int)$row[0]->photo_order + 1;

            $this->db->select('name');
            $this->db->where('photo_order', $new_order);
            $this->db->where('category_id', (int)$row[0]->category_id);
            $query2 = $this->db->get('photos');
            $row2 = $query2->result();

            $this->db->set('photo_order', (int)$row[0]->photo_order);
            $this->db->where('name', $row2[0]->name);
            $this->db->update('photos');

            $this->db->set('photo_order', $new_order);
            $this->db->where('name', $photo_name);
            $this->db->update('photos');

            return TRUE;
        } else {
            return FALSE;
        }
    }

    public function forward_photo($photo_name)
    {
        $this->db->select('category_id, photo_order');
        $this->db->where('name', $photo_name);
        $query = $this->db->get('photos');
        $row = $query->result();
        $curr_order = (int)$row[0]->photo_order;

        if ($curr_order > 1) {

            $new_order = (int)$row[0]->photo_order - 1;

            $this->db->select('name');
            $this->db->where('photo_order', $new_order);
            $this->db->where('category_id', (int)$row[0]->category_id);
            $query2 = $this->db->get('photos');
            $row2 = $query2->result();

            $this->db->set('photo_order', (int)$row[0]->photo_order);
            $this->db->where('name', $row2[0]->name);
            $this->db->update('photos');

            $this->db->set('photo_order', $new_order);
            $this->db->where('name', $photo_name);
            $this->db->update('photos');

            return TRUE;
        } else {
            return FALSE;
        }
    }

}
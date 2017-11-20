<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller
{
    public function index()
    {
        if (!isset($this->session->userdata['is_logged'])) {
            redirect(base_url() . 'admin/login');
        }

        $data['title'] = 'Admin - panel';
        $this->load->view('template/header', $data);
        $this->load->view('template/nav');
        $this->load->view('admin/panel');
        $this->load->view('template/footer');
    }

    public function messages()
    {
        if (!isset($this->session->userdata['is_logged'])) {
            redirect(base_url() . 'admin/login');
        }

        $data['title'] = 'Admin - wiadomości';

        $this->load->model('messages');
        $data['messages'] = $this->messages->get_messages();


        $this->load->view('template/header', $data);
        $this->load->view('template/nav');
        $this->load->view('admin/messages', $data);
        $this->load->view('template/footer');
    }

    public function add_photos()
    {
        if (!isset($this->session->userdata['is_logged'])) {
            redirect(base_url() . 'admin/login');
        }

        $data['title'] = 'Admin - dodawanie zdjęć';
        $this->load->view('template/header', $data);
        $this->load->view('template/nav');

        $this->form_validation->set_rules('category', 'kategoria', 'required');
        $this->form_validation->set_message('required', 'Pole {field} musi być zaznaczone!');

        if ($this->form_validation->run() == FALSE || !isset($_FILES['photos']['size']) || $_FILES['photos']['size'][0] == 0) {
            $this->load->view('admin/add_photos', $data);
        } else {
            $this->load->model('photos');
            $data = $this->photos->upload_photos();

            $data['last_added'] = $this->photos->get_last_added($data['num']);
            $this->load->view('admin/uploaded', $data);
        }

        $this->load->view('template/footer');
    }

    public function edit_photos()
    {
        if (!isset($this->session->userdata['is_logged'])) {
            redirect(base_url() . 'admin/login');
        }

        $data['title'] = 'Admin - edytowanie zdjęć';

        $this->load->model('photos');

        $photos_array = array();
        array_push($photos_array, $this->photos->get_photos('slider'));
        array_push($photos_array, $this->photos->get_photos('products'));
        array_push($photos_array, $this->photos->get_photos('clubbing'));
        array_push($photos_array, $this->photos->get_photos('cars'));
        array_push($photos_array, $this->photos->get_photos('other'));
        array_push($photos_array, $this->photos->get_photos('sessions'));
        array_push($photos_array, $this->photos->get_photos('interior'));

        $photos_names = array();
        for ($i = 0; $i < sizeof($photos_array); $i++) {
            for ($j = 0; $j < sizeof($photos_array[$i]); $j++) {
                array_push($photos_names, $photos_array[$i][$j]->name);
            }
        }

        $data['photos'] = $photos_names;

        $this->load->view('template/header', $data);
        $this->load->view('template/nav');
        $this->load->view('admin/edit_photos', $data);
        $this->load->view('template/footer');
    }

    public function delete()
    {
        if (!isset($this->session->userdata['is_logged'])) {
            redirect(base_url() . 'admin/login');
        }

        $data['title'] = 'Admin - usuwanie zdjęć';

        $this->load->view('template/header', $data);
        $this->load->view('template/nav');

        $photo_name = $this->uri->segment(3, 0);
        $this->load->model('photos');
        if ($this->photos->delete_photo($photo_name)) {
            unlink('./uploads/'.$photo_name.'.jpg');
            unlink('./uploads/'.$photo_name.'_thumb.jpg');
            $deleted = TRUE;
        } else {
            $deleted = FALSE;
        }
        $data['deleted'] = $deleted;
        $data['name'] = $photo_name;

        $this->load->view('admin/delete_photos_completed', $data);
        $this->load->view('template/footer');
    }

    public function backward()
    {
        if (!isset($this->session->userdata['is_logged'])) {
            redirect(base_url() . 'admin/login');
        }

        $data['title'] = 'Admin - edytowanie zdjęć';


        $photo_name = $this->uri->segment(3, 0);
        $this->load->model('photos');
        if ($this->photos->backward_photo($photo_name)) {
            redirect(base_url() . 'admin/edit_photos');
        } else {
            redirect(base_url() . 'admin/edit_photos');
        }

    }

    public function forward()
    {
        if (!isset($this->session->userdata['is_logged'])) {
            redirect(base_url() . 'admin/login');
        }

        $data['title'] = 'Admin - edytowanie zdjęć';


        $photo_name = $this->uri->segment(3, 0);
        $this->load->model('photos');
        if ($this->photos->forward_photo($photo_name)) {
            redirect(base_url() . 'admin/edit_photos');
        } else {
            redirect(base_url() . 'admin/edit_photos');
        }

    }

    public function login()
    {
        if (@$this->session->userdata['is_logged']) {
            redirect(base_url() . 'admin');
        }
        $data['title'] = 'Admin - logowanie';

        $this->load->view('template/header', $data);
        $this->load->view('template/nav');

        $this->form_validation->set_rules('login', 'nick', 'required|trim');
        $this->form_validation->set_rules('password', 'hasło', 'required|trim');
        $this->form_validation->set_message('required', 'Pole {field} musi zostać wypełnione!');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('admin/login');
        } else {
            $this->load->model('users');
            if ($this->users->log_in()) {
                redirect(base_url() . 'admin');
            } else {
                $data['error'] = 'Podałeś nieprawidłowy login lub hasło.';
                $this->load->view('admin/login', $data);
            }
        }

        $this->load->view('template/footer');
    }

    public function logout()
    {
        $session_data = array('login', 'is_logged');
        $this->session->unset_userdata($session_data);

        redirect(base_url() . 'admin/login');
    }

}
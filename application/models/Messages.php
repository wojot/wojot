<?php

class Messages extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    public function insert_message()
    {
        $name = $this->input->post('contact_name');
        $email = $this->input->post('contact_email');
        $telephone = $this->input->post('contact_telephone');
        $message = $this->input->post('contact_message');

        $data = array(
            'name' => $name,
            'email' => $email,
            'telephone' => $telephone,
            'message' => $message
        );

        $this->db->insert('messages', $data);
    }

    public function get_messages()
    {
        $this->db->order_by('id_message', "DESC");
        $query = $this->db->get('messages');
        return $query->result();
    }

}
<?php

class Users extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function log_in()
    {
        $login = $this->input->post('login');
        $password = md5($this->input->post('password'));
        $this->db->where('login', $login);
        $this->db->where('password', $password);
        $query = $this->db->get('users');
        if ($query->num_rows() == 1) {
            $result = $query->result_array();
            $result_login = $result[0]['login'];

            $this->load->library('session');
            $session_data = array(
                'login' => $result_login,
                'is_logged' => true,
            );

            $this->session->set_userdata($session_data);
            return true;
        } else {
            return false;
        }


    }
}
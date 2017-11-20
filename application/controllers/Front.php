<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Front extends CI_Controller
{

    public function index()
    {
        $data['title'] = 'Strona główna';

        $this->load->model('photos');
        $data['slides'] = $this->photos->get_slides();

        $this->load->view('template/header', $data);
        $this->load->view('template/nav');
        $this->load->view('main', $data);
        $this->load->view('template/footer');
    }

    public function komunia14maja()
    {
        $data['title'] = 'Komunia';

        $this->load->view('template/header', $data);
        $this->load->view('template/nav');
        $this->load->view('komunia', $data);
        $this->load->view('template/footer');
    }

    public function photography()
    {
        $data['title'] = 'Fotografia';

        $this->load->view('template/header', $data);
        $this->load->view('template/nav');
        $this->load->view('photography', $data);
        $this->load->view('template/footer');
    }

    public function category()
    {
        $category = $this->uri->segment(2, 0);
        $this->load->model('photos');
        $data['photos'] = $this->photos->get_photos($category);

        switch ($category) {
            case 'products':
                $category = 'Fotografia produktowa';
                break;
            case 'clubbing':
                $category = 'Fotografia klubowa';
                break;
            case 'cars':
                $category = 'Fotografia motoryzacyjna';
                break;
            case 'other':
                $category = 'Pozostałe fotografie';
                break;
            case 'sessions':
                $category = 'Sesje zdjęciowe';
                break;
            case 'interior':
                $category = 'Fotografia wnętrz';
                break;
            default:
                $category = 'Fotografia';
                break;
        }
        $data['title'] = $category;

        $this->load->view('template/header', $data);
        $this->load->view('template/nav');
        $this->load->view('category', $data);
        $this->load->view('template/footer');
    }

    public function contact()
    {
        $data['title'] = 'Kontakt';

        $this->load->view('template/header', $data);
        $this->load->view('template/nav');

        $this->form_validation->set_rules('contact_name', 'imię', 'required|trim');
        $this->form_validation->set_rules('contact_email', 'email', 'required|trim|valid_email');
        $this->form_validation->set_rules('contact_message', 'treść', 'required|trim');
        $this->form_validation->set_rules('contact_telephone', 'telefon', 'trim');

        $this->form_validation->set_message('required', 'Prosze wypełnić pole {field}.');


        if ($this->form_validation->run() == FALSE) {
            $this->load->view('contact');
        } else {
            $data['contact_name'] = $this->input->post('contact_name');
            $data['contact_email'] = $this->input->post('contact_email');
            $data['contact_message'] = $this->input->post('contact_message');
            $content = 'Tresc: ' . $this->input->post('contact_message');

            $telefon = $this->input->post('contact_telephone');
            if (!empty($telefon)) {
                $content = $content . ' Telefon: ' . $this->input->post('contact_telephone');
            }

            $this->load->library('email');

            //configuration
            $config['protocol'] = 'smtp';
            $config['mailpath'] = '/usr/sbin/sendmail';
            $config['charset'] = 'iso-8859-1';
            $config['wordwrap'] = TRUE;
            $config['smtp_host'] = 'ssl://s20.ehost.pl';
            $config['smtp_port'] = '465';
            $config['smtp_user'] = 'kontakt@wojot.pl';
            $config['smtp_pass'] = 'wojtek11';
            $config['charset'] = 'utf-8';


            $this->email->initialize($config);

            $this->email->from($this->input->post('contact_email'), $this->input->post('contact_name'));
            $this->email->to('wojotek@gmail.com');

            $this->email->subject('Wiadomosc wojot.pl');

            $this->email->message($content);

            if (!$this->email->send()) {
                echo 'Błąd wysyłania wiadomości, prosimy spróbować później.';
                exit;
            }

            if ($this->input->post('contact_telephone')) {
                $data['contact_telephone'] = $this->input->post('contact_telephone');
            }

            $this->load->model('messages');
            $this->messages->insert_message();
            $this->load->view('email_sent');
        }
        $this->load->view('template/footer');
    }

    public function email_sent()
    {
        $data['title'] = 'Wysłano';

        $this->load->view('template/header', $data);
        $this->load->view('template/nav');
        $this->load->view('email_sent');
        $this->load->view('template/footer');
    }


}

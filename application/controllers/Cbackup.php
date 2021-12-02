<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cbackup extends CI_Controller {

    public $menu;

    function __construct() {
        parent::__construct();
        $this->db->query('SET SESSION sql_mode = ""');
        $this->load->library('auth');
        $this->load->library('lbackup');
        $this->load->library('session');
        $this->load->model('Backup');
        $this->auth->check_admin_auth();
    }

    //Default loading for Customer System.
    public function nha_cung_cap() {
        $content = $this->lbackup->nha_cung_cap();
        $this->template->full_admin_html_view($content);
    }
    
    
}

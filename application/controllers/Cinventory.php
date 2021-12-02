<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cinventory extends CI_Controller {

    public $menu;

    function __construct() {
        parent::__construct();
        $this->db->query('SET SESSION sql_mode = ""');
        $this->load->library('auth');
        $this->load->library('linventory');
        $this->load->library('session');
        $this->load->model('Inventory');
        $this->auth->check_admin_auth();
    }

    //Default loading for Customer System.
   public function kiem_ke() {
        $content = $this->linventory->kiem_ke();
        $this->template->full_admin_html_view($content);
    }

    

}

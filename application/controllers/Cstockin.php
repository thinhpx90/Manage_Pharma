<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cstockin extends CI_Controller {

    public $menu;

    function __construct() {
        parent::__construct();
        $this->db->query('SET SESSION sql_mode = ""');
        $this->load->library('auth');
        $this->load->library('lstockin');
        $this->load->library('session');
        $this->load->model('Stock_In');
        $this->auth->check_admin_auth();
    }

    //Default loading for Customer System.
    public function ton_kho_ban_dau() {
        $content = $this->lstockin->ton_kho_ban_dau();
        //Here ,0 means array position 0 will be active class
        $this->template->full_admin_html_view($content);
    }

    public function dieu_chinh_ton() {
        $content = $this->lstockin->dieu_chinh_ton();
        $this->template->full_admin_html_view($content);
    }
     
    public function dieu_chuyen_kho() {
        $content = $this->lstockin->dieu_chuyen_kho();
        $this->template->full_admin_html_view($content);
    }
    
    public function hang_tra_lai() {
        $content = $this->lstockin->hang_tra_lai();
        $this->template->full_admin_html_view($content);
    }

    public function tu_nha_cung_cap() {
        $content = $this->lstockin->tu_nha_cung_cap();
        $this->template->full_admin_html_view($content);
    }
}

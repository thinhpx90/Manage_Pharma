<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Cstockout extends CI_Controller {

    public $menu;

    function __construct() {
        parent::__construct();
        $this->db->query('SET SESSION sql_mode = ""');
        $this->load->library('auth');
        $this->load->library('lstockout');
        $this->load->library('session');
        $this->load->model('Stock_Out');
        $this->auth->check_admin_auth();
    }

    //Default loading for Customer System.
   public function dieu_chuyen_kho() {
        $content = $this->lstockout->dieu_chuyen_kho();
        $this->template->full_admin_html_view($content);
    }

    public function dieu_chinh_ton() {
        $content = $this->lstockout->dieu_chinh_ton();
        $this->template->full_admin_html_view($content);
    }

    public function xuat_huy_hang() {
        $content = $this->lstockout->xuat_huy_hang();
        $this->template->full_admin_html_view($content);
    }
    public function tra_nha_cung_cap() {
        $content = $this->lstockout->tra_nha_cung_cap();
        $this->template->full_admin_html_view($content);
    }
    public function huy_don_thuoc() {
        $content = $this->lstockout->huy_don_thuoc();
        $this->template->full_admin_html_view($content);
    }

    public function xuat_khac() {
        $content = $this->lstockout->xuat_khac();
        $this->template->full_admin_html_view($content);
    }

}

<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Caccounting extends CI_Controller {

    public $menu;

    function __construct() {
        parent::__construct();
        $this->db->query('SET SESSION sql_mode = ""');
        $this->load->library('auth');
        $this->load->library('laccounting');
        $this->load->library('session');
        $this->load->model('Stock_In');
        $this->auth->check_admin_auth();
    }

    //Default loading for Customer System.
    public function bien_lai_thu() {
        $content = $this->laccounting->bien_lai_thu();
        //Here ,0 means array position 0 will be active class
        $this->template->full_admin_html_view($content);
    }

    public function bien_lai_chi() {
        $content = $this->laccounting->bien_lai_chi();
        $this->template->full_admin_html_view($content);
    }
     
    public function bao_cao_phu_thu() {
        $content = $this->laccounting->bao_cao_phu_thu();
        $this->template->full_admin_html_view($content);
    }
    
    public function bao_cao_thu_chi() {
        $content = $this->laccounting->bao_cao_thu_chi();
        $this->template->full_admin_html_view($content);
    }

    public function khoa_so() {
        $content = $this->laccounting->khoa_so();
        $this->template->full_admin_html_view($content);
    }

    public function doanh_so_theo_ca() {
        $content = $this->laccounting->doanh_so_theo_ca();
        $this->template->full_admin_html_view($content);
    }

    public function bao_cao_cong_no_KH() {
        $content = $this->laccounting->bao_cao_cong_no_KH();
        $this->template->full_admin_html_view($content);
    }

    public function bao_cao_CK_bac_si() {
        $content = $this->laccounting->bao_cao_CK_bac_si();
        $this->template->full_admin_html_view($content);
    }

    public function tinh_gia_ban() {
        $content = $this->laccounting->tinh_gia_ban();
        $this->template->full_admin_html_view($content);
    }

    public function danh_sach_thanh_toan_online() {
        $content = $this->laccounting->danh_sach_thanh_toan_online();
        $this->template->full_admin_html_view($content);
    }

    public function DS_bao_cao_cong_no_KH() {
        $content = $this->laccounting->DS_bao_cao_cong_no_KH();
        $this->template->full_admin_html_view($content);
    }

    public function cong_no_KH_Adler() {
        $content = $this->laccounting->cong_no_KH_Adler();
        $this->template->full_admin_html_view($content);
    }
}

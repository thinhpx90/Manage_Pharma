<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Laccounting {
    public function bien_lai_thu() {
        $CI =& get_instance();
        $CI->load->model('Accounting');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('accounting/bien_lai_thu',$data,true);
        return $rt;
    }
    
    public function bien_lai_chi() {
        $CI =& get_instance();
        $CI->load->model('Accounting');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('accounting/bien_lai_chi',$data,true);
        return $rt;
    }
     
    public function bao_cao_phu_thu() {
        $CI =& get_instance();
        $CI->load->model('Accounting');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('accounting/bao_cao_phu_thu',$data,true);
        return $rt;
    }
    
    public function bao_cao_thu_chi() {
        $CI =& get_instance();
        $CI->load->model('Accounting');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('accounting/bao_cao_thu_chi',$data,true);
        return $rt;
    }

    public function khoa_so() {
        $CI =& get_instance();
        $CI->load->model('Accounting');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('accounting/khoa_so',$data,true);
        return $rt;
    }

    public function doanh_so_theo_ca() {
        $CI =& get_instance();
        $CI->load->model('Accounting');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('accounting/doanh_so_theo_ca',$data,true);
        return $rt;
    }

    public function bao_cao_cong_no_KH() {
        $CI =& get_instance();
        $CI->load->model('Accounting');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('accounting/bao_cao_cong_no_KH',$data,true);
        return $rt;
    }

    public function bao_cao_CK_bac_si() {
        $CI =& get_instance();
        $CI->load->model('Accounting');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('accounting/bao_cao_CK_bac_si',$data,true);
        return $rt;
    }

    public function tinh_gia_ban() {
        $CI =& get_instance();
        $CI->load->model('Accounting');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('accounting/tinh_gia_ban',$data,true);
        return $rt;
    }

    public function danh_sach_thanh_toan_online() {
        $CI =& get_instance();
        $CI->load->model('Accounting');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('accounting/danh_sach_thanh_toan_online',$data,true);
        return $rt;
    }

    public function DS_bao_cao_cong_no_KH() {
        $CI =& get_instance();
        $CI->load->model('Accounting');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('accounting/DS_bao_cao_cong_no_KH',$data,true);
        return $rt;
    }

    public function cong_no_KH_Adler() {
        $CI =& get_instance();
        $CI->load->model('Accounting');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('accounting/cong_no_KH_Adler',$data,true);
        return $rt;
    }
}
?>
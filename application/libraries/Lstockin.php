<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Lstockin {
    public function ton_kho_ban_dau() {
        $CI =& get_instance();
        $CI->load->model('Stock_In');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('stockin/ton_kho_ban_dau',$data,true);
        return $rt;
    }
    
    public function dieu_chinh_ton() {
        $CI =& get_instance();
        $CI->load->model('Stock_In');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('stockin/dieu_chinh_ton',$data,true);
        return $rt;
    }
     
    public function dieu_chuyen_kho() {
        $CI =& get_instance();
        $CI->load->model('Stock_In');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('stockin/dieu_chuyen_kho',$data,true);
        return $rt;
    }
    
    public function hang_tra_lai() {
        $CI =& get_instance();
        $CI->load->model('Stock_In');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('stockin/hang_tra_lai',$data,true);
        return $rt;
    }

    public function tu_nha_cung_cap() {
        $CI =& get_instance();
        $CI->load->model('Stock_In');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('stockin/tu_nha_cung_cap',$data,true);
        return $rt;
    }
}
?>
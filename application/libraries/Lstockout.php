<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Lstockout {

    public function dieu_chuyen_kho() {
        $CI =& get_instance();
        $CI->load->model('Stock_Out');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('stockout/dieu_chuyen_kho',$data,true);
        return $rt;
    }
    
    public function dieu_chinh_ton() {
        $CI =& get_instance();
        $CI->load->model('Stock_Out');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('stockout/dieu_chinh_ton',$data,true);
        return $rt;
    }

    public function xuat_huy_hang() {
        $CI =& get_instance();
        $CI->load->model('Stock_Out');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('stockout/xuat_huy_hang',$data,true);
        return $rt;
    }

    public function tra_nha_cung_cap() {
        $CI =& get_instance();
        $CI->load->model('Stock_Out');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('stockout/tra_nha_cung_cap',$data,true);
        return $rt;
    }

    public function huy_don_thuoc() {
        $CI =& get_instance();
        $CI->load->model('Stock_Out');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('stockout/huy_don_thuoc',$data,true);
        return $rt;
    }

    public function xuat_khac() {
        $CI =& get_instance();
        $CI->load->model('Stock_Out');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('stockout/xuat_khac',$data,true);
        return $rt;
    }
}
?>
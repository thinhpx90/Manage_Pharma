<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Linventory {

    public function kiem_ke() {
        $CI =& get_instance();
        $CI->load->model('Inventory');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('inventory/kiem_ke',$data,true);
        return $rt;
    }
    
    
}
?>
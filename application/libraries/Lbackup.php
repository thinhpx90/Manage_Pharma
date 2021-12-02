<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Lbackup {
    
    public function nha_cung_cap() {
        $CI =& get_instance();
        $CI->load->model('Backup');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('backup/nha_cung_cap',$data,true);
        return $rt;
    }
    
   
}
?>
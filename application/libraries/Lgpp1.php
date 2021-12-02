<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Lgpp1 {
    // public function gpp_list() {
    //     $CI = & get_instance();
    //     $CI->load->model('Purchases');

    //     // $CI->load->model('Gpp1');

    //     $CI->load->model('Web_settings');
    //     $CI->load->library('occational');
    //     $currency_details = $CI->Web_settings->retrieve_setting_editdata();
    //     $company_info = $CI->Purchases->retrieve_company();
    //     $data = array(
    //         'title'          => display('manage_purchase'),
    //         'company_info'   => $company_info,
    //         'currency' 	     => $currency_details[0]['currency'],
    //         'total_purhcase' => $CI->Purchases->count_purchase(),
    //     );

    //     $purchaseList = $CI->parser->parse('gpp1/index', $data, true);
    //     return $purchaseList;
    // }
    
    public function adr_add_form() {
        $CI = & get_instance();
        // $CI->load->model('Purchases');

        $CI->load->model('Gpp1');

        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        // $company_info = $CI->Purchases->retrieve_company();
        $data = array(
            'title'          => display('adr_add_form'),
            // 'company_info'   => $company_info,
            'currency' 	     => $currency_details[0]['currency'],
            // 'total_purhcase' => $CI->Purchases->count_purchase(),
        );

        $adrForm = $CI->parser->parse('gpp1/index', $data, true);
        return $adrForm;
    }

    // ------------------TEST-------------
    public function gpp_list() {
        $CI = & get_instance();
        // $CI->load->model('Purchases');

        $CI->load->model('Gpp1');

        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        // $company_info = $CI->Purchases->retrieve_company();
        $data = array(
            'title'          => display('manage_purchase'),
            // 'company_info'   => $company_info,
            'currency' 	     => $currency_details[0]['currency'],
            // 'total_purhcase' => $CI->Purchases->count_purchase(),
        );

        $purchaseList = $CI->parser->parse('gpp1/gpp_list', $data, true);
        return $purchaseList;
    }


    public function gpp_stop() {
        $CI = & get_instance();
        $CI->load->model('Purchases');
        $CI->load->model('Web_settings');
        $CI->load->library('occational');
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $company_info = $CI->Purchases->retrieve_company();
        $data = array(
            'title'          => display('manage_purchase'),
            'company_info'   => $company_info,
            'currency' 	     => $currency_details[0]['currency'],
            'total_purhcase' => $CI->Purchases->count_purchase(),
        );

        $purchaseList = $CI->parser->parse('gpp1/medication_stop', $data, true);
        return $purchaseList;
    }




    public function customer_list(){
        $CI =& get_instance();
        $CI->load->model('Customers');
        $CI->load->model('Web_settings');
        $company_info = $CI->Customers->retrieve_company();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $data['total_customer']    = $CI->Customers->count_customer();
        $data['currency']          = $currency_details[0]['currency'];
        $data['title']             = display('manage_customer');
        $data['company_info']      = $company_info;
        $customerList = $CI->parser->parse('gpp1/index',$data,true);
        return $customerList;
    }

    //Retrieve  Credit Customer List	
    public function credit_customer_list() {
        $CI = & get_instance();
        $CI->load->model('Customers');
        $CI->load->model('Web_settings');
        $company_info = $CI->Customers->retrieve_company();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata();
        $data['currency']       = $currency_details[0]['currency'];
        $data['company_info']   = $company_info;
        $data['total_customer'] = $CI->Customers->count_credit_customer();
        $customerList = $CI->parser->parse('customer/credit_customer', $data, true);
        return $customerList;
    }
}
?>
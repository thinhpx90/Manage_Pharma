<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Ldatalinkage {



    public function datalinkage_list(){
        $CI =& get_instance();
        $CI->load->model('Datalinkages');
        $CI->load->model('Web_settings');
        $company_info = $CI->Datalinkages->retrieve_company();
        $currency_details = $CI->Web_settings->retrieve_setting_editdata(); 
        // $data['total_customer']    = $CI->Datalinkages->count_datalinkage();
        $data['currency']          = $currency_details[0]['currency'];
        $data['title']             = display('manage_customer');
        $data['company_info']      = $company_info;
        $datalinkageList = $CI->parser->parse('datalinkage/index',$data,true);
        return $datalinkageList;
    }

    public function customer_add_form() {
        $CI = & get_instance();
        $CI->load->model('Customers');
        $CI->load->model('Country_model');
        $data = array(
            'title' => display('add_customer'),
             'country_list' => $CI->Country_model->country(),
        );
        $customerForm = $CI->parser->parse('customer/add_customer_form', $data, true);
        return $customerForm;
    }

    //Retrieve  Credit Customer List	

    // public function credit_customer_list() {
    //     $CI = & get_instance();
    //     $CI->load->model('Datalinkage');
    //     $CI->load->model('Web_settings');
    //     $company_info = $CI->Customers->retrieve_company();
    //     $currency_details = $CI->Web_settings->retrieve_setting_editdata();
    //     $data['currency']       = $currency_details[0]['currency'];
    //     $data['company_info']   = $company_info;
    //     $data['total_customer'] = $CI->Customers->count_credit_customer();
    //     $customerList = $CI->parser->parse('customer/credit_customer', $data, true);
    //     return $customerList;
    // }

        // -------------Edit Data------------------
        public function customer_edit_data($customer_id) {
            $CI = & get_instance();
            $CI->load->model('Customers');
            $CI->load->model('Country_model');
            $customer_detail = $CI->Customers->retrieve_customer_editdata($customer_id);
            $data = array(
                'title'           => display('customer_edit'),
                'customer_id'     => $customer_detail[0]['customer_id'],
                'customer_name'   => $customer_detail[0]['customer_name'],
                'customer_address'=> $customer_detail[0]['customer_address'],
                'address2'        => $customer_detail[0]['address2'],
                'customer_mobile' => $customer_detail[0]['customer_mobile'],
                'phone'           => $customer_detail[0]['phone'],
                'fax'             => $customer_detail[0]['fax'],
                'contact'         => $customer_detail[0]['contact'],
                'city'            => $customer_detail[0]['city'],
                'state'           => $customer_detail[0]['state'],
                'zip'             => $customer_detail[0]['zip'],
                'country'         => $customer_detail[0]['country'],
                'customer_email'  => $customer_detail[0]['customer_email'],
                'email_address'   => $customer_detail[0]['email_address'],
                'country_list'    => $CI->Country_model->country(),
                'status'          => $customer_detail[0]['status']
            );
            $chapterList = $CI->parser->parse('customer/edit_customer_form', $data, true);
            return $chapterList;
        }
    
}
?>
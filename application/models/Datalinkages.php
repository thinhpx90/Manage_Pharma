<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Datalinkages extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
    }
    public function datalinkage_list_count()
    {
        $this->db->select('*');
        $this->db->from('medication_list_byt');
        $this->db->order_by('create_date', 'desc');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;
    }

    public function datalinkage_list($per_page = null, $page = null) {
        $this->db->select('*');
        
        $this->db->from('medication_list_byt a');
        $this->db->order_by('create_date', 'desc');
        $this->db->limit($per_page, $page);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return $query;
    }
    public function getDatalinkageList($postData = null)
    {    
        // $this->db->select('*');
        
        // $this->db->from('medication_list_byt');
        // // $this->db->order_by('create_date', 'desc');
        // // $this->db->limit($per_page, $page);
        // $query = $this->db->get();

        // if ($query->num_rows() > 0) {
        //     return $query->result_array();
        // }

        $response = array();

        ## Read value
        $draw = $postData['draw'];
        $start = $postData['start'];
        $rowperpage = $postData['length']; // Rows display per page
        $columnIndex = $postData['order'][0]['column']; // Column index
        $columnName = $postData['columns'][$columnIndex]['data']; // Column name
        $columnSortOrder = $postData['order'][0]['dir']; // asc or desc
        $searchValue = $postData['search']['value']; // Search value

        ## Search
        $searchQuery = "";
        if($searchValue != ''){
           $searchQuery = " (name_product like '%".$searchValue."%' or book like '%".$searchValue."%' or unit like '%".$searchValue."%')";
        }


        ## Total number of records without filtering

        $this->db->select('count(*) as allcount');
        $this->db->from('medication_list_byt a');
        // $this->db->join('acc_coa b', 'a.customer_id = b.customer_id', 'left');
        // $this->db->group_by('a.id');
        // if ($searchValue != '')
        //     $this->db->where($searchQuery);
        $records = $this->db->get()->num_rows();
        $totalRecords = $records;

        ## Total number of record with filtering
        $this->db->select('count(*) as allcount');
        $this->db->from('medication_list_byt a');
        // // $this->db->join('acc_coa b', 'a.customer_id = b.customer_id', 'left');
        // $this->db->group_by('a.id');
        if ($searchValue != '')
            $this->db->where($searchQuery);
        $records = $this->db->get()->num_rows();
        $totalRecordwithFilter = $records;

        ## Fetch records
        $this->db->select("*");
        $this->db->from('medication_list_byt');
        // $this->db->join('acc_coa b', 'a.customer_id = b.customer_id', 'left');
        // $this->db->group_by('a.customer_id');
        if ($searchValue != '')
            $this->db->where($searchQuery);
        // $this->db->order_by($columnName, $columnSortOrder);
        $this->db->limit($rowperpage, $start);
        $records = $this->db->get()->result();
        $data = array();
        $sl = 1;

        foreach ($records as $record) {
            $button = '';
            $base_url = base_url();
            $jsaction = "return confirm('Are You Sure ?')";


            if ($this->permission1->method('manage_datalinkage', 'update')->access()) {
                $button .= '<a href="' . $base_url . 'Cdatalinkage/datalinkage_update_form/' . $record->id . '" class="btn btn-info btn-xs"  data-placement="left" title="' . display('update') . '"><i class="fa fa-edit"></i></a> ';
            }
            if ($this->permission1->method('manage_datalinkage', 'delete')->access()) {
                $button .= '<a href="' . $base_url . 'Cdatalinkage/datalinkage_delete/' . $record->id . '" class="btn btn-danger btn-xs " onclick="' . $jsaction . '"><i class="fa fa-trash"></i></a>';
            }




            $data[] = array(
                //    'id'               =>$id,
                'id'    => html_escape($record->id),
                'listbyt_id'    => html_escape($record->listbyt_id),
                'name_product'  => html_escape($record->name_product),
                'book'          => html_escape($record->book),
                'unit'          => html_escape($record->unit),
                'count_input'   => html_escape($record->count_input),
                'count_output'  => html_escape($record->count_output),
                'cout_rest'     => html_escape($record->cout_rest),
                'number_shipment'  => html_escape($record->number_shipment),
                'expiry_date'              => html_escape($record->expiry_date),
                'bill_id'             => html_escape($record->bill_id),
                'button' => $button,
            );
            $sl++;
        }

        ## Response
        $response = array(
            "draw" => intval($draw),
                "iTotalRecords" => $totalRecordwithFilter,
                "iTotalDisplayRecords" => $totalRecords,
            "aaData" => $data
        );  

        // return $response;
        return $response;
    }

    public function retrieve_company() {
        $this->db->select('*');
        $this->db->from('medication_list_byt');
        $this->db->limit('1');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->result_array();
        }
        return false;
    }

    public function delete_datalinkage($id,$customer_head) {
        $customerdata = $this->db->select('*')->from('medication_list_byt')->where('id', $id)->get()->row();
        $this->db->where('COAID', $customerdata->HeadCode);
        $this->db->delete('acc_transaction');
        $this->db->where('id', $id);
        $this->db->delete('acc_coa');
        $this->db->where('id', $id);
        $this->db->delete('medication_list_byt');

        $this->db->select('*');
        $this->db->from('medication_list_byt');
        $query = $this->db->get();
        foreach ($query->result() as $row) {
            $json_customer[] = array('label' => $row->customer_name, 'value' => $row->customer_id);
        }
        $cache_file = './my-assets/js/admin_js/json/customer.json';
        $customerList = json_encode($json_customer);
        file_put_contents($cache_file, $customerList);
        return true;
    }
}

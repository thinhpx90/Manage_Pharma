<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Gpp1 extends CI_Model {

    public function __construct() {
        parent::__construct();
    }
    public function gpp1() {
        $this->db->select('*');
        // $this->db->from('customer_information');
        $this->db->from('medication_info');
        
        // $this->db->order_by('create_date', 'desc');
        $query = $this->db->get();
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        }
        return false;
    }
    // public function gpp1() {
    //     $this->db->select('*');
    //     $this->db->from('medication_info');
    //     $this->db->order_by('create_date', 'desc');
    //     $query = $this->db->get();
    //     if ($query->num_rows() > 0) {
    //         return $query->num_rows();
    //     }
    //     return false;
    // }
    public function getPurchaseList($postData=null){
        $this->load->library('occational');
        $this->load->model('Web_settings');
        $currency_details = $this->Web_settings->retrieve_setting_editdata();
        $response = array();
        $fromdate = $this->input->post('fromdate',true);
        $todate   = $this->input->post('todate',true);
        if(!empty($fromdate)){
           $datbetween = "(a.purchase_date BETWEEN '$fromdate' AND '$todate')";
        }else{
           $datbetween = "";
        }
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
           $searchQuery = " (b.manufacturer_name like '%".$searchValue."%' or a.chalan_no like '%".$searchValue."%' or a.purchase_date like'%".$searchValue."%')";
        }

        ## Total number of records without filtering
       $this->db->select('count(*) as allcount');
       $this->db->from('product_purchase a');
       $this->db->join('manufacturer_information b', 'b.manufacturer_id = a.manufacturer_id','left');
         if(!empty($fromdate) && !empty($todate)){
            $this->db->where($datbetween);
        }
         if($searchValue != '')
         $this->db->where($searchQuery);
         
        $records = $this->db->get()->result();
        $totalRecords = $records[0]->allcount;

        ## Total number of record with filtering
        $this->db->select('count(*) as allcount');
       $this->db->from('product_purchase a');
       $this->db->join('manufacturer_information b', 'b.manufacturer_id = a.manufacturer_id','left');
        if(!empty($fromdate) && !empty($todate)){
            $this->db->where($datbetween);
        }
        if($searchValue != '')
           $this->db->where($searchQuery);
         
        $records = $this->db->get()->result();
        $totalRecordwithFilter = $records[0]->allcount;

        ## Fetch records
       $this->db->select('a.*,b.manufacturer_name');
       $this->db->from('product_purchase a');
       $this->db->join('manufacturer_information b', 'b.manufacturer_id = a.manufacturer_id','left');
         if(!empty($fromdate) && !empty($todate)){
            $this->db->where($datbetween);
        }
        if($searchValue != '')
        $this->db->where($searchQuery);
      
        $this->db->order_by($columnName, $columnSortOrder);
        $this->db->limit($rowperpage, $start);
        $records = $this->db->get()->result();
        $data = array();
        $sl =1;
        foreach($records as $record ){
         $button = '';
         $base_url = base_url();
         $jsaction = "return confirm('Are You Sure ?')";

          $button .='  <a href="'.$base_url.'Cpurchase/invoice_html/'.$record->purchase_id.'" class="btn btn-success btn-sm" data-toggle="tooltip" data-placement="left" title="'.display('purchase_details').'"><i class="fa fa-window-restore" aria-hidden="true"></i></a>';
     if($this->permission1->method('manage_purchase','update')->access()){
        $button .=' <a href="'.$base_url.'Cpurchase/purchase_update_form/'.$record->purchase_id.'" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="'. display('update').'"><i class="fa fa-pencil" aria-hidden="true"></i></a> ';
    }

     
              
           $data[] = array( 
               'sl'               =>$sl,
               'chalan_no'        =>$record->chalan_no,
               'purchase_id'      =>$record->purchase_id,
               'manufacturer_name'=>$record->manufacturer_name,
               'purchase_id'      =>$record->purchase_id,
               'purchase_date'    =>$record->purchase_date,
               'total_amount'     =>$record->grand_total_amount,
               'button'           =>$button,
               
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

        return $response; 
   }    
}
 ?>
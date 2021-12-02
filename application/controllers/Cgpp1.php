
<?php 

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
    
class Cgpp1 extends CI_Controller {
    
    public $menu;
    
    function __construct() {
        parent::__construct();
        $this->db->query('SET SESSION sql_mode = ""');
        $this->load->library('auth');
        $this->load->library('lgpp1');
        $this->load->library('session');
        $this->load->model('Gpp1');
        $this->auth->check_admin_auth();
    }

    //Default loading for ADR
    public function index() {
        $content = $this->lgpp1->gpp_list();
        //Here ,0 means array position 0 will be active class
        $this->template->full_admin_html_view($content);
    }
        // Default loading for Customer System.
//   public function index()
//     {
        
//         // $content = $this->ldatalinkage->datalinkage_add_form();
//         // $this->template->full_admin_html_view($content);
//         $content = $this->lgpp1->customer_list();
//         //Here ,0 means array position 0 will be active class
//         $this->template->full_admin_html_view($content);
//         // $content = $this->lcustomer->customer_edit_data($customer_id);
//         // $this->template->full_admin_html_view($content);
//     }

// public function index()
// 	{	
// 		$CI =& get_instance();
// 		$CI->auth->check_admin_auth();
// 		$CI->load->library('lpurchase');
// 		$content = $CI->lpurchase->purchase_add_form();
// 		$this->template->full_admin_html_view($content);
//     }
    

    public function medication_in4() {
        $this->load->library('lgpp1');
        $content = $this->lgpp1->gpp_list();
        $this->template->full_admin_html_view($content);
    }

    public function medication_stop() {
        $this->load->library('lgpp1');
        $content = $this->lgpp1->gpp_stop();
        $this->template->full_admin_html_view($content);
    }



    public function medication_list_BYT()
    {
            
        // $content = $this->ldatalinkage->datalinkage_add_form();
        // $this->template->full_admin_html_view($content);
        $content = $this->ldatalinkage->customer_list();
        //Here ,0 means array position 0 will be active class
        $this->template->full_admin_html_view($content);
        // $content = $this->lcustomer->customer_edit_data($customer_id);
        // $this->template->full_admin_html_view($content);
    }   
    // public function credit_customer_search_item() {
    //     $customer_id = $this->input->post('customer_id',true);
    //     $content = $this->lcustomer->credit_customer_search_item($customer_id);
    //     $this->template->full_admin_html_view($content);
    // }
}
?>
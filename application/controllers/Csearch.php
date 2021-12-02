<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Csearch extends CI_Controller {
	
	public $company_id;
	function __construct() {
      parent::__construct(); 
		$this->load->library('auth');
		$this->auth->check_admin_auth();
		$this->load->library('session');
		$this->load->library('lsearch');
		$this->load->model('Searchs');
		$this->load->model('Web_settings');
		
		
    }
    #===========Company page load===========#
	public function bao_cao_so_lieu_hang_thang()
	{
		$content = $this->lsearch->bao_cao_so_lieu_hang_thang();
		$this->template->full_admin_html_view($content);
	}

    #===========Medicine page load=========#
	public function tu_thuoc()
	{
		$content = $this->lsearch->tu_thuoc();
		$this->template->full_admin_html_view($content);
	}

	public function ton_duoi_dinh_muc()
	{
		$content = $this->lsearch->ton_duoi_dinh_muc();
		$this->template->full_admin_html_view($content);
	}

	public function doi_chieu_duoc()
	{
		$content = $this->lsearch->doi_chieu_duoc();
		$this->template->full_admin_html_view($content);
	}

	public function duoc_ton_duoi_dinh_muc()
	{
		$content = $this->lsearch->duoc_ton_duoi_dinh_muc();
		$this->template->full_admin_html_view($content);
	}

	public function nhap_xuat_ton()
	{
		$content = $this->lsearch->nhap_xuat_ton();
		$this->template->full_admin_html_view($content);
	}

	public function chi_tiet_hang_ban()
	{
		$content = $this->lsearch->chi_tiet_hang_ban();
		$this->template->full_admin_html_view($content);
	}

	public function chi_tiet_nhap_du_tru()
	{
		$content = $this->lsearch->chi_tiet_nhap_du_tru();
		$this->template->full_admin_html_view($content);
	}

	public function chi_tiet_hang_nhap()
	{
		$content = $this->lsearch->chi_tiet_hang_nhap();
		$this->template->full_admin_html_view($content);
	}

	public function thong_ke_loi_nhuan()
	{
		$content = $this->lsearch->thong_ke_loi_nhuan();
		$this->template->full_admin_html_view($content);
	}

	public function the_kho()
	{
		$content = $this->lsearch->the_kho();
		$this->template->full_admin_html_view($content);
	}

	public function gia_nhap_thay_doi()
	{
		$content = $this->lsearch->gia_nhap_thay_doi();
		$this->template->full_admin_html_view($content);
	}

	public function gia_ban_thay_doi()
	{
		$content = $this->lsearch->gia_ban_thay_doi();
		$this->template->full_admin_html_view($content);
	}

	public function so_sanh_duoc_nhap_xuat()
	{
		$content = $this->lsearch->so_sanh_duoc_nhap_xuat();
		$this->template->full_admin_html_view($content);
	}

	public function thong_ke_doanh_so()
	{
		$content = $this->lsearch->thong_ke_doanh_so();
		$this->template->full_admin_html_view($content);
	}

	public function thong_ke_doanh_thu()
	{
		$content = $this->lsearch->thong_ke_doanh_thu();
		$this->template->full_admin_html_view($content);
	}

	public function thong_ke_ty_le_ban_hang()
	{
		$content = $this->lsearch->thong_ke_ty_le_ban_hang();
		$this->template->full_admin_html_view($content);
	}

	public function bieu_do_thong_ke_doanh_so()
	{
		$content = $this->lsearch->bieu_do_thong_ke_doanh_so();
		$this->template->full_admin_html_view($content);
	}

	public function TK_doanh_so_hh()
	{
		$content = $this->lsearch->TK_doanh_so_hh();
		$this->template->full_admin_html_view($content);
	}

	public function thong_ke_doanh_so_2()
	{
		$content = $this->lsearch->thong_ke_doanh_so_2();
		$this->template->full_admin_html_view($content);
	}

	public function TK_hang_nhap_tu_NCC()
	{
		$content = $this->lsearch->TK_hang_nhap_tu_NCC();
		$this->template->full_admin_html_view($content);
	}

	public function log_he_thong()
	{
		$content = $this->lsearch->log_he_thong();
		$this->template->full_admin_html_view($content);
	}

	public function tra_cuu_duoc_ton()
	{
		$content = $this->lsearch->tra_cuu_duoc_ton();
		$this->template->full_admin_html_view($content);
	}

	public function bao_cao_dieu_chinh_gia()
	{
		$content = $this->lsearch->bao_cao_dieu_chinh_gia();
		$this->template->full_admin_html_view($content);
	}

	public function DS_duoc_ban_cham()
	{
		$content = $this->lsearch->DS_duoc_ban_cham();
		$this->template->full_admin_html_view($content);
	}

	public function bieu_do_TK_doanh_so_theo_nam()
	{
		$content = $this->lsearch->bieu_do_TK_doanh_so_theo_nam();
		$this->template->full_admin_html_view($content);
	}

	public function danh_sach_xuat_hang()
	{
		$content = $this->lsearch->danh_sach_xuat_hang();
		$this->template->full_admin_html_view($content);
	}

	public function BC_so_luong_ban_theo_duoc()
	{
		$content = $this->lsearch->BC_so_luong_ban_theo_duoc();
		$this->template->full_admin_html_view($content);
	}

	public function tra_cuu_duoc_het_ton_kho()
	{
		$content = $this->lsearch->tra_cuu_duoc_het_ton_kho();
		$this->template->full_admin_html_view($content);
	}

	public function bao_cao_ton_kho()
	{
		$content = $this->lsearch->bao_cao_ton_kho();
		$this->template->full_admin_html_view($content);
	}

	public function lich_su_dang_nhap_dang_xuat()
	{
		$content = $this->lsearch->lich_su_dang_nhap_dang_xuat();
		$this->template->full_admin_html_view($content);
	}

	public function doanh_so_nhan_vien_theo_loai()
	{
		$content = $this->lsearch->doanh_so_nhan_vien_theo_loai();
		$this->template->full_admin_html_view($content);
	}
}
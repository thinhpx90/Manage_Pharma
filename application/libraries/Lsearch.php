<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Lsearch {

	//Medicine search form
	public function bao_cao_so_lieu_hang_thang() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/bao_cao_so_lieu_hang_thang',$data,true);
        return $rt;
    }

    public function tu_thuoc() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/tu_thuoc',$data,true);
        return $rt;
    }

    public function ton_duoi_dinh_muc() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/ton_duoi_dinh_muc',$data,true);
        return $rt;
    }

    public function doi_chieu_duoc() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/doi_chieu_duoc',$data,true);
        return $rt;
    }

    public function duoc_ton_duoi_dinh_muc() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/duoc_ton_duoi_dinh_muc',$data,true);
        return $rt;
    }

    public function nhap_xuat_ton() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/nhap_xuat_ton',$data,true);
        return $rt;
    }

    public function chi_tiet_hang_ban() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/chi_tiet_hang_ban',$data,true);
        return $rt;
    }

    public function chi_tiet_nhap_du_tru() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/chi_tiet_nhap_du_tru',$data,true);
        return $rt;
    }

    public function chi_tiet_hang_nhap() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/chi_tiet_hang_nhap',$data,true);
        return $rt;
    }

    public function thong_ke_loi_nhuan() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/thong_ke_loi_nhuan',$data,true);
        return $rt;
    }

    public function the_kho() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/the_kho',$data,true);
        return $rt;
    }

    public function gia_nhap_thay_doi() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/gia_nhap_thay_doi',$data,true);
        return $rt;
    }

    public function gia_ban_thay_doi() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/gia_ban_thay_doi',$data,true);
        return $rt;
    }

    public function so_sanh_duoc_nhap_xuat() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/so_sanh_duoc_nhap_xuat',$data,true);
        return $rt;
    }

    public function thong_ke_doanh_so() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/thong_ke_doanh_so',$data,true);
        return $rt;
    }

    public function thong_ke_doanh_thu() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/thong_ke_doanh_thu',$data,true);
        return $rt;
    }

    public function thong_ke_ty_le_ban_hang() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/thong_ke_ty_le_ban_hang',$data,true);
        return $rt;
    }

    public function bieu_do_thong_ke_doanh_so() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/bieu_do_thong_ke_doanh_so',$data,true);
        return $rt;
    }

    public function TK_doanh_so_hh() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/TK_doanh_so_hh',$data,true);
        return $rt;
    }

    public function thong_ke_doanh_so_2() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/thong_ke_doanh_so_2',$data,true);
        return $rt;
    }

    public function TK_hang_nhap_tu_NCC() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/TK_hang_nhap_tu_NCC',$data,true);
        return $rt;
    }

    public function log_he_thong() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/log_he_thong',$data,true);
        return $rt;
    }

    public function tra_cuu_duoc_ton() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/tra_cuu_duoc_ton',$data,true);
        return $rt;
    }

    public function bao_cao_dieu_chinh_gia() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/bao_cao_dieu_chinh_gia',$data,true);
        return $rt;
    }

    public function DS_duoc_ban_cham() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/DS_duoc_ban_cham',$data,true);
        return $rt;
    }

    public function bieu_do_TK_doanh_so_theo_nam() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/bieu_do_TK_doanh_so_theo_nam',$data,true);
        return $rt;
    }

    public function danh_sach_xuat_hang() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/danh_sach_xuat_hang',$data,true);
        return $rt;
    }

    public function BC_so_luong_ban_theo_duoc() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/BC_so_luong_ban_theo_duoc',$data,true);
        return $rt;
    }

    public function tra_cuu_duoc_het_ton_kho() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/tra_cuu_duoc_het_ton_kho',$data,true);
        return $rt;
    }

    public function bao_cao_ton_kho() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/bao_cao_ton_kho',$data,true);
        return $rt;
    }

    public function lich_su_dang_nhap_dang_xuat() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/lich_su_dang_nhap_dang_xuat',$data,true);
        return $rt;
    }

    public function doanh_so_nhan_vien_theo_loai() {
        $CI =& get_instance();
        $CI->load->model('Search');
        $CI->load->model('Web_settings');
        $data = array(
            
        );
        $rt = $CI->parser->parse('search/doanh_so_nhan_vien_theo_loai',$data,true);
        return $rt;
    }
}
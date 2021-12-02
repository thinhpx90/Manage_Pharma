<?php defined('BASEPATH') OR exit('No direct script access allowed');

class City_model extends CI_Model {

	public function city($id = null) 
	{
		$city = array(
	   " "     => "Chọn tỉnh/thành phố",
	   "Thành phố Hà Nội"=>"Thành phố Hà Nội",
"Tỉnh Hà Giang"=>"Tỉnh Hà Giang",
"Tỉnh Cao Bằng"=>"Tỉnh Cao Bằng",
"Tỉnh Bắc Kạn"=>"Tỉnh Bắc Kạn",
"Tỉnh Tuyên Quang"=>"Tỉnh Tuyên Quang",
"Tỉnh Lào Cai"=>"Tỉnh Lào Cai",
"Tỉnh Điện Biên"=>"Tỉnh Điện Biên",
"Tỉnh Lai Châu"=>"Tỉnh Lai Châu",
"Tỉnh Sơn La"=>"Tỉnh Sơn La",
"Tỉnh Yên Bái"=>"Tỉnh Yên Bái",
"Tỉnh Hoà Bình"=>"Tỉnh Hoà Bình",
"Tỉnh Thái Nguyên"=>"Tỉnh Thái Nguyên",
"Tỉnh Lạng Sơn"=>"Tỉnh Lạng Sơn",
"Tỉnh Quảng Ninh"=>"Tỉnh Quảng Ninh",
"Tỉnh Bắc Giang"=>"Tỉnh Bắc Giang",
"Tỉnh Phú Thọ"=>"Tỉnh Phú Thọ",
"Tỉnh Vĩnh Phúc"=>"Tỉnh Vĩnh Phúc",
"Tỉnh Bắc Ninh"=>"Tỉnh Bắc Ninh",
"Tỉnh Hải Dương"=>"Tỉnh Hải Dương",
"Thành phố Hải Phòng"=>"Thành phố Hải Phòng",
"Tỉnh Hưng Yên"=>"Tỉnh Hưng Yên",
"Tỉnh Thái Bình"=>"Tỉnh Thái Bình",
"Tỉnh Hà Nam"=>"Tỉnh Hà Nam",
"Tỉnh Nam Định"=>"Tỉnh Nam Định",
"Tỉnh Ninh Bình"=>"Tỉnh Ninh Bình",
"Tỉnh Thanh Hóa"=>"Tỉnh Thanh Hóa",
"Tỉnh Nghệ An"=>"Tỉnh Nghệ An",
"Tỉnh Hà Tĩnh"=>"Tỉnh Hà Tĩnh",
"Tỉnh Quảng Bình"=>"Tỉnh Quảng Bình",
"Tỉnh Quảng Trị"=>"Tỉnh Quảng Trị",
"Tỉnh Thừa Thiên Huế"=>"Tỉnh Thừa Thiên Huế",
"Thành phố Đà Nẵng"=>"Thành phố Đà Nẵng",
"Tỉnh Quảng Nam"=>"Tỉnh Quảng Nam",
"Tỉnh Quảng Ngãi"=>"Tỉnh Quảng Ngãi",
"Tỉnh Bình Định"=>"Tỉnh Bình Định",
"Tỉnh Phú Yên"=>"Tỉnh Phú Yên",
"Tỉnh Khánh Hòa"=>"Tỉnh Khánh Hòa",
"Tỉnh Ninh Thuận"=>"Tỉnh Ninh Thuận",
"Tỉnh Bình Thuận"=>"Tỉnh Bình Thuận",
"Tỉnh Kon Tum"=>"Tỉnh Kon Tum",
"Tỉnh Gia Lai"=>"Tỉnh Gia Lai",
"Tỉnh Đắk Lắk"=>"Tỉnh Đắk Lắk",
"Tỉnh Đắk Nông"=>"Tỉnh Đắk Nông",
"Tỉnh Lâm Đồng"=>"Tỉnh Lâm Đồng",
"Tỉnh Bình Phước"=>"Tỉnh Bình Phước",
"Tỉnh Tây Ninh"=>"Tỉnh Tây Ninh",
"Tỉnh Bình Dương"=>"Tỉnh Bình Dương",
"Tỉnh Đồng Nai"=>"Tỉnh Đồng Nai",
"Tỉnh Bà Rịa - Vũng Tàu"=>"Tỉnh Bà Rịa - Vũng Tàu",
"Thành phố Hồ Chí Minh"=>"Thành phố Hồ Chí Minh",
"Tỉnh Long An"=>"Tỉnh Long An",
"Tỉnh Tiền Giang"=>"Tỉnh Tiền Giang",
"Tỉnh Bến Tre"=>"Tỉnh Bến Tre",
"Tỉnh Trà Vinh"=>"Tỉnh Trà Vinh",
"Tỉnh Vĩnh Long"=>"Tỉnh Vĩnh Long",
"Tỉnh Đồng Tháp"=>"Tỉnh Đồng Tháp",
"Tỉnh An Giang"=>"Tỉnh An Giang",
"Tỉnh Kiên Giang"=>"Tỉnh Kiên Giang",
"Thành phố Cần Thơ"=>"Thành phố Cần Thơ",
"Tỉnh Hậu Giang"=>"Tỉnh Hậu Giang",
"Tỉnh Sóc Trăng"=>"Tỉnh Sóc Trăng",
"Tỉnh Bạc Liêu"=>"Tỉnh Bạc Liêu",
"Tỉnh Cà Mau"=>"Tỉnh Cà Mau",


		);
	
		if (!empty($id)) {
			return $city[$id];
		} else {
			return $city;
		}

	}

}
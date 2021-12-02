-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 01, 2021 lúc 09:45 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `huy`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `acc_coa`
--

CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, NULL, NULL, 0, '0.00', 'admin', '2015-10-15 19:50:43', '', '2019-08-10 11:01:12'),
('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, NULL, NULL, 0, '0.00', '', '2019-08-10 11:01:12', 'admin', '2013-09-18 15:29:35'),
('1', 'Assets', 'COA', 0, 1, 0, 0, 'A', 0, NULL, NULL, 0, '0.00', '', '2019-08-10 11:01:12', '', '2019-08-10 11:01:12'),
('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 1, 'A', 0, NULL, NULL, 0, '0.00', '1', '2019-06-12 11:47:24', 'admin', '2015-10-15 15:57:55'),
('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 1, 'A', 0, NULL, NULL, 0, '0.00', '1', '2019-03-18 06:08:18', 'admin', '2015-10-15 15:32:42'),
('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, NULL, NULL, 0, '0.00', '1', '2019-01-26 07:38:48', 'admin', '2016-05-23 12:05:43'),
('102', 'Current Asset', 'Assets', 1, 1, 0, 0, 'A', 0, NULL, NULL, 0, '0.00', '', '2019-08-10 11:01:12', 'admin', '2018-07-07 11:23:00'),
('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, NULL, NULL, 0, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, NULL, NULL, 0, '0.00', '1', '2019-01-24 12:10:05', 'admin', '2018-07-07 12:31:42'),
('50204', 'Employee Ledger', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, NULL, NULL, 0, '0.00', '1', '2019-04-08 10:36:32', '', '2019-08-10 11:01:12'),
('404', 'Employee Salary', 'Expence', 1, 1, 1, 0, 'E', 0, NULL, NULL, 0, '0.00', '1', '2019-05-23 05:46:14', '', '2019-08-10 11:01:12'),
('2', 'Equity', 'COA', 0, 1, 0, 0, 'L', 0, NULL, NULL, 0, '0.00', '', '2019-08-10 11:01:12', '', '2019-08-10 11:01:12'),
('4', 'Expence', 'COA', 0, 1, 1, 0, 'E', 0, NULL, NULL, 0, '0.00', '1', '2019-06-18 11:40:41', '', '2019-08-10 11:01:12'),
('405', 'Fixed Assets Cost', 'Expence', 1, 1, 1, 0, 'E', 0, NULL, NULL, 0, '0.00', '1', '2019-05-29 05:32:01', '', '2019-08-10 11:01:12'),
('502000001', 'huuhuhuh-1', 'Account Payable', 3, 1, 1, 0, 'L', 0, NULL, 1, 0, '0.00', '1', '2021-01-19 08:50:48', '', '0000-00-00 00:00:00'),
('502000002', 'huuhuhuh-2', 'Account Payable', 3, 1, 1, 0, 'L', 0, NULL, 2, 0, '0.00', '1', '2021-01-19 08:51:02', '', '0000-00-00 00:00:00'),
('3', 'Income', 'COA', 0, 1, 0, 0, 'I', 0, NULL, NULL, 0, '0.00', '1', '2019-05-20 05:32:59', '', '2019-08-10 11:01:12'),
('10107', 'Inventory', 'Non Current Assets', 1, 1, 0, 0, 'A', 0, NULL, NULL, 0, '0.00', '2', '2018-07-07 15:21:58', '', '2019-08-10 11:01:12'),
('5', 'Liabilities', 'COA', 0, 1, 0, 0, 'L', 0, NULL, NULL, 0, '0.00', 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54'),
('1020302', 'Loan Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, NULL, NULL, 0, '0.00', '1', '2019-01-26 07:37:20', '', '2019-08-10 11:01:12'),
('101', 'Non Current Assets', 'Assets', 1, 1, 0, 0, 'A', 0, NULL, NULL, 0, '0.00', '', '2019-08-10 11:01:12', 'admin', '2015-10-15 15:29:11'),
('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, NULL, NULL, 0, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('402', 'Product Purchase', 'Expence', 1, 1, 1, 0, 'E', 0, NULL, NULL, 0, '0.00', '1', '2019-05-20 07:46:59', '', '2019-08-10 11:01:12'),
('304', 'Product Sale', 'Income', 1, 1, 1, 0, 'I', 0, NULL, NULL, 0, '0.00', '1', '2019-06-16 12:15:40', '', '2019-08-10 11:01:12'),
('305', 'Service Income', 'Income', 1, 1, 1, 0, 'I', 0, NULL, NULL, 0, '0.00', '1', '2019-05-22 13:36:02', '', '2019-08-10 11:01:12'),
('301', 'Store Income', 'Income', 1, 1, 0, 0, 'I', 0, NULL, NULL, 0, '0.00', '2', '2018-07-07 13:40:37', 'admin', '2015-09-17 17:00:02'),
('50205', 'Supplier Ledger', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, NULL, NULL, 0, '0.00', '1', '2019-10-06 06:18:49', '', '2019-08-10 11:01:12'),
('10203000002', 'Tuan-2', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 2, NULL, 0, '0.00', '1', '2020-12-25 11:28:51', '', '0000-00-00 00:00:00'),
('10203000003', 'Tuan-3', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 3, NULL, 0, '0.00', '1', '2020-12-25 11:28:56', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `asset_purchase`
--

CREATE TABLE `asset_purchase` (
  `id` int(11) NOT NULL,
  `p_date` date NOT NULL,
  `supplier_id` varchar(30) NOT NULL,
  `grand_total` float NOT NULL,
  `payment_type` tinyint(4) DEFAULT NULL,
  `bank_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attendance`
--

CREATE TABLE `attendance` (
  `att_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sign_in` varchar(30) NOT NULL,
  `sign_out` varchar(30) NOT NULL,
  `staytime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_add`
--

CREATE TABLE `bank_add` (
  `id` int(11) NOT NULL,
  `bank_id` varchar(50) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `company_information`
--

CREATE TABLE `company_information` (
  `company_id` varchar(50) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `website` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `company_information`
--

INSERT INTO `company_information` (`company_id`, `company_name`, `email`, `address`, `mobile`, `website`, `status`) VALUES
('NOILG8EGCRXXBWUEUQBM', 'Dược Thiện', 'duocthien@gmail.com', 'SỐ 15 NGÕ 1 TRUNG VĂN QUẬN THANH XUÂN THÀNH PHỐ HÀ NỘI', '1922296392', 'http://www.phanmem.duocthien.com.vn', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency_tbl`
--

CREATE TABLE `currency_tbl` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `currency_tbl`
--

INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES
(1, 'Taka', 'à§³'),
(2, 'Dollar', '$'),
(3, 'Việt Nam Đồng', 'đ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_information`
--

CREATE TABLE `customer_information` (
  `manufacturer_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `matp` varchar(5) NOT NULL,
  `Age` int(5) NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `presenter` varchar(250) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `address2` text DEFAULT NULL,
  `customer_mobile` varchar(100) NOT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `district` varchar(250) NOT NULL,
  `status` int(2) NOT NULL COMMENT '1=paid,2=credit',
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `create_by` varchar(30) DEFAULT NULL,
  `prescription_pathology` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer_information`
--

INSERT INTO `customer_information` (`manufacturer_id`, `customer_id`, `customer_name`, `matp`, `Age`, `Sex`, `presenter`, `customer_address`, `address2`, `customer_mobile`, `customer_email`, `email_address`, `contact`, `phone`, `fax`, `state`, `zip`, `city`, `district`, `status`, `create_date`, `create_by`, `prescription_pathology`) VALUES
(111111, 2, 'Tuan', '', 18, 'Men', '', '      ', '', '012348645', '', NULL, '', '0962235111', 'fax', NULL, NULL, 'Thành phố Hà Nội', '', 2, '2020-12-25 11:28:51', '1', ''),
(10101010, 3, 'Tuan', '', 19, 'Men', '', '  ', '', '0123465', '', NULL, '', '0962235111', 'fax', NULL, NULL, 'Tỉnh Bắc Kạn', '', 2, '2020-12-25 11:28:56', '1', ''),
(111111, 5, 'Thịnh Nổ', '1', 20, 'Men', 'Thinh', 'Hà Nội       ', 'Hà Nội', '09999999', 'thinhno@gmail.com', NULL, '09999999', '09999999', 'fax', NULL, NULL, 'Tỉnh Hà Giang', 'Quận Tây Hồ', 1, '2021-01-20 08:08:27', 'Thịnh', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `daily_closing`
--

CREATE TABLE `daily_closing` (
  `closing_id` varchar(255) NOT NULL,
  `last_day_closing` float NOT NULL,
  `cash_in` float NOT NULL,
  `cash_out` float NOT NULL,
  `date` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `adjustment` float NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee_history`
--

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `rate_type` int(11) NOT NULL,
  `hrate` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text NOT NULL,
  `image` text DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee_salary_payment`
--

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL,
  `generate_id` int(11) NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `salary_month` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee_salary_setup`
--

CREATE TABLE `employee_salary_setup` (
  `e_s_s_id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `expense_item`
--

CREATE TABLE `expense_item` (
  `id` int(11) NOT NULL,
  `expense_item_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fixed_assets`
--

CREATE TABLE `fixed_assets` (
  `id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `insert_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `invoice` bigint(20) DEFAULT NULL,
  `total_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'total invoice discount',
  `invoice_discount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_tax` decimal(10,2) DEFAULT 0.00,
  `prevous_due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `sales_by` varchar(30) DEFAULT NULL,
  `invoice_details` varchar(200) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `payment_type` int(11) NOT NULL DEFAULT 1,
  `bank_id` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_details_id` varchar(30) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `batch_id` varchar(30) NOT NULL,
  `cartoon` float DEFAULT NULL,
  `quantity` float NOT NULL,
  `rate` decimal(12,2) DEFAULT NULL,
  `manufacturer_rate` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(12,0) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(12,0) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_sell_information`
--

CREATE TABLE `invoice_sell_information` (
  `bill_code` int(11) NOT NULL,
  `bill_code_QG` int(11) NOT NULL,
  `base_code` int(11) NOT NULL,
  `medicine_code_QG` int(11) NOT NULL,
  `seller_name` varchar(20) CHARACTER SET armscii8 NOT NULL,
  `customer_name` varchar(20) CHARACTER SET armscii8 NOT NULL,
  `vote_number` int(11) NOT NULL,
  `total_money` int(11) NOT NULL,
  `result` varchar(20) CHARACTER SET armscii8 NOT NULL,
  `action` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `invoice_sell_information`
--

INSERT INTO `invoice_sell_information` (`bill_code`, `bill_code_QG`, `base_code`, `medicine_code_QG`, `seller_name`, `customer_name`, `vote_number`, `total_money`, `result`, `action`) VALUES
(12313, 1231, 56132, 123, 'hhung', 'Huy', 2132, 232, 'abc', 21321),
(12313, 1231, 56132, 123, 'hhung', 'Huy', 2132, 232, 'abc', 21321),
(999, 888, 77, 88, 'kien', 'thinh', 1236, 868, 'huys', 963),
(999, 888, 77, 88, 'kien', 'thinh', 1236, 868, 'huys', 963);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text DEFAULT NULL,
  `vi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `vi`) VALUES
(1, 'user_profile', 'User Profile', 'Hồ sơ người dùng'),
(2, 'setting', 'Web Setting', 'Cài đặt'),
(3, 'language', 'Language', 'Ngôn ngữ'),
(4, 'manage_users', 'Manage Users', 'Quản lý người dùng'),
(5, 'add_user', 'Add User', 'Thêm người dùng'),
(6, 'manage_company', 'Manage Company', 'Quản lý công ty'),
(7, 'web_settings', 'Software Settings', 'Cài đặt trang web'),
(8, 'manage_accounts', 'Manage Accounts', 'Quản lý tài khoản'),
(9, 'create_accounts', 'Create Accounts', 'Tạo tài khoản'),
(10, 'manage_bank', 'Manage Bank', 'Quản lý ngân hàng'),
(11, 'add_new_bank', 'Add New Bank', 'Thêm ngân hàng'),
(12, 'settings', 'Settings', 'Cài đặt'),
(13, 'closing_report', 'Closing Report', 'Báo cáo kế toán cuối kỳ'),
(14, 'closing', 'Closing', 'Kế toán cuối kỳ'),
(15, 'cheque_manager', 'Cheque Manager', 'Quản lý Séc'),
(16, 'accounts_summary', 'Accounts Summary', 'Thống kê tài khoản'),
(17, 'expense', 'Expense', 'Chi phí'),
(18, 'income', 'Income', 'Thu nhập'),
(19, 'accounts', 'Accounts', 'Kế toán'),
(20, 'stock_report', 'Stock Report', 'Báo cáo hàng hóa'),
(21, 'stock', 'Stock', 'Hàng hóa '),
(22, 'pos_invoice', 'POS Invoice', 'Bán hàng'),
(23, 'manage_invoice', 'Manage Invoice ', 'Đơn hàng theo đơn'),
(24, 'new_invoice', 'New Invoice', 'Danh sách đơn hàng'),
(25, 'invoice', 'Invoice', 'Bán hàng'),
(26, 'manage_purchase', 'Manage Purchase', 'Danh sách giao dịch'),
(27, 'add_purchase', 'Add Purchase', 'Giao dịch'),
(28, 'purchase', 'Purchase', 'Nhập kho'),
(29, 'paid_customer', 'Paid Customer', 'Biên lai thu'),
(30, 'manage_customer', 'Manage Customer', 'Danh sách khách hàng'),
(31, 'add_customer', 'Add Customer', 'Khách hàng'),
(32, 'customer', 'Customer', 'Khách hàng'),
(33, 'manufacturer_payment_actual', 'Manufacturer Payment Actual', 'Thanh toán thực cho nhà sản xuất'),
(34, 'manufacturer_sales_summary', 'Manufacturer  Sales Summary', 'Tóm tắt bán hàng của nhà sản xuất'),
(35, 'manufacturer_sales_details', 'Manufacturer Sales Details', 'Chi tiết bán hàng của nhà sản xuất'),
(36, 'manufacturer_ledger', 'Manufacturer Ledger', 'Danh sách báo cáo công nợ NSX'),
(37, 'manage_manufacturer', 'Manage Manufacturer', 'Danh sách nhà sản xuất'),
(38, 'add_manufacturer', 'Add Manufacturer', 'Nhà sản xuất'),
(39, 'manufacturer', 'Manufacturer', 'Nhà sản xuất'),
(40, 'product_statement', 'Medicine Statement', 'Công bố sản phẩm'),
(41, 'manage_product', 'Manage Medicine', 'Danh sách'),
(42, 'add_product', 'Add Medicine', 'Thêm dược'),
(43, 'product', 'Medicine', 'Dược'),
(44, 'manage_category', 'Manage Category', 'Quản lý phạm trù'),
(45, 'add_category', 'Add Category', 'Thêm danh mục'),
(46, 'category', 'Category', 'Danh sách tủ thuốc'),
(47, 'sales_report_product_wise', 'Sales Report (Medicine Wise)', 'Báo cáo bán hàng theo từng sản phẩm'),
(48, 'purchase_report', 'Purchase Report', 'Báo cáo mua hàng'),
(49, 'sales_report', 'Sales Report', 'Báo cáo bán hàng'),
(50, 'todays_report', 'Todays Report', 'Báo cáo trong ngày'),
(51, 'report', 'Report', 'Báo cáo'),
(52, 'dashboard', 'Dashboard', 'Bảng điều khiển'),
(53, 'online', 'Online', 'Trực tuyến'),
(54, 'logout', 'Logout', 'Đăng xuất'),
(56, 'total_purchase', 'Total Purchase', 'Tổng đơn hàng '),
(57, 'total_amount', 'Total Amount', 'Tổng số tiền'),
(58, 'manufacturer_name', 'Manufacturer  Name', 'Tên nhà sản xuất'),
(59, 'invoice_no', 'Invoice No', 'Số hóa đơn'),
(60, 'purchase_date', 'Purchase Date', 'Ngày mua hàng'),
(61, 'todays_purchase_report', 'Todays Purchase Report', 'Báo cáo mua hàng ngày trong ngày'),
(62, 'total_sales', 'Total Sales', 'Doanh số '),
(63, 'customer_name', 'Customer Name', 'Tên khách hàng'),
(64, 'sales_date', 'Sales Date', 'Ngày bán hàng'),
(65, 'todays_sales_report', 'Todays Sales Report', 'Báo cáo bán hàng trong ngày'),
(66, 'home', 'Home', 'Trang chủ'),
(67, 'todays_sales_and_purchase_report', 'Todays sales and purchase report', 'Báo cáo việc bán hàng và mua hàng trong ngày'),
(68, 'total_ammount', 'Total Amount', 'Tổng số tiền'),
(69, 'rate', 'Sale Price', 'Đánh giá'),
(70, 'product_model', 'Medicine Type', 'Kiểu mẫu'),
(71, 'product_name', 'Medicine Name', 'Tên dược'),
(72, 'search', 'Search', 'Tìm kiếm'),
(73, 'end_date', 'End Date', 'Tới'),
(74, 'start_date', 'Start Date', 'Kể từ'),
(75, 'total_purchase_report', 'Total Purchase Report', 'Toàn bộ báo cáo mua hàng'),
(76, 'total_sales_report', 'Total Sales Report', 'Báo cáo tổng doanh số'),
(77, 'total_seles', 'Total Sales', 'Tổng doanh số bán hàng'),
(78, 'all_stock_report', 'All Stock Report', 'Báo cáo kho hàng'),
(79, 'search_by_product', 'Search By Medicine', 'Tìm kiếm bằng sản phẩm'),
(80, 'date', 'Date', 'Ngày'),
(81, 'print', 'Print', 'In'),
(82, 'stock_date', 'Stock Date', 'Ngày đợt hàng hóa'),
(83, 'print_date', 'Print Date', 'In ngày'),
(84, 'sales', 'Sales', 'Bán hàng'),
(85, 'price', 'Price', 'Giá tiền'),
(86, 'sl', 'SL.', 'STT'),
(87, 'add_new_category', 'Add new category', 'Thêm danh mục'),
(88, 'category_name', 'Category Name', 'Tên danh mục'),
(89, 'save', 'Save', 'Lưu'),
(90, 'delete', 'Delete', 'Xóa'),
(91, 'update', 'Update', 'Cập nhật'),
(92, 'action', 'Action', 'Trạng thái'),
(93, 'manage_your_category', 'Manage your category ', 'Quản lý danh mục của bạn'),
(94, 'category_edit', 'Category Edit', 'Chỉnh sửa danh mục'),
(95, 'status', 'Status', 'Trạng thái'),
(96, 'active', 'Active', 'Kích hoạt'),
(97, 'inactive', 'Inactive', 'Không hoạt động'),
(98, 'save_changes', 'Save Changes', 'Lưu thay đổi'),
(99, 'save_and_add_another', 'Save And Add Another', 'Lưu và thêm'),
(100, 'model', 'Medicine Type', 'Kiểu mẫu'),
(101, 'manufacturer_price', 'Manufacturer Price', 'Giá cả của nhà sản xuất'),
(102, 'sell_price', 'Sell Price', 'Giá bán'),
(103, 'image', 'Image', 'Hình ảnh'),
(104, 'select_one', 'Select One', 'Lựa chọn 1 mục'),
(105, 'details', 'Details', 'Chi tiết'),
(106, 'new_product', 'New Medicine', 'Dược mới'),
(107, 'add_new_product', 'Add new medicine', 'Thêm dược mới'),
(108, 'barcode', 'Barcode', 'Mã vạch'),
(109, 'qr_code', 'Qr-Code', 'Mã QR'),
(110, 'product_details', 'Medicine Details', 'Chi tiết sản phẩm'),
(111, 'manage_your_product', 'Manage your medicine', 'Quản lý dược của bạn'),
(112, 'product_edit', 'Medicine Edit', 'Chỉnh sửa sản phẩm'),
(113, 'edit_your_product', 'Edit your medicine', 'Chỉnh sửa sản phẩm của bạn'),
(114, 'cancel', 'Cancel', 'Hủy bỏ'),
(115, 'incl_vat', 'Incl. Vat', 'Bao gồm thuế giá trị gia tăng'),
(116, 'money', 'Dollar', 'Tiền'),
(117, 'grand_total', 'Grand Total', 'Tổng'),
(118, 'quantity', 'Quantity', 'Số lượng'),
(119, 'product_report', 'Medicine Report', 'Báo cáo sản phẩm'),
(120, 'product_sales_and_purchase_report', 'Medicine sales and purchase report', 'Báo cáo mua bán sản phẩm'),
(121, 'previous_stock', 'Previous Stock', 'Kho hàng trước'),
(122, 'out', 'Out', 'Ngoài'),
(123, 'in', 'In', 'Ở trong'),
(124, 'to', 'To', 'Tới'),
(125, 'previous_balance', 'Previous Balance', 'Số dư trước'),
(126, 'customer_address', 'Customer Address', 'Địa chỉ'),
(127, 'customer_mobile', 'Customer Mobile', 'Điện thoại khách hàng'),
(128, 'customer_email', 'Customer Email', 'Email'),
(129, 'add_new_customer', 'Add new customer', 'Thêm khách hàng mới'),
(130, 'balance', 'Balance', 'Số dư'),
(131, 'mobile', 'Mobile', 'Số di động'),
(132, 'address', 'Address', 'Địa chỉ'),
(133, 'manage_your_customer', 'Manage your customer', 'Quản lý khách hàng của bạn'),
(134, 'customer_edit', 'Customer Edit', 'Chỉnh sửa'),
(135, 'paid_customer_list', 'Paid Customer List', 'Danh sách khách hàng đã thanh toán'),
(136, 'ammount', 'Amount', 'Số tiền'),
(137, 'customer_ledger', 'Customer Ledger', 'Thông tin mua hàng'),
(138, 'manage_customer_ledger', 'Manage Customer Ledger', 'Danh sách công nợ khách hàng'),
(139, 'customer_information', 'Customer Information', 'Thông tin khách hàng'),
(140, 'debit_ammount', 'Debit Amount', 'Số tiền nợ'),
(141, 'credit_ammount', 'Credit Amount', 'Tổng số tiền nợ'),
(142, 'balance_ammount', 'Balance Amount', 'Tổng số dư'),
(143, 'receipt_no', 'Receipt NO', 'Số biên lai'),
(144, 'description', 'Description', 'Ghi chú'),
(145, 'debit', 'Debit', 'Ghi nợ'),
(146, 'credit', 'Credit', 'Khoản nợ'),
(147, 'item_information', 'Item Information', 'Mặt hàng'),
(148, 'total', 'Total', 'Tổng'),
(149, 'please_select_manufacturer', 'Please Select Manufacturer', 'Vui lòng chọn nhà sản xuất'),
(150, 'submit', 'Submit', 'Nộp'),
(151, 'submit_and_add_another', 'Submit And Add Another One', 'Nộp và thêm cái khác'),
(152, 'add_new_item', 'Add New Item', 'Thêm mặt hàng mới'),
(153, 'manage_your_purchase', 'Manage your purchase', 'Quản lý việc mua hàng của bạn'),
(154, 'purchase_edit', 'Purchase Edit', 'Chỉnh sửa mua hàng'),
(155, 'purchase_ledger', 'Purchase Ledger', 'Sổ cái mua hàng'),
(156, 'invoice_information', 'Invoice Information', 'Thông tin hóa đơn'),
(157, 'paid_ammount', 'Paid Amount', 'Thanh toán'),
(158, 'discount', 'Discount / Pcs.', 'Chiếu khấu'),
(159, 'save_and_paid', 'Save And Paid', 'Lưu và thanh toán'),
(160, 'payee_name', 'Payee Name', 'Tên người nhận'),
(161, 'manage_your_invoice', 'Manage your invoice', 'Danh sách đơn hàng bán theo đơn'),
(162, 'invoice_edit', 'Invoice Edit', 'Chỉnh sửa hóa đơn'),
(163, 'new_pos_invoice', 'New POS invoice', 'Danh sách đơn hàng 2'),
(164, 'add_new_pos_invoice', 'Add new pos invoice', 'Thêm hóa đơn bán hàng mới'),
(165, 'product_id', 'Medicine ID', 'Mã sản phẩm'),
(166, 'paid_amount', 'Paid Amount', 'Số tiền thanh toán'),
(167, 'authorised_by', 'Authorised By', 'Được ủy quyền bởi'),
(168, 'checked_by', 'Checked By', 'Kiểm tra bởi'),
(169, 'received_by', 'Received By', 'Được nhận bởi'),
(170, 'prepared_by', 'Prepared By', 'Được chuẩn bị bởi'),
(171, 'memo_no', 'Memo No', 'Số hiệu bản ghi nhớ giao dịch '),
(172, 'website', 'Website', 'Trang web'),
(173, 'email', 'Email', 'Email'),
(174, 'invoice_details', 'Invoice Details', 'Chi tiết hóa đơn'),
(175, 'reset', 'Reset', 'Chỉnh lại'),
(176, 'payment_account', 'Payment Account', 'Tài khoản thanh toán'),
(177, 'bank_name', 'Bank Name', 'Tên ngân hàng'),
(178, 'cheque_or_pay_order_no', 'Cheque/Pay Order No', 'Kiểm tra hoặc thanh toán đơn hàng có mã số '),
(179, 'payment_type', 'Payment Type', 'Phương thức thanh toán'),
(180, 'payment_from', 'Payment From', 'Thanh toán từ'),
(181, 'payment_date', 'Payment Date', 'Ngày thanh toán'),
(182, 'add_income', 'Add Income', 'Thêm thu nhập'),
(183, 'cash', 'Cash', 'Tiền mặt'),
(184, 'cheque', 'Cheque', 'Tấm séc (Giấy ghi tiền trả)'),
(185, 'pay_order', 'Pay Order', 'Lệnh thanh toán'),
(186, 'payment_to', 'Payment To', 'Thanh toán tới'),
(187, 'total_expense_ammount', 'Total Expense Amount', 'Tổng số tiền chi tiêu'),
(188, 'transections', 'Transactions', 'Chuyển đổi'),
(189, 'accounts_name', 'Accounts Name', 'Tên tài khoản'),
(190, 'outflow_report', 'Expense Report', 'Báo cáo luồng ra'),
(191, 'inflow_report', 'Income Report', 'Luồng báo cáo'),
(192, 'all', 'All', 'Tất cả'),
(193, 'account', 'Account', 'Tài khoản'),
(194, 'from', 'From', 'Kể từ'),
(195, 'account_summary_report', 'Account Summary Report', 'Báo cáo thống kê'),
(196, 'search_by_date', 'Search By Date', 'Tìm kiếm ngày'),
(197, 'cheque_no', 'Cheque No', 'Mã số Séc'),
(198, 'name', 'Name', 'Tên'),
(199, 'closing_account', 'Closing Account', 'Kế toán cuối kỳ'),
(200, 'close_your_account', 'Close your account', 'Kế toán cuối  kỳ của bạn'),
(201, 'last_day_closing', 'Last Day Closing', 'Đóng hôm qua'),
(202, 'cash_in', 'Cash In', 'Nạp tiền'),
(203, 'cash_out', 'Cash Out', 'Rút tiền'),
(204, 'cash_in_hand', 'Cash In Hand', 'Tiền mặt có sẵn'),
(205, 'add_new_bank', 'Add New Bank', 'Thêm ngân hàng'),
(206, 'day_closing', 'Day Closing', 'Ngày kết thúc'),
(207, 'account_closing_report', 'Account Closing Report', 'Báo cáo kế toán cuối kỳ'),
(208, 'last_day_ammount', 'Last Day Amount', 'Số tiền hôm qua'),
(209, 'adjustment', 'Adjustment', 'Điều chỉnh'),
(210, 'pay_type', 'Pay Type', 'Loại thanh toán'),
(211, 'customer_or_manufacturer', 'Customer,Manufacturer Or Others', 'Khách hàng hoặc nhà sản xuất'),
(212, 'transection_id', 'Transactions ID', 'Mã chuyển đổi'),
(213, 'accounts_summary_report', 'Accounts Summary Report', 'Báo cáo thống kê tài khoản'),
(214, 'bank_list', 'Bank List', 'Danh sách ngân hàng'),
(215, 'bank_edit', 'Bank Edit', 'Chỉnh sửa ngân hàng'),
(216, 'debit_plus', 'Debit (+)', 'Ghi nợ'),
(217, 'credit_minus', 'Credit (-)', 'Trừ nợ'),
(218, 'account_name', 'Account Name', 'Tên tài khoản'),
(219, 'account_type', 'Account Type', 'Kiểu tài khoản'),
(220, 'account_real_name', 'Account Real Name', 'Tên thật tài khoản'),
(221, 'manage_account', 'Manage Account', 'Quản lý tài khoản'),
(222, 'company_name', 'Company Name', 'Tên công ty'),
(223, 'edit_your_company_information', 'Edit your company information', 'Chỉnh sửa thông tin công ty của bạn'),
(224, 'company_edit', 'Company Edit', 'Chỉnh sửa công ty'),
(225, 'admin', 'Admin', 'Quản trị viên'),
(226, 'user', 'User', 'Người dùng'),
(227, 'password', 'Password', 'Mật khẩu'),
(228, 'last_name', 'Last Name', 'Họ + Tên đệm'),
(229, 'first_name', 'First Name', 'Tên riêng'),
(230, 'add_new_user_information', 'Add new user information', 'Thêm thông tin người dùng mới'),
(231, 'user_type', 'User Type', 'Kiểu người dùng'),
(232, 'user_edit', 'User Edit', 'Chỉnh sửa người dùng'),
(233, 'rtr', 'RTR', 'Phải qua phải ( right to right )'),
(234, 'ltr', 'LTR', 'Trái qua phải'),
(235, 'ltr_or_rtr', 'LTR/RTR', 'Trái qua phải hoặc phải qua trái'),
(236, 'footer_text', 'Footer Text', 'Đoạn văn cuối trang'),
(237, 'favicon', 'Favicon', 'Biểu tượng yêu thích '),
(238, 'logo', 'Logo', 'Biểu tượng'),
(239, 'update_setting', 'Update Setting', 'Cài đặt cập nhật'),
(240, 'update_your_web_setting', 'Update your Web setting', 'Cập nhật cài đặt web của bạn'),
(241, 'login', 'Login', 'Đăng nhập'),
(242, 'your_strong_password', 'Your strong password', 'Vui lòng nhập mật khẩu'),
(243, 'your_unique_email', 'Your unique email', 'Vui lòng nhập Email'),
(244, 'please_enter_your_login_information', 'Please enter your login information.', 'Vui lòng nhập thông tin đăng nhập của bạn'),
(245, 'update_profile', 'Update Profile', 'Hồ sơ cập nhật'),
(246, 'your_profile', 'Your Profile', 'Hồ sơ của bạn'),
(247, 're_type_password', 'Re-Type Password', 'Gõ lại mật khẩu'),
(248, 'new_password', 'New Password', 'Mật khẩu mới'),
(249, 'old_password', 'Old Password', 'Mật khẩu cũ'),
(250, 'new_information', 'New Information', 'Thông tin mới'),
(251, 'old_information', 'Old Information', 'Thông tin cũ'),
(252, 'change_your_information', 'Change your information', 'Thay đổi thông tin của bạn'),
(253, 'change_your_profile', 'Change your profile', 'Thay đổi hồ sơ của bạn'),
(254, 'profile', 'Profile', 'Hồ sơ'),
(255, 'wrong_username_or_password', 'Wrong User Name Or Password !', 'Sai tên đăng nhập hoặc mật khẩu'),
(256, 'successfully_updated', 'Successfully Updated.', 'Cập nhật thành công'),
(257, 'blank_field_does_not_accept', 'Blank Field Does Not Accept !', 'Không được phép để trống'),
(258, 'successfully_changed_password', 'Successfully changed password.', 'Thay đổi mật khẩu thành công'),
(259, 'you_are_not_authorised_person', 'You are not authorised person !', 'Bạn không phải là người được ủy quyền'),
(260, 'password_and_repassword_does_not_match', 'Passwor and re-password does not match !', 'Mật khẩu nhập lại không khớp'),
(261, 'new_password_at_least_six_character', 'New Password At Least 6 Character.', 'Mật khẩu mới có ít nhất 6 kí tự'),
(262, 'you_put_wrong_email_address', 'You put wrong email address !', 'Bạn đặt sai địa chỉ Email'),
(263, 'cheque_ammount_asjusted', 'Cheque amount adjusted.', 'Điều chỉnh tiền trên Séc'),
(264, 'successfully_payment_paid', 'Successfully Payment Paid.', 'Thanh toán thành công'),
(265, 'successfully_added', 'Successfully Added.', 'Đã thêm thành công'),
(266, 'successfully_updated_2_closing_ammount_not_changeale', 'Successfully Updated -2. Note: Closing Amount Not Changeable.', 'Cập nhật thành công 2 số tiền không thể thay đổi'),
(267, 'successfully_payment_received', 'Successfully Payment Received.', 'Nhận được tiền thanh toán thành công'),
(268, 'already_inserted', 'Already Inserted !', 'Đã được đưa vào'),
(269, 'successfully_delete', 'Successfully Delete.', 'Xóa thành công'),
(270, 'successfully_created', 'Successfully Created.', 'Đã tạo mới thành công'),
(271, 'logo_not_uploaded', 'Logo not uploaded !', 'Biểu tượng không được tải lên'),
(272, 'favicon_not_uploaded', 'Favicon not uploaded !', 'Biểu tượng yêu thích không được tải lên'),
(273, 'manufacturer_mobile', 'Manufacturer  Mobile', 'Điện thoại nhà sản xuất'),
(274, 'manufacturer_address', 'Manufacturer  Address', 'Địa chỉ'),
(275, 'manufacturer_details', 'Manufacturer Details', 'Chi tiết'),
(276, 'add_new_manufacturer', 'Add New Manufacturer', 'Thêm nhà sản xuất'),
(277, 'manage_suppiler', 'Manage Manufacturer', 'Quản lý nhà cung cấp'),
(278, 'manage_your_manufacturer', 'Manage your Manufacturer', 'Quản lý nhà sản xuất của bạn'),
(279, 'manage_manufacturer_ledger', 'Manage Manufacturer', 'Quản lý sổ cái nhà sản xuất'),
(280, 'invoice_id', 'Invoice ID', 'Mã hóa đơn'),
(281, 'deposite_id', 'Deposit ID', 'Mã số khoản tiền ký gửi'),
(282, 'manufacturer_actual_ledger', 'Manufacturer Actual Ledger', 'Sổ cái thực của nhà sản xuất'),
(283, 'manufacturer_information', 'Manufacturer Information', 'Thông tin nhà sản xuất'),
(284, 'event', 'Event', 'Sự kiện'),
(285, 'add_new_income', 'Add New Income', 'Thêm khoản thu nhập mới'),
(286, 'add_expese', 'Add Expense', 'Thêm phiếu chi'),
(287, 'add_new_expense', 'Add New Expense', 'Thêm khoản chi phí mới'),
(288, 'total_income_ammount', 'Total Income Amount', 'Tổng số tiền thu nhập'),
(289, 'create_new_invoice', 'Create New Invoice', 'Tạo hóa đơn mới'),
(290, 'create_pos_invoice', 'Create POS Invoice', 'Tạo hóa đơn theo từng điểm bán hàng'),
(291, 'total_profit', 'Total Profit', 'Tổng số lợi nhuận'),
(292, 'monthly_progress_report', 'Monthly Progress Report', 'Báo cáo tiến độ hàng tháng'),
(293, 'total_invoice', 'Total Invoice', 'Tổng số hóa đơn'),
(294, 'account_summary', 'Account Summary', 'Thống kê tài khoản'),
(295, 'total_manufacturer', 'Total manufacturer', 'Tổng số nhà sản xuất'),
(296, 'total_product', 'Total Medicine', 'Tổng số sản phẩm'),
(297, 'total_customer', 'Total Customer', 'Tổng số khách hàng'),
(298, 'manufacturer_edit', 'Manufacturer Edit', 'Chỉnh sửa nhà sản xuất'),
(299, 'add_new_invoice', 'Add New Invoice', 'Thêm hóa đơn mới'),
(300, 'add_new_purchase', 'Add new purchase', 'Thêm giao dịch mới'),
(301, 'currency', 'Currency', 'Tiền tệ'),
(302, 'currency_position', 'Currency Position', 'Thành phần tiền tệ'),
(303, 'left', 'Left', 'Trái'),
(304, 'right', 'Right', 'Phải'),
(305, 'add_tax', 'Add Tax', 'Thêm thuế bán hàng'),
(306, 'manage_tax', 'Manage Tax', 'Quản lý thuế'),
(307, 'add_new_tax', 'Add new tax', 'Thêm thuế mới'),
(308, 'enter_tax', 'Enter Tax', 'Nhập thuế'),
(309, 'already_exists', 'Already Exists !', 'Đã tồn tại'),
(310, 'successfully_inserted', 'Successfully Inserted.', 'Chèn vào thành công'),
(311, 'tax', 'Tax', 'Thuế'),
(312, 'tax_edit', 'Tax Edit', 'Chỉnh sửa thuế'),
(313, 'product_not_added', 'Medicine not added !', 'Sản phẩm chưa được thêm'),
(314, 'total_tax', 'Total Tax', 'Thuế'),
(315, 'manage_your_manufacturer_details', 'Manage your Manufacturer', 'Quản lý chi tiết nhà sản xuất của bạn'),
(316, 'invoice_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s                                       standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Miêu tả hóa đơn'),
(317, 'thank_you_for_choosing_us', 'Thank you very much for choosing us.', 'Cảm ơn vì đã lựa chọn chúng tôi'),
(318, 'billing_date', 'Billing Date', 'Ngày thanh toán'),
(319, 'billing_to', 'Billing To', 'Thanh toán '),
(320, 'billing_from', 'Billing From', 'Biểu mẫu thanh toán'),
(321, 'you_cant_delete_this_product', 'Sorry !!  You can\'t delete this medicine.This medicine already used in calculation system!', 'Bạn không thể xóa sản phẩm này'),
(322, 'old_customer', 'Old Customer', 'Khách hàng cũ'),
(323, 'new_customer', 'New Customer', 'Khách hàng mới'),
(324, 'new_manufacturer', 'New Manufacturer', 'Nhà cung cấp mới'),
(325, 'old_manufacturer', 'Old Manufacturer', 'Nhà sản xuất cũ'),
(326, 'credit_customer', 'Credit Customer', 'Báo cáo công nợ KH'),
(327, 'account_already_exists', 'This Account Already Exists !', 'Tài khoản đã tồn tại'),
(328, 'edit_income', 'Edit Income', 'Chỉnh sửa thu nhập'),
(329, 'you_are_not_access_this_part', 'You are not authorised person !', 'Bạn không truy cập được vào phần này'),
(330, 'account_edit', 'Account Edit', 'Chỉnh sửa tài khoản'),
(331, 'due', 'Due', 'Hạn'),
(332, 'expense_edit', 'Expense Edit', 'Chỉnh sửa chi phí'),
(333, 'please_select_customer', 'Please select customer !', 'Vui lòng chọn khách hàng'),
(334, 'profit_report', 'Profit Report (Invoice Wise)', 'Báo cáo lợi nhuận'),
(335, 'total_profit_report', 'Total profit report', 'Báo cáo tống số lợi nhuận'),
(336, 'please_enter_valid_captcha', 'Please enter valid captcha.', 'Vui lòng nhập captcha hợp lệ'),
(337, 'category_not_selected', 'Category not selected.', 'Danh mục không được chọn'),
(338, 'manufacturer_not_selected', 'Manufacturer not selected.', 'Nhà sản xuất không được lựa chọn'),
(339, 'please_select_product', 'Please select medicine', 'Vui lòng chọn sản phẩm'),
(340, 'product_model_already_exist', 'Medicine model already exist !', 'Kiểu mẫu sản phẩm đã tồn tại'),
(341, 'invoice_logo', 'Invoice Logo', 'Biểu tượng hóa đơn'),
(342, 'available_quantity', 'Available Quantity', 'Số lượng có sẵn'),
(343, 'you_can_not_buy_greater_than_available_quantity', 'You can not select grater than availale quantity !', 'Bạn không thể mua nhiều hơn số lượng có sẵn'),
(344, 'customer_details', 'Customer details', 'Chi tiết khách hàng'),
(345, 'manage_customer_details', 'Manage customer details.', 'Danh sách chi tiết khách hàng'),
(346, 'box_size', 'Box size', 'Kích thước hộp'),
(347, 'expire_date', 'Expiry  date', 'Ngày hết hạn'),
(348, 'product_location', 'Medicine  Shelf', 'Vị trí'),
(349, 'generic_name', 'Generic name', 'Tên hoạt chất'),
(350, 'payment_method', 'Payment Method', 'Phương thức thanh toán'),
(351, 'card_no', 'Card no', 'Số hiệu thẻ'),
(352, 'medicine', 'Medicine', 'Thuốc'),
(353, 'medicine_search', 'Medicine Search', 'Tìm thuốc'),
(354, 'what_you_search', 'Enter what you search', 'Những gì bạn tìm kiếm'),
(355, 'company', 'Company', 'Công ty'),
(356, 'customer_search', 'Customer search', 'Khách hàng tìm kiếm'),
(357, 'invoice_search', 'Invoice search', 'Tìm kiếm hóa đơn'),
(358, 'purchase_search', 'Purchase search', 'Tìm kiếm mua hàng'),
(359, 'daily_closing_report', 'Daily closing report.', 'Báo cáo cuối ngày'),
(360, 'closing_search_report', 'Closing Search Report', 'Báo cáo tìm kiếm cuối kỳ'),
(361, 'category_list', 'Category List', 'Danh sách danh mục'),
(362, 'company_list', 'Company List', 'Danh sách công ty'),
(363, 'customers_list', 'Customer List', 'Danh sách khách hàng'),
(364, 'credit_customer_list', 'Credit Customer List', 'Dánh sách khoản nợ của khách hàng'),
(365, 'previous_balance_adjustment', 'Previous Balance Adjustment', 'Điều chỉnh số dư trước'),
(366, 'invoice_list', 'Invoice List', 'Danh sách hóa đơn'),
(367, 'add_pos_invoice', 'Add POS Invoice', 'Thêm hóa đơn theo điểm bán hàng'),
(368, 'add_invoice', 'Add Invoice', 'Thêm hóa đơn'),
(369, 'product_list', 'Medicine List', 'Danh sách sản phẩm'),
(370, 'purchases_list', 'Purchase List', 'Danh sách mua hàng'),
(371, 'purchase_list', 'Purchase List', 'Danh sách mua hàng'),
(372, 'stock_list', 'Stock List', 'Danh sách hàng'),
(373, 'all_report', 'All Report', 'Tất cả báo cáo'),
(374, 'daily_sales_report', 'Daily sales Report', 'Báo cáo bán hàng cuối ngày'),
(375, 'product_wise_sales_report', 'Medicine Wise Sales Report', 'Báo cáo bán hàng theo từng sản phẩm'),
(376, 'bank_update', 'Bank Update', 'Cập nhật ngân hàng'),
(377, 'account_list', 'Account List', 'Danh sách tài khoản'),
(378, 'manufacturer_list', 'Manufacturer  List', 'Danh sách nhà sản xuất'),
(379, 'manufacturer_search_item', 'Manufacturer  Search Item', 'Tìm kiếm hàng hóa của nhà sản xuất'),
(380, 'user_list', 'User List', 'Danh sách người dùng'),
(381, 'user_search_item', 'User Search Item', 'Tìm kiếm hàng hóa của người dùng'),
(382, 'change_password', 'Change Password', 'Thay đổi mật khẩu'),
(383, 'admin_login_area', 'Admin Login Area', 'Khu vực đăng nhập của quản trị viên'),
(384, 'accounts_inflow_form', 'Account Inflow Form', 'Hình thức luồng vào tài khoản'),
(385, 'accounts_outflow_form', 'Accounts Outflow Form', 'Hình thức luồng ra tài khoản'),
(386, 'accounts_tax_form', 'Accounts Tax Form', 'Biểu mẫu thuế tài khoản'),
(387, 'accounts_manage_tax', 'Accounts Manage Tax', 'Quản lý thuế tài khoản'),
(388, 'accounts_tax_edit', 'Accounts Tax Edit', 'Chỉnh sửa thuế tài khoản'),
(389, 'accounts_summary_data', 'Accounts Summary Data', 'Dữ liệu thống kê tài khoản'),
(390, 'accounts_details_data', 'Accounts Details Data', 'Chi tiết dữ liệu tài khoản'),
(391, 'datewise_summary_data', 'Datewise Summary Data', 'Sơ lược dữ liệu theo ngày'),
(392, 'accounts_cheque_manager', 'Account Cheque Manager', 'Quản lý kiểm tra tài khoản'),
(393, 'accounts_edit_data', 'Accounts Edit Data', 'Chỉnh sửa dữ liệu tài khoản'),
(394, 'print_barcode', 'Print Barcode', 'In mã vạch'),
(395, 'print_qrcode', 'Print Qrcode', 'In mã QR'),
(396, 'add_new_account', 'Add New Account', 'Thêm tài khoản mới'),
(397, 'table_edit', 'Table Edit', 'Chỉnh sửa bảng dữ liệu'),
(398, 'secret_key', 'Secret Key', 'Chìa khóa bí mật'),
(399, 'site_key', 'Site Key', 'Khóa trang'),
(400, 'captcha', 'Captcha', 'Mã captcha'),
(401, 'please_add_walking_customer_for_default_customer', 'Please add walking customer for default customer. ', 'Vui lòng thêm khách hàng'),
(402, 'barcode_qrcode_scan_here', 'Barcode Or QRcode scan here', 'Quét mã ở đây'),
(403, 'manage_your_credit_customer', 'Manage your credit customer', 'Quản lý khách hàng tín dụng của bạn'),
(404, 'unit', 'Unit', 'Đơn vị'),
(405, 'total_discount', 'Total Discount', 'Khấu trừ'),
(406, 'meter_m', 'Meter (M)', 'Mét'),
(407, 'piece_pc', 'Piece (Pc)', 'Chiếc'),
(408, 'kilogram_kg', 'Kilogram (Kg)', 'Kilogram'),
(409, 'import_product_csv', 'Import Medicine (CSV)', 'Nhập dược qua CSV'),
(410, 'close', 'Close', 'Đóng'),
(411, 'csv_file_informaion', 'File Information (CSV)', 'Tệp thông tin CSV'),
(412, 'download_example_file', 'Download Example File', 'Tải xuống tệp ví dụ'),
(413, 'upload_csv_file', 'Upload CSV File', 'Tải lên tệp CSV'),
(414, 'manufacturer_id', 'Manufacturer ID', 'Mã số nhà sản xuất'),
(415, 'category_id', 'Category ID', 'Mã danh mục'),
(416, 'are_you_sure_to_delete', 'Are you sure,want to delete ?', 'Bạn có chắc muốn xóa không '),
(417, 'stock_report_manufacturer_wise', 'Stock Report (Manufacturer Wise)', 'Báo cáo hàng hóa theo từng nhà sản xuất'),
(418, 'stock_report_product_wise', 'Stock Report (Medicine Wise)', 'Báo cáo hàng hóa theo từng sản phẩm'),
(419, 'select_manufacturer', 'Select Manufacturer', 'Lựa chọn nhà sản xuất'),
(420, 'select_product', 'Select Medicine ', 'Lựa chọn sản phẩm'),
(421, 'phone', 'Phone', 'Điện thoại'),
(422, 'in_quantity', 'In Quantity', 'Số lượng'),
(423, 'out_quantity', 'Sold QTY', 'Số lượng tiêu thụ'),
(424, 'in_taka', 'In Taka', 'Trong Taka (????)'),
(425, 'out_taka', 'Out Taka', '(?????????????????????????????????????????????????)'),
(426, 'data_synchronizer', 'Data Synchronizer', 'Đồng bộ hóa dữ liệu'),
(427, 'synchronize', 'Synchronize', 'Đồng bộ hóa'),
(428, 'backup_restore', 'Backup And Restore', 'Sao lưu khôi phục'),
(429, 'synchronizer_setting', 'Synchronizer Setting', 'Cài đặt đồng bộ hóa'),
(430, 'backup_and_restore', 'Backup And Restore', 'Sao lưu và khôi phục'),
(431, 'hostname', 'Host Name', 'Tên máy chủ'),
(432, 'username', 'User Name', 'Tên người dùng'),
(433, 'ftp_port', 'FTP Port', 'Cổng giao thức truyền tệp'),
(434, 'ftp_debug', 'FTP Debug', 'Gỡ lỗi giao thức truyền tệp ( file transfer protocol )'),
(435, 'project_root', 'Project Root', 'Dự án gốc'),
(436, 'internet_connection', 'Internet connection', 'Kết nối internet'),
(437, 'ok', 'Ok', 'Đồng ý'),
(438, 'not_available', 'Not available', 'Không có sẵn'),
(439, 'outgoing_file', 'Outgoing File', 'Tập tin gửi đi'),
(440, 'available', 'Available', 'Có sẵn'),
(441, 'incoming_file', 'Incoming file', 'Tệp tin đến'),
(442, 'data_upload_to_server', 'Data upload to server', 'Tải dữ liệu đến máy chủ'),
(443, 'download_data_from_server', 'Download data from server', 'Tải dữ liệu từ máy chủ'),
(444, 'data_import_to_database', 'Data import to database', 'Nhập dữ liệu vào cơ sở dữ liệu'),
(445, 'please_wait', 'Please Wait', 'Vui lòng chờ trong giây lát'),
(446, 'ooops_something_went_wrong', 'Ooops something went wrong', 'Rất tiếc đã xảy ra lỗi'),
(447, 'file_information', 'File Information', 'Tệp thông tin'),
(448, 'size', 'Size', 'Kích thước'),
(449, 'backup_date', 'Backup date', 'Ngày sao lưu'),
(450, 'backup_now', 'Backup Now', 'Sao lưu ngay bây giờ'),
(451, 'are_you_sure', 'Are you sure ?', 'Bạn có chắc'),
(452, 'download', 'Downlaod', 'Tải xuống'),
(453, 'database_backup', 'Database Backup', 'Sao lưu cơ sở dữ liệu'),
(454, 'backup_successfully', 'Backup Successfully', 'Sao lưu thành công'),
(455, 'please_try_again', 'Please Try Again', 'Vui lòng thử lại'),
(456, 'restore_successfully', 'Restore successfully', 'Khôi phục thành công'),
(457, 'download_successfully', 'Download Successfully', 'Tải xuống thành công'),
(458, 'delete_successfully', 'Delete Successfully', 'Xóa thành công'),
(459, 'ftp_setting', 'FTP Setting', 'Cài đặt giao thức truyền tệp'),
(460, 'save_successfully', 'Save successfully', 'Lưu thành công'),
(461, 'upload_successfully', 'Upload successfully.', 'Tải lên thành công'),
(462, 'unable_to_upload_file_please_check_configuration', 'unable to upload file please check configuration.', 'Không thể tải lên tệp, vui lòng kiếm tra cấu hình'),
(463, 'please_configure_synchronizer_settings', 'Please Configure Synchronizer Settings ', 'Vui lòng cấu hình trình đồng bộ hóa'),
(464, 'unable_to_download_file_please_check_configuration', 'Unable To Download File,Please Check Configuration.', 'Không thể tải xuống, vui lòng kiểm tra cấu hình'),
(465, 'data_import_first', 'Data Import First', 'Nhập dữ liệu trước'),
(466, 'data_import_successfully', 'Data Import Successfully', 'Dữ liệu nhập thành công'),
(467, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data please check config or sql file.', 'Không thể nhập dữ liệu, vui lòng kiểm tra cấu hình hoặc tệp SQL'),
(468, 'restore_now', 'Restore Now', 'Khôi phục ngay'),
(469, 'out_of_stock', 'Out Of Stock', 'Dược sắp hết tồn kho '),
(470, 'others', 'Others', 'Khác'),
(471, 'shelf', 'Shelf', 'Vị trí '),
(472, 'discount_type', 'Discount Type ', 'Kiểu chiết khấu'),
(473, 'discount_percentage', 'Discount', 'Tỷ lệ chiết khấu'),
(474, 'fixed_dis', 'Fixed Dis', 'Chiến lược đầu tư cô định ( Default Investment Strategy )'),
(475, 'full_paid', 'Full Paid', 'Đã thanh toán đầy đủ'),
(476, 'available_qnty', 'Ava.Qty', 'Số lượng có sẵn'),
(477, 'stock_ctn', 'Stock/Qnt', 'Lô hàng'),
(478, 'sale_price', 'Sale Price', 'Giá tiền bán hàng'),
(479, 'manufacturer_rate', 'Manufacturer  Price', 'Xếp hạng'),
(480, 'please_upload_image_type', 'Sorry!!! Please Upload jpg,jpeg,png,gif typeimage', 'Vui lòng tải lên loại hình ảnh'),
(481, 'ml', 'Milli liter(ml)', 'mililit'),
(482, 'mg', 'Milli Gram(mg)', 'miligam'),
(483, 'you_can_not_buy_greater_than_available_qnty', 'You can not sale more than available quantity ! please purchase this Product', 'Bạn không thể mua nhiều hơn số lượng có sẵn'),
(484, 'due_amount', 'Due Amount', 'Số tiền đến hạn'),
(485, 'return_invoice', 'Return Invoice', 'Hóa đơn hoàn trả'),
(486, 'sold_qty', 'Sold Qty', 'Số lượng đã bán'),
(487, 'ret_quantity', 'Return QTY', 'Thu hồi số lượng (Retrieval_Quantity)'),
(488, 'deduction', 'Deduction', 'Khoản khấu trừ'),
(489, 'return', 'Return', 'Hoàn trả'),
(490, 'note', 'Return Reasone', 'Ghi chú'),
(491, 'usablilties', 'Return Usability', 'Tiện ích'),
(492, 'adjs_with_stck', 'Adjust With Stock', 'Điều chỉnh kho hàng'),
(493, 'return_to_manufacturer', 'Return To Manufacturer', 'Hoàn trả lại nhà sản xuất'),
(494, 'wastage', 'Wastage', 'Hao hụt'),
(495, 'to_deduction', 'Total Deduction', 'Khấu trừ'),
(496, 'nt_return', 'Net Return', 'Ghi chú hoàn trả (note return)'),
(497, 'return_id', 'Return Id', 'Mã số hoàn trả'),
(498, 'return_details', 'Return Details', 'Chi tiết hoàn trả'),
(499, 'add_return', 'Add Return', 'Thêm đơn hoàn trả'),
(500, 'return_list', 'Return List', 'Danh sách hoàn trả'),
(501, 'stock_return_list', 'Stock Return List', 'Danh sách hoàn trả hàng hóa'),
(502, 'wastage_return_list', 'Wastage Return List', 'Danh sách hoàn trả hao hụt'),
(503, 'check_return', 'Check Return', 'Kiểm tra hoàn trả'),
(504, 'quantity_must_be_fillup', 'Return Quantity Must be Fill Up', 'Số lượng phải được điền'),
(505, 'expeire_date', 'Expiry  date', 'Hạn sử dụng'),
(506, 'batch_id', 'Batch ID', 'Mã lô hàng'),
(507, 'manufacturer_return_list', 'Manufacturer  Return List', 'Danh sách hoàn trả của NSX'),
(508, 'c_r_slist', 'Customer Return List ', 'Danh sách yêu cầu của khách hàng'),
(509, 'manufacturer_return', 'Manufacturer  Return ', 'Nhà sản xuất hoàn trả '),
(510, 'wastage_list', 'Wastage List', 'Danh sách hao hụt'),
(511, 'in_qnty', 'In Quantity', 'Số lượng'),
(512, 'out_qnty', 'Sold QTY', 'Số lượng tiêu thụ'),
(513, 'stock_sale', 'Stock Sell Price', 'Giá bán hàng'),
(514, 'add_product_csv', 'Import Medicine (CSV)', 'Thêm sản phẩm bằng CSV'),
(515, 'purchase_id', 'Purchase ID', 'Mã mua hàng'),
(516, 'add_payment', 'Add Payment', 'Thêm phiếu chi'),
(517, 'add_new_payment', 'Add new Payment', 'Thêm thanh toán mới'),
(518, 'transaction', 'Transaction', 'Giao dịch'),
(519, 'manage_transaction', 'Manage Transaction', 'Quản lý giao dịch'),
(520, 'choose_transaction', 'Choose Transaction', 'Lựa chọn giao dịch'),
(521, 'receipt', 'Receipt', 'Biên lai'),
(522, 'payment', 'Payment', 'Thanh toán'),
(523, 'transaction_categry', 'Transaction Category', 'Các hạng mục giao dịch'),
(524, 'transaction_mood', 'Transaction Mood', 'Chế độ giao dịch ( mode )'),
(525, 'payment_amount', 'Payment Amount', 'Số tiền thanh toán'),
(526, 'receipt_amount', 'Receipt Amount', 'Số tiền của biên lai'),
(527, 'daily_summary', 'Daily Summary', 'Tổng hợp hằng ngày'),
(528, 'daily_cash_flow', 'Daily  Cashflow', 'Luồng tiền hằng ngày'),
(529, 'custom_report', 'Custom Report', 'Khách hàng báo cáo'),
(530, 'root_account', 'Root Account', 'Tài khoản gốc'),
(531, 'office', 'Office', 'Văn phòng'),
(532, 'loan', 'Loan', 'Vay mượn'),
(533, 'successfully_saved', 'Successfully Saved', 'Lưu thành công'),
(534, 'bank', 'Bank', 'Ngân hàng'),
(535, 'bank_transaction', 'Bank Transaction', 'Giao dịch qua ngân hàng'),
(536, 'office_loan', 'Office Loan', 'Văn phòng cho thuê'),
(537, 'add_person', 'Add Person', 'Thêm nhân sự'),
(538, 'manage_loan', 'Manage Person', 'Quản lý khoản vay'),
(539, 'add_loan', 'Add Loan', 'Thêm khoản vay'),
(540, 'ac_name', 'Account Name', 'Tên tài khoản'),
(541, 'ac_no', 'Account No', 'Số tài khoản'),
(542, 'branch', 'Branch', 'Chi nhánh'),
(543, 'signature_pic', 'Signature ', 'Ảnh chữ ký'),
(544, 'withdraw_deposite_id', 'Withdraw Deposit ID', 'Mã rút tiền'),
(545, 'select_report', 'Select Report', 'Báo cáo sản phẩm'),
(546, 'per_qty', 'Purchase Qty', 'Trên số lượng'),
(547, 'stock_report_batch_wise', 'Stock Report(Batch Wise)', 'Báo cáo hàng hóa theo từng đợt'),
(548, 'box', 'Box', 'Hộp'),
(549, 'gram', 'Gram', 'Gram'),
(550, 'profit_report_manufacturer_wise', 'Profit/Loss Report(Manufacturer)', 'Báo cáo lợi nhuận theo từng nhà sản xuất'),
(551, 'calculate', 'Calculate', 'Tính toán'),
(552, 'profit_report_product_wise', 'Profit/Loss  Report Product Wise', 'Báo cáo lợi nhuận theo từng sản phẩm'),
(553, 'view_report', 'View Report', 'Xem báo cáo'),
(554, 'report_for', 'Report For', 'Báo cáo với'),
(555, 'total_sale_qty', 'Total Sale QTY', 'Tổng số lượng và doanh số bán hàng'),
(556, 'total_purchase_pric', 'Total purchase Price', 'Toàn bộ giá mua'),
(557, 'total_sale', 'Total Sale', 'Doanh số '),
(558, 'net_profit', 'Net Profit', 'Lợi nhuận ròng'),
(559, 'loss', 'Loss', 'Hao tổn'),
(560, 'product_type', 'Medicine Type', 'Nhóm dược'),
(561, 'add_type', 'Add Medicine Type', 'Thêm mới'),
(562, 'add_new_type', 'Add New Medicine  Type', 'Thêm kiểu mới'),
(563, 'type', 'Type', 'Loại chi phí'),
(564, 'type_name', 'Type Name', 'Tên nhóm'),
(565, 'manage_type', 'Manage Medicine Type', 'Quản lý nhóm dược'),
(566, 'type_id', 'Type Id', 'Mã nhóm'),
(567, 'type_edit', 'Edit Type', 'Chỉnh sửa kiểu loại'),
(568, 'profitloss', 'profit/Loss', 'Hao hụt lợi nhuận'),
(569, 'manufacturer_wise', 'Manufacturer Wise', 'Theo từng nhà sản xuất'),
(570, 'product_wise', 'Medicine Wise', 'Theo từng sản phẩm'),
(571, 'medicine_info', 'Medicine Information', 'Thông tin thuốc'),
(572, 'choose_another_invno', 'Choose Another Invoice No !!', 'Lựa chọn 1 invno khác'),
(573, 'return_manufacturers', 'Return Manufacturers', 'Nhà sản xuất hoàn trả'),
(574, 'return_manufacturer', 'Return Manufacturers', 'Nhà sản xuất hoàn trả'),
(575, 'please_input_correct_invoice_no', 'Please Input Correct Invoice No', 'Vui lòng nhập đúng hóa đơn số'),
(576, 'stock_purchase_price', 'Stock Purchase Price', 'Giá mua hàng'),
(577, 'manufacturer_returns', 'Manufacturer  Return ', 'Nhà sản xuất hoàn trả '),
(578, 'invoice_discount', 'Invoice Discount', 'Chiết khấu'),
(579, 'qty', 'Qty', 'SL'),
(580, 'discounts', 'Discount', 'Tiền Chiết khấu'),
(581, 'sub_total', 'Sub Total', 'Tổng phụ'),
(582, 'paid', 'Paid', 'Đã thanh toán'),
(583, 'change', 'Change', 'Tiền thừa trả khách'),
(584, 'purchase_price', 'Purchase Price', 'Giá mua'),
(585, 'expiry', 'Expiry', 'Hạn'),
(586, 'batch', 'Batch', 'Lô hàng '),
(587, 'role_permission', 'Role Permission', 'Quyền của vai trò'),
(588, 'user_assign_role', 'Assign  User Role', 'Chỉ định vai trò người dùng'),
(589, 'permission', 'Permission', 'Sự cho phép'),
(590, 'personal_loan', 'Personal Loan', 'Khoản vay cá nhân'),
(591, 'role_name', 'Role Name', 'Tên vai trò'),
(592, 'create', 'Create', 'Tạo '),
(593, 'read', 'Read', 'Đọc'),
(594, 'add_role', 'Add Role', 'Thêm vai trò người dùng'),
(595, 'You do not have permission to access. Please contact with administrator.', 'You do not have permission to access. Please contact with administrator.', 'Bạn không có quyền truy cập, vui lòng liên hệ với quản trị viên'),
(596, 'role_permission_added_successfully', 'Role Permission Added successfully.', 'Thêm quyền của vai trò thành công'),
(597, 'role_list', 'Role List', 'Danh sách vai trò'),
(598, 'role_permission_updated_successfully', 'Role Permission Updated Successfully.', 'Cập nhật quyền của vai trò thành công'),
(599, 'add_phrase', 'Add Phrase', 'Thêm cách gọi'),
(600, 'language_home', 'Language Home', 'Ngôn ngữ gia đình'),
(601, 'phrase_edit', 'Phrase Edit', 'Chỉnh sửa cụm từ'),
(602, 'no_role_selected', 'No Role Selected', 'Không có vai trò nào được chọn'),
(603, 'category_added_successfully', 'Category added successfully', 'Thêm danh mục thành công'),
(604, 'category_already_exist', 'Category already exist', 'Danh mục đã tồn tại'),
(605, 'select_manufacturer', 'Select Manufacturer', 'Lựa chọn nhà sản xuất'),
(607, 'select_tax', 'Select Tax', 'Lựa chọn thuế'),
(608, 'must_input_numbers', 'Must input numbers', 'Phải nhập kí tự là số'),
(609, 'please_check_your_price', 'Please Check Your Price', 'Vui lòng kiểm tra giá'),
(610, 'your_profit_is', 'Your Profit is', 'Lợi nhuận của bạn là'),
(611, 'failed', 'Failed', 'Thất bại'),
(612, 'you_have_reached_the_limit_of_adding', 'You have reached the limit of adding', 'Bạn đã tới giới hạn thêm vào'),
(613, 'inputs', 'inputs', 'Đầu vào'),
(614, 'expiry_date_should_be_greater_than_puchase_date', 'Expiry Date should be greater than Puchase Date', 'Ngày hết hạn phải lớn hơn ngày mua'),
(615, 'expiry_date_should_be_greater_than_puchase_date', 'Expiry Date should be greater than Puchase Date', 'Ngày hết hạn phải lớn hơn ngày mua'),
(617, 'total_quantity', 'Total Quantity', 'Tổng số lượng '),
(618, 'rates', 'Rate', 'Đánh giá'),
(619, 'total_amount', 'Total Amount', 'Tổng số tiền'),
(621, 'receipt_detail', 'Receipt Detail', 'Chi tiết biên lai'),
(622, 'amount', 'Amount', 'Số tiền'),
(623, 'save_and_add_another_one', 'Save and add another one', 'Lưu và thêm '),
(624, 'checque_number', 'Checque Number', 'Số tấm Séc'),
(625, 'edit_receipt', 'Edit Receipt', 'Chỉnh sửa biên lai'),
(626, 'receipt_list', 'Receipt List', 'Danh sách biên lai'),
(627, 'search_by_customer_name', 'Search By Customer Name', 'Tìm kiếm bằng tên khách hàng'),
(628, 'actions', 'Actions', 'Nhiều thao tác'),
(629, 'no_data_found', 'No Data Found', 'Không tìm thấy dữ liệu nào'),
(630, 'edit', 'Edit', 'Chỉnh sửa'),
(631, 'product_not_found', 'Medicine  not found', 'Không tìm thấy sản phẩm'),
(632, 'request_failed_please_check_your_code_and_try_again', 'Request Failed, Please check your code and try again', 'Yêu cầu thất bại, vui lòng kiểm tra mã và thử lại'),
(633, 'You_can_not_return_more_than_sold_quantity', 'You Can Not Return More than Sold quantity', 'Bạn không thể hoàn trả lại với số lượng nhiều hơn số lượng đã bán'),
(634, 'you_can_not_return_less_than_1', 'You Can Not Return Less than 1', 'Bạn không thể hoàn trả lại với số lượng ít hơn 1'),
(635, 'transection_details', 'Transection Details', 'Chi tiết chuyển đổi'),
(636, 'transection_details_datewise', 'Transection  Details Datewise', 'Chi tiết chuyển đổi theo từng ngày'),
(637, 'transection_id', 'Transactions ID', 'Mã chuyển đổi'),
(638, 'select_option', 'Select Option', 'Lựa chọn'),
(639, 'loan_list', 'Loan List', 'Danh sách vay mượn'),
(640, 'todays_details', 'Todays Details', 'Chi tiết ngày hôm nay'),
(641, 'transaction_details', 'Transaction Details', 'Chi tiết giao dịch'),
(642, 'person_id', 'Person ID', 'Mã cá nhân'),
(643, 'total_transection', 'Total Transection', 'Toàn bộ các giao dịch'),
(644, 'transaction_id', 'Transaction ID', 'Mã giao dịch'),
(645, 'transection_report', 'Transection Report', 'Báo cáo chuyển đổi'),
(646, 'add_transection', 'Add Transection', 'Thêm giao dịch'),
(647, 'manage_transection', 'Manage Transection', 'Quản lý chuyển tiếp'),
(648, 'select_id', 'Select ID', 'Lựa chọn mã'),
(649, 'choose_transection', 'Choose Transection', 'Lựa chọn chuyển giao'),
(650, 'update_transection', 'Update Transection', 'Chuyển đổi cập nhật'),
(651, 'manufacturer_all', 'Manufacturer All', 'Tất cả nhà sản xuất'),
(652, 'select_all', 'Select All', 'Lựa chọn tất cả'),
(653, 'all', 'All', 'Tất cả'),
(654, 'max_rate', 'Max Rate', 'Đánh giá tối đa'),
(655, 'min_rate', 'Min Rate', 'Đánh giá tối thiểu'),
(656, 'average_rate', 'Average Rate', 'Đánh giá trung bình'),
(657, 'date_expired_please_choose_another.', 'Date Expired!! Please Choose another', 'Đã hết hạn, vui lòng chọn ngày khác'),
(658, 'your_medicine_is_date_expiry_Please_choose_another', 'Your Medicine is Date Expiry !! Please Choose another', 'Thuốc của bạn đã hết hạn, vui lòng chọn sản phẩm khác'),
(659, 'meno', 'MEMO', 'Meno (????????????????????????????????????????????????????????????????)'),
(660, 'out_of_stock_and_date_expired_medicine', 'Out of Stock and Date Expired Medicine', 'Hết hàng và thuốc đã hết hạn'),
(661, 'edit_profile', 'Edit Profile', 'Chỉnh sửa hồ sơ'),
(662, 'deposit_detail', 'Deposit detail', 'Chi tiết khoản tiền ký gửi'),
(663, 'new_deposit', 'New Deposit', 'Tiền gửi mới'),
(664, 'edit_deposit', 'Edit Deposit', 'Chỉnh sửa số tiền gửi'),
(665, 'select_customer', 'Select Customer', 'Lựa chọn khách hàng'),
(666, 'draw', 'Draw', 'Viết phiếu '),
(667, 'deposit', 'Deposit', 'Tiền ký gửi'),
(668, 'select_type', 'Select Type', 'Lựa chọn kiểu loại'),
(669, 'transaction_type', 'Transaction Type', 'Kiểu giao dịch'),
(670, 'cash', 'Cash', 'Tiền mặt'),
(671, 'select_bank', 'Select Bank', 'Lựa chọn ngân hàng'),
(672, 'drawing', 'Drawing', 'Viết phiếu '),
(673, 'expenses', 'Expenses', 'Chi phí'),
(674, 'banking', 'Banking', 'Ngân hàng'),
(675, 'daily_closing', 'Daily Closing', 'Cuối ngày'),
(676, 'title', 'Title', 'Tiêu đề'),
(677, 'error_get_data_from_ajax', 'Error get data from ajax', 'Lỗi lấy dữ liệu từ AJAX'),
(678, 'toggle_navigation', 'Toggle Navigation', 'Điều hướng chuyển đổi'),
(679, 'this_product_not_found', 'This Medicine  Not Found !', 'Không tìm thấy sản phẩm này'),
(680, 'search_by_date_from', 'Search By Date: From', 'Tìm kiếm bằng ngày từ'),
(681, 'manufacturer_sales_report', 'Manufacturer Sales Report', 'Báo cáo bán hàng của nhà sản xuất'),
(682, 'transection', 'Transection', 'Chuyển đổi'),
(683, 'transection_mood', 'Transection Mood', 'Chế độ chuyển đổi'),
(684, 'transection_categry', 'Transection Categry', 'Mục chuyển đổi'),
(685, 'export_csv', 'Export CSV', 'Xuất file CSV'),
(686, 'select manufacturer', 'Select Manufacturer', 'Lựa chọn nhà sản xuất'),
(687, 'customer_return', 'Customer Return', 'Khách hàng hoàn trả'),
(688, 'return_form', 'Return Form', 'Hình thức hoàn trả'),
(689, 'data_not_found', 'Data Not Found', 'Dữ liệu không tồn tại'),
(690, 'export_csv', 'Export CSV', 'Xuất file CSV'),
(691, 'manage_person', 'Manage Person', 'Quản lý khoản vay'),
(692, 'backup', 'Back Up', 'Sao lưu dự phòng'),
(693, 'total_balance', 'Total Balance', 'Tổng số dư tài khoản'),
(694, 'product_id_model_manufacturer_id_can_not_null', 'Medicine Id & Medicine Type & Manufacturer Id Can not be Blank', 'Mã số mẫu mã sản phẩm của nhà sản xuất không được để trống'),
(695, 'product_name_can_not_be_null', 'Medicine  Name can Not be Blank', 'Tên sản phẩm không được để trống'),
(696, 'product_model_can_not_be_null', 'Medicine  Model Can Not be Blank', 'Kiểu mẫu sản phẩm không được để trống'),
(697, 'sms', 'SMS', '( Server management system ??????????????)'),
(698, 'sms_configure', 'Sms Configuration', 'Cấu hình SMS'),
(699, 'url', 'Url', 'Đường dẫn URL'),
(700, 'sender_id', 'Sender ID', 'Mã người gửi'),
(701, 'api_key', 'Api Key', 'Mã API'),
(702, 'barcode_or_qrcode', 'Barcode Or QRcode ', 'Mã vạch hoặc mã QR'),
(703, 'currency_name', 'Currency Name', 'Tên tiền tệ'),
(704, 'add_currency', 'Add Currency', 'Thêm đơn vị tiền tệ'),
(705, 'currency_icon', 'Currency Icon', 'Biểu tượng tiền tệ'),
(706, 'currency_list', 'Currency List', 'Danh sách tiền tệ'),
(707, 'import', 'Import', 'Nhập'),
(708, 'c_o_a', 'Chart Of Account', 'Bảng phân tích thành phần sử dụng'),
(709, 'supplier_payment', 'Supplier Payment', 'Thanh toán cho nhà cung cấp'),
(710, 'customer_receive', 'Customer Receive', 'Khách hàng tiếp nhận'),
(711, 'debit_voucher', 'Debit Voucher', 'Phiếu ghi nợ'),
(712, 'credit_voucher', 'Credit voucher', 'Phiếu tín dụng'),
(713, 'voucher_approval', 'Voucher Approval', 'Phê duyệt phiếu'),
(714, 'contra_voucher', 'Contra Voucher', 'Phiếu đối chiếu'),
(715, 'journal_voucher', 'Journal Voucher', 'Phiếu chứng từ'),
(716, 'voucher_report', 'Voucher Report', 'Báo cáo phiếu'),
(717, 'cash_book', 'Cash Book', 'Sổ tiền mặt'),
(718, 'inventory_ledger', 'Inventory Ledger', 'Sổ cái hàng tồn kho'),
(719, 'bank_book', 'Bank Book', 'Sổ ghi tiền gửi ngân hàng'),
(720, 'general_ledger', 'General Ledger', 'Sổ cái chung'),
(721, 'trial_balance', 'Trial Balance', 'Sổ sách'),
(722, 'profit_loss_report', 'Profit Loss Report', 'Báo cáo hao hụt lợi nhuận'),
(723, 'cash_flow', 'Cash Flow', 'Dòng tiền mặt'),
(724, 'coa_print', 'COA Print', 'In bảng phân tích thành phần sản phẩm'),
(725, 'manufacturer_payment', 'Manufacturer Payment', 'Thanh toán cho nhà sản xuất'),
(726, 'add_more', 'Add More', 'Thêm nhiều hơn'),
(727, 'code', 'Code', 'Mã'),
(728, 'remark', 'Transaction Details', 'Ghi chú'),
(729, 'voucher_no', 'Voucher NO', 'Phiếu số'),
(730, 'accounts_tree_view', 'Accounts Tree view', 'Xem cây tài khoản'),
(731, 'find', 'Find', 'Tìm thấy'),
(732, 'voucher_type', 'Voucher Type', 'Kiểu phiếu'),
(733, 'particulars', 'Particulars', 'Đặc biệt'),
(734, 'cash_flow_statement', 'Cash Flow Statement', 'Báo cáo lưu chuyển tiền mặt'),
(735, 'amount_in_dollar', 'Amount In Dollar', 'Số tiền bằng đô la'),
(736, 'opening_cash_and_equivalent', 'Opening Cash and Equivalent', 'Mở tiền mặt và các khoản tương đương'),
(737, 'with_details', 'With Details', 'Chi tiết'),
(738, 'transaction_head', 'Transaction Head', 'Chủ giao dịch'),
(739, 'gl_head', 'General Ledger Head', 'Chủ sở hữu'),
(740, 'no_report', 'No Report', 'Không báo cáo'),
(741, 'pre_balance', 'Pre Balance', 'Số dư trước'),
(742, 'current_balance', 'Current Balance', 'Số dư hiện tại'),
(743, 'from_date', 'From Date', 'Kể từ ngày'),
(744, 'to_date', 'To Date', 'Đến ngày'),
(745, 'profit_loss', 'Profit Loss Statement', 'Hao hụt lợi nhuận'),
(746, 'add_expense_item', 'Add Expense Item', 'Thêm phiếu chi mặt hàng'),
(747, 'manage_expense_item', 'Manage Expense Item', 'Danh sách chi phí dược'),
(748, 'add_expense', 'Add Expense', 'Thêm phiếu chi'),
(749, 'manage_expense', 'Manage Expense', 'Quản lý chi phí'),
(750, 'expense_statement', 'Expense Statement', 'Báo cáo chi phí'),
(751, 'expense_type', 'Expense Type', 'Loại chi phí'),
(752, 'expense_item_name', 'Expense Item Name', 'Tên khoản chi phí'),
(753, 'opening_balance', 'Opening Balance', 'Mở số dư tài khoản'),
(754, 'tax_settings', 'Tax Settings', 'Cài đặt thuế'),
(755, 'add_incometax', 'Add Income Tax', 'Thêm thuế thu nhập'),
(756, 'manage_income_tax', 'Manage Income tax', 'Danh sách thuế thu nhập'),
(757, 'tax_report', 'Tax Report', 'Thuế xuất'),
(758, 'invoice_wise_tax_report', 'Invoice Wise Tax Report', 'Báo cáo thuế theo từng hóa đơn'),
(759, 'number_of_tax', 'Number of Tax', 'Số thuế'),
(760, 'default_value', 'Default Value', 'Giá trị mặc định'),
(761, 'reg_no', 'Registration No', 'Số đăng ký'),
(762, 'tax_name', 'Tax Name', 'Tên thuế'),
(763, 'service_id', 'Service Id', 'Mã dịch vụ'),
(764, 'service', 'Service', 'Dịch vụ'),
(765, 'add_service', 'Add Service', 'Thêm dịch vụ'),
(766, 'manage_service', 'Manage Service', 'Quản lý dịch vụ'),
(767, 'service_invoice', 'Service Invoice', 'Hóa đơn dịch vụ'),
(768, 'manage_service_invoice', 'Manage Service Invoice', 'Quản lý dịch vụ hóa đơn'),
(769, 'service_name', 'Service Name', 'Tên dịch vụ'),
(770, 'charge', 'Charge', 'Phí dịch vụ'),
(771, 'add', 'Add', 'Thêm'),
(772, 'previous', 'Previous', 'Khách thanh toán '),
(773, 'net_total', 'Net Total', 'Tổng tiền hàng'),
(774, 'hanging_over', 'Estimated Time Of Departure', 'Thời gian'),
(775, 'service_discount', 'Service Discount', 'Chiết khấu dịch vụ'),
(776, 'hrm', 'HRM', 'Quản trị nhân sự'),
(777, 'add_designation', 'Add Designation', 'Thêm mã nhân viên'),
(778, 'manage_designation', 'Manage Designation', 'Danh sách danh hiệu'),
(779, 'add_employee', 'Add Employee', 'Thêm nhân viên'),
(780, 'manage_employee', 'Manage Employee', 'Danh sách nhân sự'),
(781, 'attendance', 'Attendance', 'Chấm công'),
(782, 'add_attendance', 'Add Attendance', 'Thêm chấm công'),
(783, 'manage_attendance', 'Manage Attendance', 'Quản lý chấm công'),
(784, 'attendance_report', 'Attendance Report', 'Báo cáo chấm công'),
(785, 'payroll', 'Payroll', 'Bảng lương'),
(786, 'add_benefits', 'Add Benefits', 'Thêm quyền lợi'),
(787, 'manage_benefits', 'Manage Benefits', 'Quản lý lợi nhuận'),
(788, 'add_salary_setup', 'Add Salary Setup', 'Thêm thiết lập lương'),
(789, 'manage_salary_setup', 'Manage Salary Setup', 'Quản lý thiệt lập lương'),
(790, 'salary_generate', 'Salary Generate', 'Tạo tiền lương');
INSERT INTO `language` (`id`, `phrase`, `english`, `vi`) VALUES
(791, 'manage_salary_generate', 'Manage Salary Generate', 'Quản lý việc tạo tiền lương'),
(792, 'salary_payment', 'Salary Payment', 'Thanh toán tiền lương'),
(793, 'designation', 'Designation', 'Mã nhân viên'),
(794, 'rate_type', 'Rate Type', 'Loại đánh giá'),
(795, 'hour_rate_or_salary', 'Hourly Rate/Salary', 'Làm theo giờ hoặc làm theo lương'),
(796, 'blood_group', 'Blood Group', 'Nhóm máu'),
(797, 'address_line_1', 'Address Line 1', 'Dòng địa chỉ 1'),
(798, 'address_line_2', 'Address Line 2', 'Địa chỉ'),
(799, 'picture', 'Picture', 'Tranh ảnh'),
(800, 'country', 'Country', 'Quốc gia'),
(801, 'city', 'City', 'Thành phố'),
(802, 'zip', 'Zip code', 'Mã bưu điện'),
(803, 'single_checkin', 'Single Check In', 'Đăng ký 1 lần'),
(804, 'bulk_checkin', 'Bulk Check In', 'Kiểm tra hàng loạt'),
(805, 'checkin', 'Check In', 'Thủ tục đăng kí'),
(806, 'employee_name', 'Employee Name', 'Tên nhân viên'),
(807, 'check_in', 'Check In', 'Đăng kí vào'),
(808, 'checkout', 'Check Out', 'Thủ tục thanh toán'),
(809, 'confirm_clock', 'Confirm Clock', 'Đồng hồ xác nhận'),
(810, 'stay', 'Stay', 'Thời gian làm việc'),
(811, 'download_sample_file', 'Download Sample File', 'Tải xuống tệp mẫu'),
(812, 'employee', 'Employee', 'Nhân viên'),
(813, 'sign_in', 'Check In', 'Đăng nhập'),
(814, 'sign_out', 'Check  Out', 'Đăng xuất'),
(815, 'staytime', 'Stay Time', 'Thời gian nghỉ'),
(816, 'benefits_list', 'Benefit List', 'Danh sách lợi ích'),
(817, 'benefits', 'Benefits', 'Lợi ích'),
(818, 'benefit_type', 'Benefit Type', 'Loại lợi ích'),
(819, 'salary_benefits', 'Salary Benefits', 'Phúc lợi tiền lương'),
(820, 'salary_benefits_type', 'Salary Benefits Type', 'Kiểu phúc lợi tiền lương'),
(821, 'hourly', 'Hourly', 'Hàng giờ'),
(822, 'salary', 'Salary', 'Tiền lương'),
(823, 'timezone', 'Time Zone', 'Múi giờ'),
(824, 'request', 'Request', 'Yêu cầu'),
(825, 'datewise_report', 'Date Wise Report', 'Báo cáo theo ngày'),
(826, 'work_hour', 'Work Hours', 'Giờ làm việc'),
(827, 'employee_wise_report', 'Employee Wise Report', 'Báo cáo từng nhân viên'),
(828, 'date_in_time_report', 'In Time Report', 'Báo cáo thời gian trong ngày'),
(829, 'successfully_checkout', 'Successfully Checked Out', 'Thanh toán thành công'),
(830, 'setup_tax', 'Setup Tax', 'Thiết lập thuế'),
(831, 'start_amount', 'Start Amount', 'Thuế đầu vào '),
(832, 'end_amount', 'End Amount', 'Thuế đầu ra '),
(833, 'tax_rate', 'Tax Rate', 'Đánh giá thuế'),
(834, 'setup', 'Setup', 'Thiết lập'),
(835, 'income_tax_updateform', 'Income Tax Update Form', 'Biểu mẫu cập nhật thuế thu nhập'),
(836, 'salary_type', 'Salary Type', 'Loại tiền lương'),
(837, 'addition', 'Addition', 'Bổ sung'),
(838, 'gross_salary', 'Gross Salary', 'Tổng số lương'),
(839, 'set', 'Set', 'Bộ'),
(840, 'salary_month', 'Salary Month', 'Tháng lương'),
(841, 'generate', 'Generate ', 'Tạo ra'),
(842, 'total_salary', 'Total Salary', 'Tổng số tiền lương'),
(843, 'total_working_minutes', 'Total Working Hours', 'Tổng số phút làm việc'),
(844, 'working_period', 'Total Working Days', 'Kỳ làm việc'),
(845, 'paid_by', 'Paid By', 'Người thanh toán'),
(846, 'pay_now', 'Pay Now ?', 'Thanh toán ngay'),
(847, 'confirm', 'Confirm', 'Xác nhận'),
(848, 'generate_by', 'Generate By', 'Nhân viên'),
(849, 'gui_pos', 'GUI POS', 'Danh sách đơn hàng 2'),
(850, 'add_fixed_assets', 'Add Fixed Assets', 'Thêm tài sản cố định'),
(851, 'fixed_assets_list', 'Fixed Asset List', 'Danh sách tài sản cố định'),
(852, 'fixed_assets_purchase', 'Purchase Fixed Assets', 'Mua tài sản cố định'),
(853, 'fixed_assets_purchase_manage', 'Fixed Assets Purchase List', 'Quản lý mua tài sản cố định'),
(854, 'fixed_assets', 'Fixed Assets', 'Tài sản cố định'),
(855, 'item_code', 'Item code', 'Mã mặt hàng'),
(856, 'item_name', 'Item Name', 'Tên mặt hàng'),
(857, 'opening_assets', 'Assets Qty', 'Mở tài sản'),
(858, 'edit_fixed_asset', 'Edit Fixed Assets', 'Chỉnh sửa tài sản cố định'),
(859, 'save_change', 'Save Change', 'Lưu thay đổi'),
(860, 'in_word', 'In Word', 'Trong từ ngữ'),
(861, 'purchase_pad_print', 'Purchase Pad Print', '(??????????????????????????????????)'),
(862, 'fixed_assets_purchase_details', 'Fixed Assets Purchase Details', 'Chi tiết mua tài sản cố định'),
(863, 'manage_language', 'Manage Language', 'Quản lý ngôn ngữ'),
(864, 'person_edit', 'Person Edit', 'Chỉnh sửa cá nhân'),
(865, 'person_ledger', 'Person Ledger', 'Sổ cái cá nhân'),
(866, 'medicine_name', 'Medicine Name', 'Tên thuốc'),
(867, 'unit_list', 'Unit List', 'Danh sách đơn vị'),
(868, 'add_unit', 'Add Unit', 'Thêm đơn vị'),
(869, 'edit_unit', 'Edit Unit', 'Chỉnh sửa bộ phận'),
(870, 'unit_name', 'Unit Name', 'Đơn vị '),
(871, 'unit_not_selected', 'Unit did not Selected', 'Bộ phận không được lựa chọn'),
(872, 'supplier', 'Supplier', 'Nhà cung cấp'),
(873, 'add_supplier', 'Add Supplier', 'Thêm nhà cung cấp'),
(874, 'manage_supplier', 'Manage Supplier', 'Quản lý nhà cung cấp'),
(875, 'supplier_ledger', 'Supplier Ledger', 'Biên lai nhà cung cấp'),
(876, 'supplier_sales_details', 'Supplier Sales Details', 'Chi tiết bán hàng của nhà cung cấp'),
(877, 'purchase_detail', 'Purchase details', 'Chi tiết mua hàng'),
(878, 'purchase_information', 'Purchase Information', 'Thông tin mua hàng'),
(879, 'account_head', 'Account Head', 'Chủ tài khoản'),
(880, 'transaction_date', 'Transaction Date', 'Ngày giao dịch'),
(881, 'approved', 'Approve', 'Phê duyệt'),
(882, 'date_wise_report', 'Date Wise Report', 'Báo cáo theo ngày'),
(883, 'time_wise_report', 'Time Wise Report', 'Báo cáo theo từng thời điểm'),
(884, 'report_date', 'Report Date', 'Ngày báo cáo'),
(885, 's_time', 'Start Time', 'Thời gian hệ thống (system time)'),
(886, 'e_time', 'End Time', 'Thời gian điện tử'),
(887, 'basic', 'Basic', 'Cơ bản'),
(888, 'supplier_name', 'Supplier Name', 'Tên nhà cung cấp'),
(889, 'supplier_mobile', 'Supplier Mobile', 'Điện thoại'),
(890, 'supplier_address', 'Supplier Address', 'Địa chỉ'),
(891, 'supplier_details', 'Supplier Details', 'Chỉ tiết'),
(892, 'select_supplier', 'Select Supplier', 'Lựa chọn nhà cung cấp'),
(893, 'accounts_report', 'Accounts Report', 'Báo cáo tài khoản'),
(894, 'account_code', 'Account Code', 'Mã tài khoản'),
(895, 'human_resource_management', 'Human Resource ', 'Quản trị nhân sự'),
(896, 'menu_name', 'Menu Name', 'Tên Menu'),
(897, 'head_of_account', 'Account Head', 'Chủ tài khoản'),
(898, 'successfully_approved', 'Successfully Approved', 'Phê duyệt thành công'),
(899, 'supplier_edit', 'Supplier Edit', 'Chỉnh sửa'),
(900, 'supplier_id', 'Supplier ID', 'Mã nhà cung cấp'),
(901, 'strength', 'Strength', 'Hàm lượng'),
(902, 'out_of_date', 'Out Of Date', 'Dược sắp quá hạn'),
(903, 'dis', 'Dis', 'Thông tin thuốc '),
(904, 'date_expired_please_choose_another', 'Date Expire Please Choose another', 'Đã hết hạn, vui lòng chọn ngày khác'),
(905, 'expired', 'Expired', 'Dược sắp quá hạn '),
(906, 'cash_adjustment', 'Cash Adjustment', 'Điều chỉnh'),
(907, 'adjustment_type', 'Adjustment Type', 'Điều chỉnh kiểu mẫu'),
(908, 'cash_payment', 'Cash Payment', 'Thanh toán bằng tiền mặt'),
(909, 'bank_payment', 'Bank Payment', 'Thanh toán qua ngân hàng'),
(910, 'yes', 'Yes', 'Đồng ý'),
(911, 'no', 'No', 'Số hiệu'),
(912, 'credit_account_head', 'Credit Account Head', 'Chủ tài khoản nợ'),
(913, 'general_ledger_of', 'General Ledger Of', 'Sổ cái chung của'),
(914, 'debit_account_head', 'Debit Account Head', 'Chủ tài khoản ghi nợ'),
(915, 'update_successfully', 'Successfully Updated', 'Cập nhật thành công'),
(916, 'statement_of_comprehensive_income', 'Statement of Comprehensive Income', 'Báo cáo thu nhập toàn diện'),
(917, 'deduct', 'Deduct', 'Khấu trừ'),
(918, 'payslip', 'Payslip', 'Phiếu lương'),
(919, 'salary_slip', 'Salary Slip', 'Phiếu thanh toán lương'),
(920, 'salary_date', 'Salary Date', 'Mức tiền lương'),
(921, 'earnings', 'Earnings', 'Thu nhập'),
(922, 'basic_salary', 'Basic Salary', 'Lương cơ bản'),
(923, 'total_addition', 'Total Addition', 'Tổng những thứ được thêm vào'),
(924, 'total_deduction', 'Total Deduction', 'Tất cả khoản khấu trừ'),
(925, 'net_salary', 'Net Salary', 'Thu nhập ròng'),
(926, 'ref_number', 'Reference No', 'Số tham chiếu'),
(927, 'employee_signature', 'Employee Signature', 'Chữ ký nhân viên'),
(928, 'authorized_signature', 'Authorized Signature', 'Chữ kí ủy quyền'),
(929, 'chairman', 'Chairman', 'Chủ tịch'),
(930, 'bank_ledger', 'Bank Ledger', 'Hồ sơ ngân hàng'),
(931, 'api_secret', 'Api Secret', 'Mã API mật'),
(932, 'service_csv_upload', 'Service Csv Upload', 'Dịch vụ tải lên file CSV '),
(933, 'shipping_cost', 'Shipping Cost', 'Giá tiền vận chuyển'),
(934, 'customer_advance', 'Customer Advance', 'Khách hàng tạm ứng'),
(935, 'customer_csv_upload', 'Customer CSV Upload', 'Tải lên thông tin khách hàng qua tệp CSV'),
(936, 'contact', 'Contact', 'Liên hệ'),
(937, 'fax', 'Fax', 'Số fax'),
(938, 'state', 'State', 'Tình trạng'),
(939, 'address1', 'Address1', 'Địa chỉ thứ nhất'),
(940, 'address2', 'Address2', 'Địa chỉ thứ hai'),
(941, 'manufacturer_advance', 'Manufacturer Advance', 'Nâng cấp nhà sản xuất'),
(942, 'csv_upload_manufacturer', 'CSV Upload Manufacturer', 'Tải lên thông tin nhà chế tạo qua file CSV'),
(943, 'restore', 'Restore ', 'Khôi phục'),
(944, 'advance_type', 'Advance Type', 'Nhóm'),
(945, 'receive', 'Receive', 'Nhận'),
(946, 'note_name', 'Notes', 'Ghi chú tên'),
(947, 'pcs', 'PCS', 'Đơn vị / pieces'),
(948, 'do_you_want_to_print', 'Do You Want To Print ?', 'Có muốn in '),
(949, 'the_salary_of', NULL, 'Tiền lương của'),
(950, 'already_generated', 'Already Generated', 'Đã được tạo'),
(951, 'successfully_generated', 'Successfully Generated', 'Tạo thành công'),
(952, 'service_edit', 'Service Edit', 'Chỉnh sửa dịch vụ'),
(953, 'signature', 'Signature', 'Chữ ký'),
(954, 'manage', 'Manage', 'Quản lý'),
(955, 'income_expense_statement_of_month', 'Income Expense Statement of Month', 'Báo cáo thu nhập  trong tháng'),
(956, 'cash_received', 'Cash Received', 'Số tiền đã thu '),
(957, 'bank_received', 'Bank Received', 'Tiền đã thu qua ngân hàng'),
(958, 'total_due', 'Total Due', 'Tổng số tiền đến hạn'),
(959, 'total_service', 'Total Service', 'Tổng '),
(960, 'type_not_selected', 'Type did not Selected', 'Kiểu loại không được chọn'),
(961, 'gpp_register', 'GPP register', 'Sổ GPP'),
(962, 'gpp_register', 'GPP register', 'Sổ GPP'),
(963, 'manage_gpp_register', 'Manage GPP Register', 'Quản lý sổ GPP'),
(964, 'manage_gpp_register', 'Manage GPP Register', 'Quản lý sổ GPP'),
(965, 'adr_register', 'ADR register', 'Sổ theo dõi ADR'),
(966, 'adr_register', 'ADR register', 'Sổ theo dõi ADR'),
(967, 'manage_adr_register', 'Manage ADR register', 'Quản lý sổ theo dõi ADR'),
(968, 'manage_adr_register', 'Manage ADR register', 'Quản lý sổ theo dõi ADR'),
(969, 'adr_register_form', 'ADR register form', 'Nhập sổ theo dõi ADR'),
(970, 'adr_register_form', 'ADR register form', 'Nhập sổ theo dõi ADR'),
(971, 'certificate_of_medicine_suspension_from_circulation', 'Certificate of drug medicine from circulation', 'Sổ thuốc đình chỉ lưu hành'),
(972, 'certificate_of_medicine_suspension_from_circulation', 'Certificate of drug medicine from circulation', 'Sổ thuốc đình chỉ lưu hành'),
(973, 'best_sales_of_month', 'Best Sales of Month', 'Bán chạy nhất trong tháng'),
(974, 'total_due_amount', 'Total due amount', 'Hóa đơn đến hạn'),
(975, 'select', 'Select', 'STT'),
(977, 'invoice_wise', '\r\nInvoice wise', 'Hóa đơn theo từng thời điểm'),
(979, 'today_is_profit', 'Today\'s Profit', 'Lợi nhuận trong ngày'),
(981, 'this_week_is_profit', 'This Week\'s Profit', 'Lợi nhuận trong tuần'),
(983, 'this_month_is_profit', 'This Month\'s Profit', 'Lợi nhuận trong tháng'),
(984, 'total_sale_price', 'Total Sale Price', 'Lợi nhuận của sản phẩm'),
(986, 'invoice_wise_report', 'Invoice Wise Report', 'theo từng thời điểm'),
(988, 'total_manufacturer_price', 'Total Manufacturer Price', 'Lợi nhuận của nhà sản xuất'),
(990, 'profit', 'Profit', 'Lợi nhuận'),
(991, 'profit', 'Profit', 'Lợi nhuận'),
(992, 'list_medicine_port', 'List medicine send port ', 'Danh sách thuốc gửi cổng'),
(993, 'list_medicine_port', 'List medicine send port ', 'Danh sách thuốc gửi cổng'),
(994, 'bill_code', 'BILL CODE', 'Mã hóa đơn'),
(995, 'bill_code', 'BILL CODE', 'Mã hóa đơn'),
(996, 'bill_code_QG', 'BILL CODE QG ', 'Mã hóa đơn QG'),
(997, 'bill_code_QG', 'BILL CODE QG ', 'Mã hóa đơn QG'),
(998, 'base_code', 'BASE CODE', 'Mã cơ sở'),
(1000, 'medicine_code_QG', 'MEDICINE CODE QG', 'Mã đơn thuốc QG'),
(1001, 'medicine_code_QG', 'MEDICINE CODE QG', 'Mã đơn thuốc QG'),
(1002, 'seller_name', 'SELLER NAME', 'Họ tên người bán'),
(1003, 'seller_name', 'SELLER NAME', 'Họ tên người bán'),
(1004, 'vote_number', 'VOTE NUMBER', 'Số phiếu'),
(1005, 'vote_number', 'VOTE NUMBER', 'Số phiếu'),
(1006, 'total_money', 'TOTAL MONEY', 'Tổng tiền'),
(1007, 'total_money', 'TOTAL MONEY', 'Tổng tiền'),
(1008, 'result', 'RESULT', 'Kết quả'),
(1009, 'result', 'RESULT', 'Kết quả'),
(1010, 'invoice_sell', 'INVOICE SELL', 'Hóa đơn bán hàng'),
(1011, 'invoice_sell', 'INVOICE SELL', 'Hóa đơn bán hàng'),
(1012, 'datalink_id', 'DATALINK ID', 'Nick name liên kết'),
(1013, 'datalink_id', 'DATALINK ID', 'Nick name liên kết');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturer_information`
--

CREATE TABLE `manufacturer_information` (
  `manufacturer_id` bigint(20) NOT NULL,
  `manufacturer_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `emailnumber` varchar(200) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `manufacturer_information`
--

INSERT INTO `manufacturer_information` (`manufacturer_id`, `manufacturer_name`, `address`, `address2`, `mobile`, `emailnumber`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `details`, `status`) VALUES
(111111, 'GiaThinh', 'Hà Nội', 'Hà Nội xịn ', '0999999999', '088888', 'hanoixin@gmail.com', '0999999999', '0999999', '0983123', 'Hà Nội', 'Hà Nội', 'Hà Nội', 'Việt Nam', 'Hà Nội - Việt Nam', 1),
(10101010, 'Mờ lem', 'Mờ lem Mờ lem', 'Hihihihi', '0909090909', '0909090909', 'Mlemmlem@gmail.com', 'mlem mlem', '0909090909', '0909090909', 'Hà Lội', 'Nhổn', 'mlem', 'Việt Nam', 'Khồng', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `medication_list_byt`
--

CREATE TABLE `medication_list_byt` (
  `id` int(11) NOT NULL,
  `listbyt_id` bigint(20) NOT NULL,
  `name_product` varchar(200) NOT NULL,
  `book` varchar(50) NOT NULL,
  `unit` int(11) NOT NULL,
  `count_input` int(11) NOT NULL,
  `count_output` int(11) NOT NULL,
  `cout_rest` int(11) NOT NULL,
  `number_shipment` bigint(20) NOT NULL,
  `expiry_date` date NOT NULL,
  `bill_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `medication_list_byt`
--

INSERT INTO `medication_list_byt` (`id`, `listbyt_id`, `name_product`, `book`, `unit`, `count_input`, `count_output`, `cout_rest`, `number_shipment`, `expiry_date`, `bill_id`) VALUES
(1, 123, 'thuốc giảm đau', 'thuốc ', 123, 32, 34, 12, 1, '2021-01-19', 111),
(2, 321, 'thuốc đau mắt', 'thuốc ', 2, 123, 21, 34, 12, '2021-01-10', 23),
(11, 3344, 'thuoc dau mat', 'thuoc', 12142, 3423, 32, 232, 23, '2021-01-21', 123),
(23, 123, 'thuốc giảm đau', 'thuốc', 1233, 123, 123, 23, 123, '2021-01-12', 23);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 'Invoice', '', '', 'invoice', 1),
(2, 'Customer', '', '', 'customer', 1),
(3, 'Medicine', '', '', 'medicine', 1),
(4, 'Manufacturer', '', '', 'manufacturer', 1),
(5, 'Purchase', '', '', 'purchase', 1),
(6, 'Stock', '', '', 'stock', 1),
(7, 'Return', '', '', 'return', 1),
(8, 'Report', '', '', 'report', 1),
(9, 'Accounts', '', '', 'accounts', 1),
(10, 'Bank', '', '', 'bank', 1),
(11, 'Tax', '', '', 'tax', 1),
(12, 'Human Resource', '', '', 'human_resource_info', 1),
(13, 'Supplier', '', '', 'supplier', 1),
(14, 'Service', '', '', 'service', 1),
(15, 'Search', '', '', 'search', 1),
(16, 'Settings', '', '', 'settings', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payroll_tax_setup`
--

CREATE TABLE `payroll_tax_setup` (
  `tax_setup_id` int(11) UNSIGNED NOT NULL,
  `start_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `end_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_loan`
--

CREATE TABLE `personal_loan` (
  `per_loan_id` int(11) NOT NULL,
  `transaction_id` varchar(30) NOT NULL,
  `person_id` varchar(30) NOT NULL,
  `debit` varchar(20) NOT NULL,
  `credit` float NOT NULL,
  `date` varchar(30) NOT NULL,
  `details` varchar(100) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `person_information`
--

CREATE TABLE `person_information` (
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(50) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `person_ledger`
--

CREATE TABLE `person_ledger` (
  `transaction_id` varchar(50) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `debit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `details` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pesonal_loan_information`
--

CREATE TABLE `pesonal_loan_information` (
  `id` int(11) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_information`
--

CREATE TABLE `product_information` (
  `id` int(11) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `category_id` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `generic_name` varchar(250) NOT NULL,
  `strength` varchar(250) NOT NULL,
  `box_size` varchar(30) NOT NULL,
  `product_location` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `product_model` varchar(50) DEFAULT NULL,
  `manufacturer_id` bigint(20) NOT NULL,
  `manufacturer_price` decimal(10,2) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `product_details` varchar(250) DEFAULT NULL,
  `image` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_purchase`
--

CREATE TABLE `product_purchase` (
  `chalan_no` varchar(100) NOT NULL,
  `manufacturer_id` varchar(100) NOT NULL,
  `grand_total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_discount` decimal(10,2) DEFAULT 0.00,
  `purchase_date` varchar(50) NOT NULL,
  `purchase_details` text NOT NULL,
  `status` int(2) NOT NULL,
  `id` int(11) NOT NULL,
  `purchase_id` varchar(30) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_purchase_details`
--

CREATE TABLE `product_purchase_details` (
  `purchase_detail_id` varchar(100) NOT NULL,
  `purchase_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `quantity` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) DEFAULT 0.00,
  `batch_id` varchar(25) NOT NULL,
  `expeire_date` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_return`
--

CREATE TABLE `product_return` (
  `id` int(11) NOT NULL,
  `return_id` varchar(30) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `purchase_id` varchar(30) DEFAULT NULL,
  `date_purchase` varchar(20) NOT NULL,
  `date_return` varchar(30) NOT NULL,
  `byy_qty` decimal(12,2) NOT NULL DEFAULT 0.00,
  `ret_qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `customer_id` varchar(20) NOT NULL,
  `manufacturer_id` varchar(30) NOT NULL,
  `product_rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `deduction` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_deduct` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_tax` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_ret_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `net_total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `reason` text NOT NULL,
  `usablity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_service`
--

CREATE TABLE `product_service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `type_id` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES
(2, 'X9W2Z8Q516LIBLI', 'Thuốc nhỏ mắt', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salary_sheet_generate`
--

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `gdate` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salary_type`
--

CREATE TABLE `salary_type` (
  `salary_type_id` int(11) NOT NULL,
  `sal_name` varchar(100) NOT NULL,
  `salary_type` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sec_role`
--

CREATE TABLE `sec_role` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sec_userrole`
--

CREATE TABLE `sec_userrole` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_invoice`
--

CREATE TABLE `service_invoice` (
  `id` int(11) NOT NULL,
  `voucher_no` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `total_amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_discount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `invoice_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `previous` decimal(10,2) NOT NULL DEFAULT 0.00,
  `details` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_invoice_details`
--

CREATE TABLE `service_invoice_details` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_inv_id` varchar(30) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL,
  `api_key` varchar(100) DEFAULT NULL,
  `api_secret` varchar(100) DEFAULT NULL,
  `from` varchar(100) DEFAULT NULL,
  `isinvoice` int(11) NOT NULL DEFAULT 0,
  `ispurchase` int(11) DEFAULT 0,
  `isservice` int(11) NOT NULL DEFAULT 0,
  `isreceive` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `api_key`, `api_secret`, `from`, `isinvoice`, `ispurchase`, `isservice`, `isreceive`) VALUES
(1, '60d6748a', 'NrW61s2AfTbgYkNk', 'isahaq', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stock_fixed_asset`
--

CREATE TABLE `stock_fixed_asset` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_module`
--

CREATE TABLE `sub_module` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `directory` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sub_module`
--

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 1, 'New Invoice', '', '', 'new_invoice', 1),
(2, 1, 'Manage Invoice', '', '', 'manage_invoice', 1),
(3, 1, 'POS INVOICE', '', '', 'pos_invoice', 1),
(4, 1, 'GUI POS', '', '', 'gui_pos', 1),
(5, 9, 'Chart Of Account', '', '', 'show_tree', 1),
(6, 9, 'Manufacturer Payment', '', '', 'manufacturer_payment', 1),
(7, 9, 'Supplier Payment', '', '', 'supplier_payment', 1),
(8, 9, 'Customer Receive', '', '', 'customer_receive', 1),
(9, 9, 'Debit Voucher', '', '', 'debit_voucher', 1),
(10, 9, 'Credit Voucher', '', '', 'credit_voucher', 1),
(11, 9, 'Contra Voucher', '', '', 'contra_voucher', 1),
(12, 9, 'Journal Voucher', '', '', 'journal_voucher', 1),
(13, 9, 'Voucher Approval', '', '', 'aprove_v', 1),
(14, 9, 'Report', '', '', 'ac_report', 1),
(15, 9, 'Cash Book', '', '', 'cash_book', 1),
(16, 9, 'Bank Book', '', '', 'bank_book', 1),
(17, 9, 'General Ledger', '', '', 'general_ledger', 1),
(18, 9, 'Inventory Ledger', '', '', 'Inventory_ledger', 1),
(19, 9, 'Cash Flow', '', '', 'cash_flow_report', 1),
(20, 9, 'Profit Loss Statement', '', '', 'profit_loss_report', 1),
(21, 9, 'Trial Balance', '', '', 'trial_balance', 1),
(22, 3, 'Category', '', '', 'add_category', 1),
(23, 3, 'Medicine Type', '', '', 'medicine_type', 1),
(24, 3, 'Add Medicine', '', '', 'add_medicine', 1),
(25, 3, 'Import Medicine(CSV)', '', '', 'import_medicine_csv', 1),
(26, 3, 'Manage Medicine', '', '', 'manage_medicine', 1),
(27, 2, 'Add Customer', '', '', 'add_customer', 1),
(28, 2, 'Manage Customer', '', '', 'manage_customer', 1),
(29, 2, 'Credit Customer', '', '', 'credit_customer', 1),
(30, 2, 'Paid Customer', '', '', 'paid_customer', 1),
(31, 4, 'Add Manufacturer', '', '', 'add_manufacturer', 1),
(32, 4, 'Manage Manufacturer', '', '', 'manage_manufacturer', 1),
(33, 4, 'Manufacturer Ledger', '', '', 'manufacturer_ledger', 1),
(34, 4, 'Manufacturer Sales Details', '', '', 'manufacturer_sales_details', 1),
(35, 5, 'Add Purchase', '', '', 'add_purchase', 1),
(36, 5, 'Manage Purchase', '', '', 'manage_purchase', 1),
(37, 12, 'Add Designation', '', '', 'add_designation', 1),
(38, 12, 'Manage Designation', '', '', 'manage_designation', 1),
(39, 12, 'Add Employee', '', '', 'add_employee', 1),
(40, 12, 'Manage Employee', '', '', 'manage_employee', 1),
(41, 12, 'Add Attendance', '', '', 'add_attendance', 1),
(42, 12, 'Manage Attendance', '', '', 'manage_attendance', 1),
(43, 12, 'Attendance Report', '', '', 'attendance_report', 1),
(44, 12, 'Add Benefits', '', '', 'add_benefits', 1),
(45, 12, 'Manage Benefits', '', '', 'manage_benefits', 1),
(46, 12, 'Add Salary Setup', '', '', 'add_salary_setup', 1),
(47, 12, 'Manage Salary Setup', '', '', 'manage_salary_setup', 1),
(48, 12, 'Salary Generate', '', '', 'salary_generate', 1),
(49, 12, 'Manage Salary Generate', '', '', 'manage_salary_generate', 1),
(50, 12, 'Salary Payment', '', '', 'salary_payment', 1),
(51, 12, 'Add Expense Item', '', '', 'add_expense_item', 1),
(52, 12, 'Manage Expense Item', '', '', 'manage_expense_item', 1),
(53, 12, 'Add Expense', '', '', 'add_expense', 1),
(54, 12, 'Manage Expense', '', '', 'manage_expense', 1),
(55, 12, 'Add Fixed Assets', '', '', 'add_fixed_assets', 1),
(56, 12, 'Fixed Asset List', '', '', 'fixed_assets_list', 1),
(57, 12, 'Purchase Fixed Assets', '', '', 'fixed_assets_purchase', 1),
(58, 12, 'Fixed Asset Purchase List', '', '', 'fixed_assets_purchase_manage', 1),
(59, 16, 'Manage Company', '', '', 'manage_company', 1),
(60, 7, 'Return', '', '', 'return', 1),
(61, 7, 'Stock Return List', '', '', 'stock_return_list', 1),
(62, 7, 'Manufacturer Return List', '', '', 'manufacturer_return_list', 1),
(63, 7, 'Wastage Return List', '', '', 'wastage_return_list', 1),
(64, 15, 'Medicine', '', '', 'medicine_search', 1),
(65, 15, 'Customer', '', '', 'customer_search', 1),
(66, 15, 'Invoice', '', '', 'invoice_search', 1),
(67, 15, 'Purchase', '', '', 'purcahse_search', 1),
(68, 14, 'Add Service', '', '', 'create_service', 1),
(69, 14, 'Manage Service', '', '', 'manage_service', 1),
(70, 14, 'Service Invoice', '', '', 'service_invoice', 1),
(71, 14, 'Manage Service Invoice', '', '', 'manage_service_invoice', 1),
(72, 11, 'Tax Settings', '', '', 'tax_settings', 1),
(73, 11, 'Add Income Tax', '', '', 'add_incometax', 1),
(74, 11, 'Manage Income Tax', '', '', 'manage_income_tax', 1),
(75, 11, 'Tax Report', '', '', 'tax_report', 1),
(76, 11, 'Invoice Wise Tax Report', '', '', 'invoice_wise_tax_report', 1),
(77, 6, 'Stock Report', '', '', 'stock_report', 1),
(80, 6, 'Stock Report(Batch Wise)', '', '', 'stock_report_batch_wise', 1),
(81, 8, 'Today\'s Report', '', '', 'todays_report', 1),
(82, 8, 'Sales Report', '', '', 'sales_report', 1),
(83, 8, 'Purchase Report', '', '', 'purchase_report', 1),
(84, 8, 'Sales Report(Medicine Wise)', '', '', 'sales_report_medicine_wise', 1),
(85, 8, 'Profit/Loss', '', '', 'profit_loss', 1),
(86, 10, 'Add New Bank', '', '', 'add_new_bank', 1),
(87, 10, 'Bank Transaction', '', '', 'bank_transaction', 1),
(88, 10, 'Manage Bank', '', '', 'manage_bank', 1),
(89, 12, 'Add Person(Personal Loan)', '', '', 'office_add_person', 1),
(90, 12, 'Manage Person(Personal Loan)', '', '', 'office_manage_loan', 1),
(91, 12, 'Add Person(Office Loan)', '', '', 'personal_add_person', 1),
(92, 12, 'Add Loan(Office Loan)', '', '', 'personal_add_loan', 1),
(93, 12, 'Add Payment(Office Loan)', '', '', 'personal_add_payment', 1),
(94, 12, 'Manage Loan(Office Loan)', '', '', 'personal_manage_loan', 1),
(95, 16, 'Add User', '', '', 'add_user', 1),
(96, 16, 'Manage Users', '', '', 'manage_users', 1),
(97, 16, 'Lanaguage', '', '', 'language', 1),
(98, 16, 'Currency', '', '', 'currency', 1),
(99, 16, 'Web Setting', '', '', 'soft_setting', 1),
(100, 16, 'Add Role', '', '', 'add_role', 1),
(101, 16, 'Role List', '', '', 'role_list', 1),
(102, 16, 'Assign User Role', '', '', 'user_assign_role', 1),
(103, 16, 'Permission', '', '', 'permission', 1),
(104, 16, 'SMS', '', '', 'configure_sms', 1),
(105, 3, 'Add Unit', '', '', 'add_unit', 1),
(106, 3, 'Unit List', '', '', 'unit_list', 1),
(107, 13, 'Add Supplier', '', '', 'add_supplier', 1),
(108, 13, 'Manage Supplier', '', '', 'manage_supplier', 1),
(109, 13, 'Supplier Ledger', '', '', 'supplier_ledger', 1),
(110, 9, 'COA Print', '', '', 'coa_print', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier_information`
--

CREATE TABLE `supplier_information` (
  `id` int(11) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier_ledger`
--

CREATE TABLE `supplier_ledger` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `chalan_no` varchar(100) DEFAULT NULL,
  `deposit_no` varchar(50) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `description` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `cheque_no` varchar(255) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `d_c` varchar(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `synchronizer_setting`
--

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tax_collection`
--

CREATE TABLE `tax_collection` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `relation_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tax_information`
--

CREATE TABLE `tax_information` (
  `tax_id` varchar(15) NOT NULL,
  `tax` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tax_settings`
--

CREATE TABLE `tax_settings` (
  `id` int(11) NOT NULL,
  `default_value` float NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `nt` int(11) NOT NULL,
  `reg_no` varchar(100) DEFAULT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `unit`
--

INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES
(1, 'Áá', 1),
(2, 'Áá', 1),
(3, 'Áá', 1),
(4, 'Áá', 1),
(5, 'Áá', 1),
(6, 'Áá', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` int(2) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES
(1, '2', 'User', 'Admin', NULL, NULL, NULL, NULL, NULL, 'http://localhost/saleserp_v9.8/assets/dist/img/profile_picture/profile.jpg', 1),
(2, '1', 'User', 'Admin', NULL, NULL, NULL, NULL, NULL, 'https://phanmen.duocthien.com.vn/assets/dist/img/profile_picture/profile.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(2) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_login`
--

INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES
(1, '2', 'admin@example.com', '41d99b369894eb1ec3f461135132d8bb', 1, NULL, 1),
(2, '1', 'duocthien@gmail.com', '7c4159c167554862691ac86f09530d89', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `web_setting`
--

CREATE TABLE `web_setting` (
  `setting_id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `invoice_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(200) DEFAULT NULL,
  `currency_position` varchar(10) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rtr` varchar(255) DEFAULT NULL,
  `captcha` int(11) DEFAULT 1 COMMENT '0=active,1=inactive',
  `site_key` varchar(250) DEFAULT NULL,
  `secret_key` varchar(250) DEFAULT NULL,
  `discount_type` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `web_setting`
--

INSERT INTO `web_setting` (`setting_id`, `logo`, `invoice_logo`, `favicon`, `currency`, `timezone`, `currency_position`, `footer_text`, `language`, `rtr`, `captcha`, `site_key`, `secret_key`, `discount_type`) VALUES
(1, 'https://phanmen.duocthien.com.vn/./my-assets/image/logo/1ab32ba1e993034b7de2afbf2e59da60.png', 'https://phanmen.duocthien.com.vn/./my-assets/image/logo/e805a4bd2ccd110b27809c860f2a2fba.png', 'https://phanmen.duocthien.com.vn/my-assets/image/logo/b7505713dcd3124030f12822440e33cc.png', 'đ', 'Asia/Hong_Kong', '0', 'Copyright@2020 Konpani. All rights reserved.', 'vi', '0', 1, '', '', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `acc_coa`
--
ALTER TABLE `acc_coa`
  ADD PRIMARY KEY (`HeadName`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `HeadCode` (`HeadCode`);

--
-- Chỉ mục cho bảng `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `COAID` (`COAID`);

--
-- Chỉ mục cho bảng `asset_purchase`
--
ALTER TABLE `asset_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`att_id`);

--
-- Chỉ mục cho bảng `bank_add`
--
ALTER TABLE `bank_add`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `company_information`
--
ALTER TABLE `company_information`
  ADD PRIMARY KEY (`company_id`);

--
-- Chỉ mục cho bảng `currency_tbl`
--
ALTER TABLE `currency_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer_information`
--
ALTER TABLE `customer_information`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `daily_closing`
--
ALTER TABLE `daily_closing`
  ADD PRIMARY KEY (`closing_id`);

--
-- Chỉ mục cho bảng `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `employee_history`
--
ALTER TABLE `employee_history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  ADD PRIMARY KEY (`emp_sal_pay_id`);

--
-- Chỉ mục cho bảng `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  ADD PRIMARY KEY (`e_s_s_id`);

--
-- Chỉ mục cho bảng `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `expense_item`
--
ALTER TABLE `expense_item`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fixed_assets`
--
ALTER TABLE `fixed_assets`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `invoice` (`invoice`);

--
-- Chỉ mục cho bảng `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `batch_id` (`batch_id`);

--
-- Chỉ mục cho bảng `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `manufacturer_information`
--
ALTER TABLE `manufacturer_information`
  ADD PRIMARY KEY (`manufacturer_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Chỉ mục cho bảng `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  ADD PRIMARY KEY (`tax_setup_id`);

--
-- Chỉ mục cho bảng `personal_loan`
--
ALTER TABLE `personal_loan`
  ADD PRIMARY KEY (`per_loan_id`);

--
-- Chỉ mục cho bảng `person_information`
--
ALTER TABLE `person_information`
  ADD PRIMARY KEY (`person_id`);

--
-- Chỉ mục cho bảng `pesonal_loan_information`
--
ALTER TABLE `pesonal_loan_information`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `product_information`
--
ALTER TABLE `product_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Chỉ mục cho bảng `product_purchase`
--
ALTER TABLE `product_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Chỉ mục cho bảng `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `batch_id` (`batch_id`);

--
-- Chỉ mục cho bảng `product_return`
--
ALTER TABLE `product_return`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_service`
--
ALTER TABLE `product_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_module_id` (`fk_module_id`),
  ADD KEY `fk_user_id` (`role_id`);

--
-- Chỉ mục cho bảng `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  ADD PRIMARY KEY (`ssg_id`);

--
-- Chỉ mục cho bảng `salary_type`
--
ALTER TABLE `salary_type`
  ADD PRIMARY KEY (`salary_type_id`);

--
-- Chỉ mục cho bảng `sec_role`
--
ALTER TABLE `sec_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sec_userrole`
--
ALTER TABLE `sec_userrole`
  ADD UNIQUE KEY `ID` (`id`);

--
-- Chỉ mục cho bảng `service_invoice`
--
ALTER TABLE `service_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `service_inv_id` (`service_inv_id`);

--
-- Chỉ mục cho bảng `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `stock_fixed_asset`
--
ALTER TABLE `stock_fixed_asset`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sub_module`
--
ALTER TABLE `sub_module`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supplier_information`
--
ALTER TABLE `supplier_information`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supplier_ledger`
--
ALTER TABLE `supplier_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `synchronizer_setting`
--
ALTER TABLE `synchronizer_setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tax_collection`
--
ALTER TABLE `tax_collection`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tax_information`
--
ALTER TABLE `tax_information`
  ADD PRIMARY KEY (`tax_id`);

--
-- Chỉ mục cho bảng `tax_settings`
--
ALTER TABLE `tax_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `web_setting`
--
ALTER TABLE `web_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `asset_purchase`
--
ALTER TABLE `asset_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bank_add`
--
ALTER TABLE `bank_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `currency_tbl`
--
ALTER TABLE `currency_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `customer_information`
--
ALTER TABLE `customer_information`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `employee_history`
--
ALTER TABLE `employee_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  MODIFY `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  MODIFY `e_s_s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `expense_item`
--
ALTER TABLE `expense_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `fixed_assets`
--
ALTER TABLE `fixed_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1014;

--
-- AUTO_INCREMENT cho bảng `manufacturer_information`
--
ALTER TABLE `manufacturer_information`
  MODIFY `manufacturer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10101011;

--
-- AUTO_INCREMENT cho bảng `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  MODIFY `tax_setup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_loan`
--
ALTER TABLE `personal_loan`
  MODIFY `per_loan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pesonal_loan_information`
--
ALTER TABLE `pesonal_loan_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_information`
--
ALTER TABLE `product_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_purchase`
--
ALTER TABLE `product_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_return`
--
ALTER TABLE `product_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_service`
--
ALTER TABLE `product_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  MODIFY `ssg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `salary_type`
--
ALTER TABLE `salary_type`
  MODIFY `salary_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sec_role`
--
ALTER TABLE `sec_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sec_userrole`
--
ALTER TABLE `sec_userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service_invoice`
--
ALTER TABLE `service_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `stock_fixed_asset`
--
ALTER TABLE `stock_fixed_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sub_module`
--
ALTER TABLE `sub_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT cho bảng `supplier_information`
--
ALTER TABLE `supplier_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `supplier_ledger`
--
ALTER TABLE `supplier_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `synchronizer_setting`
--
ALTER TABLE `synchronizer_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tax_collection`
--
ALTER TABLE `tax_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tax_settings`
--
ALTER TABLE `tax_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `web_setting`
--
ALTER TABLE `web_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

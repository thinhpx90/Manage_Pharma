<section class='content-wrapper'>
    <div class='content'>
        <div class='row form-bar'>
        <!-- Thanh tên form và các button hàng trên cùng -->
            <div class='form-bar-tilte'>
               <h4>DANH SÁCH NHẬP HÀNG TỪ NHÀ CUNG CẤP</h4>
            </div>
            <div class='form-bar-buttons' style="float: right;">
                <button class="button">Thêm mới</button>
                <button class="button">Chi trả / thu tiền</button>
                <button class="button">Phiếu nháp</button>
                <button class="button">Nhân bản phiếu nhập</button>
                <button class="button">Phiếu xuất Excel</button>
            </div>
        </div>
        <!-- nội dung option tìm kiếm và bảng hiển thị dữ liệu -->
        <div class='col-md-12 form-date'>
            <div class="form-date-start col-md-05" style="float: left; display: inline;">
                <h5>Từ ngày</h5>
                <div class="date-start col-md-02">
                    <input type="" name="">
                    <span><i class="fa fa-calendar" aria-hidden="true"></i></span>
                </div>
            </div>
            <div class="form-date-end col-md-05" style="float: right;">
                <div class="date-title col-md-02">
                    <h5>Đến ngày</h5>
                </div>
                <div class="date-end col-md-02">
                    <input type="" name="">
                    <span><i class="fa fa-calendar" aria-hidden="true"></i></span>
                </div>
            </div>
        </div>
        <div class="content form-search"></div>
        <div class="content form-table"></div>
    </div>
</section>
<style type="text/css">
    .form-bar{
        height: 30px;
    }
    .form-bar-tilte{
        float: left;
    }
    .form-bar-button{
        
    }
    .button{
        background-color: #006B39;
        color: white;
    }
    .form-date{
        vertical-align: middle;
        background-color: #000000;
    }
    .form-date-start .form-date-end {
        width: 200px;
        display: inline;
    }
</style>
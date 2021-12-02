<div class="content-wrapper">
    <div class="box-header with-border responsive-nhapkho">
        
    </div>
    <section class="content">
        <!-- Alert Message -->
        <?php
            $message = $this->session->userdata('message');
            if (isset($message)) {
        ?>
        <div class="alert alert-info alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?php echo $message ?>
        </div>
        <?php
            $this->session->unset_userdata('message');
            }
            $error_message = $this->session->userdata('error_message');
            if (isset($error_message)) {
        ?>
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?php echo $error_message ?>
        </div>
        <?php
            $this->session->unset_userdata('error_message');
            }
        ?>


        <!-- Manage Product report -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title" style="padding-bottom:40px">
                            <h4 class="box-title tex-bold col-md-5">DANH SÁCH NHẬP KHO BAN ĐẦU</h4>
                            <div class="box-tools pull-right dropdown">
                                <button id="btnInsertNhapKho" data-permission="New" type="button" class="btn btn-success">Thêm mới</button>
                                <button id="btnNhapTuXuat" type="button" data-permission="Approved" class="btn btn-success" style="display: none;">Nhập từ chứng từ xuất&nbsp;<span class="badge">0</span></button>
                                <button id="btn-phieunhap-nhap" type="button" class="btn btn-success">Phiếu nháp&nbsp;<span class="badge">0</span></button>
                                <button id="btn-phieunhap-nhanban" type="button" class="btn btn-success">Nhân bản phiếu nhập</button>
                                <button id="btn-phieuxuat-excel" type="button" class="btn btn-success">Phiếu xuất Excel&nbsp;</button>
                                <button id="btn-danhsachdutru-excel" type="button" class="btn btn-success" style="display: none;">Danh sách dự trù Excel&nbsp;</button>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="padding-top:10px">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="start">Từ ngày:</label> 
                                <input class="col-md-3" type="date" id="start" name="trip-start" value="2018-07-22" min="2021-02-26" max="2050-12-31">
                                <label class="col-md-1 control-label" for="stop">Đến ngày:</label> 
                                <input class="col-md-3" type="date" id="stop" name="trip-stop" value="2018-07-22" min="2021-02-26" max="2050-12-31">
                            </div>
                        </div>    
                    </div>
                    <div class="row" style="padding-top:10px">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="col-md-2 control-label">Trạng thái duyệt</label>
                                <div>
                                    <select class="col-md-3" id="cboTrangThai" data-select="" name="cboType" class="form-control select2-hidden-accessible" data-batbuoc="true" data-msg="trạng thái duyệt" tabindex="-1" aria-hidden="true">
                                    <option value="-1" selected="selected">Tất cả</option>
                                    <option value="3">Đã duyệt</option>
                                    <option value="5">Không duyệt</option>
                                    <option value="19">Chưa duyệt</option>
                                    <option value="34">Chờ duyệt</option>
                                    </select>
                                    <label id="lbl_cboTrangThai" hidden="" class="error_msg"></label>
                                </div>
                                <button type="button" class="btn btn-success" onclick="loadGridDanhSachNhap()" style="margin-left:10px;">Tìm kiếm</button>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered" cellspacing="0"  id="CreditCustomerList"> 
                                <thead>
                                    <tr>
                                        <th><?php echo('check') ?></th>
                                        <th><?php echo('STT') ?></th>
                                        <th><?php echo('Trạng thái') ?></th>
                                        <th><?php echo('Số phiếu nhập'); ?></th>
                                        <th><?php echo('Ngày nhập'); ?></th>
                                        <th><?php echo('Tổng tiền') ?></th>
                                        <th><?php echo('Thành tiền bán'); ?></th>
                                        <th><?php echo('Trạng thái'); ?></th>
                                        <th><?php echo('Nhân viên') ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                  
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th colspan="7" class="text-right"><?php echo('total') ?>:</th>
                                    <th id="totalbalance"></th>
                                    <th></th>
                                </tr>
                                    </tfoot> 
                            </table>
                        </div>
                    </div>
                    <input type="hidden" name="" id="total_credit_customer" value="<?php echo html_escape($total_customer);?>">
                    <input type="hidden" id="currency" value="{currency}" name="">
                </div>
            </div>
        </div>
    </section>
</div>
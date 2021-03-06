<!-- DS báo nợ công KH Start -->
<div class="content-wrapper">
    <section class="content-header">
        
        <div class="header-title form-group" style="padding-top: 15px">
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('customer') ?></a></li>
                <li class="active"><?php echo display('customer_ledger') ?></li>
            </ol>
        </div>
    </section>

    <!-- -->
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

        <div class="row">
            <div class="col-sm-12">
            <!-- Phần tiêu đề form và các nút chọn trên cùng -->
            <!-- fix this data area -->
            <!-- sửa đường dẫm và các permission tương ứng -->
                
            </div>
        </div>
<!-- Phần các lựa chọn tìm kiếm và lựa chọn về ngày tháng -->
<!-- fix this data area -->
<!-- sửa đường dẫn, hàm truy vấn cho lựa chọn tìm kiếm -->
             <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd">
                    <div class="panel-heading">
                        <h4>BÁO CÁO CÁO SỐ LIỆU HẰNG THÁNG</h4>
                    </div>
                    <div class="panel-body"> 
                        <?php echo form_open('Ccustomer/customer_ledgerData', array('class' => '', 'id' => 'validate')) ?>
                        <?php $today = date('Y-m-d'); ?>
                        
                        <div class="col-sm-10">
                            <div class="form-group row">
                                <label for="from_date " class="col-sm-2 col-form-label"> <?php echo('Từ ngày') ?><i class="text-danger">*</i></label>
                                <div class="col-sm-4">
                                    <input type="text" name="from_date"  value="<?php echo (!empty($start)?$start:$today); ?>" class="datepicker form-control" id="from_date"/>
                                </div>
                                <label for="to_date" class="col-sm-2 col-form-label"> <?php echo('Đến ngày') ?><i class="text-danger">*</i></label>
                                <div class="col-sm-4">
                                    <input type="text" name="to_date" value="<?php echo (!empty($end)?$end:$today); ?>" class="datepicker form-control" id="to_date"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-10">
                            <div class="form-group row">
                                <label for="customer_name" class="col-sm-2 col-form-label"><?php echo('Nhân viên') ?> <i class="text-danger">*</i></label>
                                <div class="col-sm-4">
                                    <select name="customer_id"  class="form-control" required="">
                                        <option value=""></option>
                                       <?php foreach($customer as $customers){?>
                                        <option value="<?php echo html_escape($customers['customer_id'])?>"  <?php if($customers['customer_id'] == $customer_id){echo 'selected';}?>><?php echo html_escape($customers['customer_name'])?></option>
                                       <?php }?>
                                    </select>
                                </div>
                                <label for="customer_name" class="col-sm-2 col-form-label"><?php echo('Ca làm việc') ?> <i class="text-danger">*</i></label>
                                <div class="col-sm-4">
                                    <select name="customer_id"  class="form-control" required="">
                                        <option value=""></option>
                                       <?php foreach($customer as $customers){?>
                                        <option value="<?php echo html_escape($customers['customer_id'])?>"  <?php if($customers['customer_id'] == $customer_id){echo 'selected';}?>><?php echo html_escape($customers['customer_name'])?></option>
                                       <?php }?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-10">
                            <div class="form-group row">
                                <button type="submit" class="btn btn-success col-sm-3 col-form-label"><i class="fa fa-search-plus" aria-hidden="true"></i> <?php echo display('search') ?></button>
                                
                            </div>
                            
                        </div>
                        
                        <?php echo form_close() ?>
                    </div>
                    <div class="form-group row panel-body" align="right">
                        <button type="submit" class="btn btn-success col-form-label"><i class="fa fa-plus" aria-hidden="true"></i></button>
                        <button type="submit" class="btn btn-success col-form-label"><i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                        <button type="submit" class="btn btn-success col-form-label"><i class="fa fa-undo" aria-hidden="true"></i></button>
                        <button type="button" class="btn btn-warning" ><?php echo('Xuất Excel tất cả') ?></button>
                            
                        </div>
                </div>
            </div>
        </div>

        <!-- bảng dữ liệu hiển thị -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    
                    <div class="panel-body">
                        <div id="printableArea">

<!-- fix this data area -->
                            <!-- <?php if ($customer_name) { ?>
                                <div class="text-center">
                                    <h3> {customer_name} </h3>
                                    <h4><?php echo display('address') ?> : {address} </h4>
                                    <h4> <?php echo display('print_date') ?>: <?php echo date("d/m/Y h:i:s"); ?> </h4>
                                </div>
                            <?php } ?> -->


                            <div class=""></div>
                            <div class="table-responsive">

                                <table class="table table-bordered table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <!-- checkbox để tạm -->
                                            <th class="text-center"><?php echo('Ngày') ?></th>
                                            <th class="text-center"><?php echo('Thời gian từ') ?></th>
                                            <th class="text-center"><?php echo('Thời gian đến') ?></th>
                                            <th class="text-center"><b><?php echo('Tổng thu') ?></b></th>
                                            <th class="text-center"><?php echo('VN Pay') ?></th>
                                            <th class="text-center"><?php echo('Quẹt thẻ / Chuyển khoản') ?></th>
                                            <th class="text-center"><b><?php echo('Tổng ghi') ?></b></th>
                                            <th class="text-center"><?php echo('Giá đỏ') ?></th>
                                            <th class="text-center"><?php echo('Giá trắng') ?></th>
                                            <th class="text-center"><?php echo('Công ty') ?></th>
                                            <th class="text-center"><?php echo('Giá xanh') ?></th>
                                            <th class="text-center"><?php echo('Chi tại CH') ?></th>
                                            <th class="text-center"><?php echo('Nhập lại thuốc') ?></th>
                                            <th class="text-center"><?php echo('Tiền giảm') ?></th>
                                            <th class="text-center"><?php echo('Lý do chi / Ghi chú') ?></th>
                                            <th class="text-center"><?php echo('Tổng còn lại') ?></th>
                                            <th class="text-center"><b><?php echo('Tiền chênh lệch') ?></b></th>
                                            <th class="text-center"><?php echo('Người bán') ?></th>
                                            <th class="text-center"><?php echo('Ca') ?></th>
                                            <th class="text-center"><?php echo('Trạng thái') ?></th>
                                            <th class="text-center"><?php echo('Thao tác') ?></th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>

                                    <!-- Dữ liệu bảng hiển thị -->
                                    <!-- fix this data area -->
                                    <!-- sửa truy vấn -->
                                        <!-- <?php
                                        if ($ledgers) {
                                            $sl = 0;
                                            $debit = $credit = $balance = 0;
                                            foreach ($ledgers as $ledger) {
                                                $sl++;
                                                ?>
                                                <tr>
                                                    <td class="text-center"><?php echo html_escape($ledger['VDate']); ?></td>
                                                    <td><?php echo html_escape($ledger['Narration']); ?></td>
                                                    <td>
                                                 
                                                    <?php echo html_escape($ledger['VNo']); ?>
                                                </td>
                                                   
                                                    <td align="right">
                                                        <?php
                                                        
                                                            echo (($position == 0) ? "$currency " : " $currency");
                                                            echo html_escape(number_format($ledger['Debit'], 2, '.', ','));
                                                            $debit += $ledger['Debit'];
                                                       
                                                        ?>
                                                    </td>
                                                    <td align="right">
                                                        <?php
                                                        
                                                            echo (($position == 0) ? "$currency " : " $currency");
                                                            echo html_escape(number_format($ledger['Credit'], 2, '.', ','));
                                                            $credit += $ledger['Credit'];
                                                      
                                                        ?>
                                                    </td>
                                                    <td align='right'>
                                                        <?php
                                                        $balance = $debit - $credit;
                                                        echo (($position == 0) ? "$currency " : " $currency");
                                                        echo html_escape(number_format($balance, 2, '.', ','));
                                                        ?>
                                                    </td>
                                                </tr>
                                                <?php
                                            }
                                        }else{
                                        ?>
                                        <tr><td colspan="6"><center>No Record Found</center></td></tr>
                                        
                                        <?php }?> -->
                                    
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="3" align="left"><b><?php echo('Tổng:') ?></b></td>
                                            <td colspan="1" align="left">0</td>
                                            <td colspan="1" align="left">0</td>
                                            <td colspan="1" align="left">0</td>
                                            <td colspan="1" align="left">0</td>
                                            <td colspan="1" align="left">0</td>
                                            <td colspan="1" align="left">0</td>
                                            <td colspan="1" align="left">0</td>
                                            <td colspan="1" align="left">0</td>
                                            <td colspan="1" align="left">0</td>
                                            <td colspan="1" align="left">0</td>
                                            <td colspan="2" align="left">0</td>
                                            <td colspan="1" align="left">0</td>
                                            <td colspan="1" align="left">0</td>
                                            <td colspan="4" align="left"></td>
                                            
                                                                             
                                            
                                            <!-- fix this data area -->
                                                <!-- <b><?php
                                                echo (($position == 0) ? "$currency " : "$currency");
                                                echo html_escape(number_format((@$debit), 2, '.', ','));
                                                ?></b> -->
                                            
                                            
                                            <!-- fix this data area -->
                                            <!-- <b><?php
                                                    echo (($position == 0) ? "$currency " : "$currency");
                                                    echo html_escape(number_format((@$credit), 2, '.', ','));
                                                    ?></b> -->
                                            
                                            
                                            <!-- fix this data area -->
                                            <!-- <b><?php
                                                    echo (($position == 0) ? "$currency " : "$currency");
                                                    echo html_escape(number_format((@$balance), 2, '.', ','));
                                                    ?></b></td> -->
                                        </tr>
                                    </tfoot>
                                </table>
                                
                            </div>
                        </div>
                        <!-- fix this data area -->
                        <!-- <div class="text-right">  <?php echo htmlspecialchars_decode($links)?></div> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

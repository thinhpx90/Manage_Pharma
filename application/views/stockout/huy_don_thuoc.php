<!-- Điều chuyển kho Start -->
<div class="content-wrapper">
    <section class="content-header">
        
        <div class="header-title form-group" style="padding-top: 20px">
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('customer') ?></a></li>
                <li class="active"><?php echo display('customer_ledger') ?></li>
            </ol>
        </div>
    </section>

    <!-- danh sách xuất kho ban đầu -->
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

        
<!-- Phần lựa chọn tìm kiếm và 2 lựa chọn về ngày tháng -->
<!-- fix this data area -->
<!-- sửa đường dẫn, hàm truy vấn cho lựa chọn tìm kiếm -->
             <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd">
                    <div class="panel-heading">
                        <h3 class="col-sm-5" align="left">HỦY ĐƠN THUỐC</h3>
                        <div class="col-sm-7" align="right">
            <!-- Phần tiêu đề form và 4 nút chọn trên cùng -->
            <!-- fix this data area -->
            <!-- sửa đường dẫm và các permission tương ứng -->
                
                    </div>
                        <br>
                        <br>
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
                                <label for="customer_name" class="col-sm-2 col-form-label"><?php echo('Số đơn') ?> <i class="text-danger">*</i></label>
                                <div class="col-sm-4">
                                    <input class="form-control" name ="amount" id="amount" type="text" placeholder="<?php echo display('amount') ?>" required min="0" tabindex="3">
                                 </div>
                                <label for="customer_name" class="col-sm-2 col-form-label"><?php echo('Trạng thái') ?> <i class="text-danger">*</i></label>
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

                        <div class="col-sm-10" >
                            <div class="form-group row">
                                <div class="col-sm-8" align="right" style="padding-top: 20px">
                                    <button type="submit" class="btn btn-success col-sm-5 col-form-label"><i class="fa fa-search-plus" aria-hidden="true"></i> <?php echo display('search') ?></button>
                                </div>
                            </div>
                        </div>
                        
                        <?php echo form_close() ?>
                    </div>
                    <div class="form-group row panel-body" align="right" style="padding-right: 45px">
                            <!-- <button type="submit" class="btn btn-success "><i class="dx-icon dx-icon-column-chooser" aria-hidden="true"></i> <?php echo('Chọn cột hiển thị') ?></button>
                            <button type="button" class="btn btn-warning"  onclick="printDiv('printableArea')"><?php echo display('print') ?></button> -->
                                
                            <!-- <button type="submit" class="btn btn-success "><i class="" aria-hidden="true"></i> <?php echo('Hủy') ?></button> -->
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
                            <!-- <?php if ($customer_name) { ?> -->
                                <div class="text-center">
                                    <!-- <h3> {customer_name} </h3> -->
                                    <!-- <h4><?php echo display('address') ?> : {address} </h4> -->
                                    <h4><?php echo ('DANH SÁCH HỦY ĐƠN THUỐC') ?> </h4>
                                    <!-- <h4> <?php echo display('print_date') ?>: <?php echo date("d/m/Y h:i:s"); ?> </h4> -->
                                </div>
                            <!-- <?php } ?> -->


                            <div class=""></div>
                            <div class="table-responsive">
                            <h3 class="col-sm-4" align="left">DANH SÁCH HỦY ĐƠN THUỐC</h3>
                            <br>
                            <br>
                            <div class="form-group row panel-body" align="right" style="padding-right: 45px">
                            <button type="submit" class="btn btn-success "><i class="dx-icon dx-icon-column-chooser" aria-hidden="true"></i> <?php echo('Chọn cột hiển thị') ?></button>
                            <button type="button" class="btn btn-warning"  onclick="printDiv('printableArea')"><?php echo display('print') ?></button>   
                            <button type="submit" class="btn btn-success "><i class="" aria-hidden="true"></i> <?php echo('Hủy') ?></button>
                    </div>
                            <br>
                            <br>
                                <table class="table table-bordered table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <!-- checkbox để tạm -->
                                            <th class="text-center"><?php echo('Ngày kê') ?></th>
                                            <th class="text-center"><?php echo('Số đơn') ?></th>
                                            <th class="text-center"><?php echo('Mã thuốc') ?></th>
                                            <th class="text-center"><?php echo('Tên thuốc') ?></th>
                                            <th class="text-center"><?php echo('Đơn vị') ?></th>
                                            <th class="text-center"><?php echo('Số lượng') ?></th>
                                            <th class="text-center"><?php echo('Nhóm thuốc') ?></th>
                                            <th class="text-center"><?php echo('Bác sĩ kê') ?></th>
                                            <th class="text-center"><?php echo('Trạng thái') ?></th>
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
                                            
                                            
                                            <!-- fix this data area -->
                                                <!-- <b><?php
                                                echo (($position == 0) ? "$currency " : "$currency");
                                                echo html_escape(number_format((@$debit), 2, '.', ','));
                                                ?></b> -->
                                            </td>
                                            
                                            <!-- fix this data area -->
                                            <!-- <b><?php
                                                    echo (($position == 0) ? "$currency " : "$currency");
                                                    echo html_escape(number_format((@$credit), 2, '.', ','));
                                                    ?></b> -->
                                            </td>
                                            
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

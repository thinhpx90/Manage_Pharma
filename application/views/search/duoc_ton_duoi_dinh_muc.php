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
                           
        
<!-- Phần các lựa chọn tìm kiếm và lựa chọn về ngày tháng -->
<!-- fix this data area -->
<!-- sửa đường dẫn, hàm truy vấn cho lựa chọn tìm kiếm -->
             

        <!-- bảng dữ liệu hiển thị -->
        <div class="row">
            <div class="form-group row panel-body" align="center">
                
                <label for="customer_name" class="col-sm-3 col-form-label"><?php echo('Chọn loại tồn cần thống kê') ?>    <i class="text-danger">*</i></label>
                <div class="col-sm-4">
                    <select name="customer_id"  class="form-control" required="">
                        <option value=""></option>
                        <?php foreach($customer as $customers){?>
                        <option value="<?php echo html_escape($customers['customer_id'])?>"  <?php if($customers['customer_id'] == $customer_id){echo 'selected';}?>><?php echo html_escape($customers['customer_name'])?></option>
                                       <?php }?>
                    </select>
                </div>
                <button type="button" class="btn btn-warning col-sm-2" ><?php echo('Xuất Excel tất cả') ?></button>
                            
            </div>
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <h4>DANH SÁCH DƯỢC TỒN DƯỚI ĐỊNH MỨC</h4>
                    </div>
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


                            <div class="table-responsive">

                                <table class="table table-bordered table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <!-- checkbox để tạm -->
                                            <th class="text-center"><?php echo('Flag') ?></th>
                                            <th class="text-center"><?php echo('Tên dược') ?></th>
                                            <th class="text-center"><?php echo('Tên nhóm') ?></th>
                                            <th class="text-center"><?php echo('Số đăng ký') ?></th>
                                            <th class="text-center"><?php echo('Đơn vị nhập') ?></th>
                                            <th class="text-center"><?php echo('Số lượng nhập') ?></th>
                                            <th class="text-center"><?php echo('Số lượng xuất') ?></th>
                                            <th class="text-center"><?php echo('Số lượng tồn') ?></th>
                                            <th class="text-center"><?php echo('SL tối đa') ?></th>
                                            <th class="text-center"><?php echo('SL tối thiểu') ?></th>
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
                                            <td colspan="5" align="left"></td>
                                            <td colspan="1" align="right"><b>50,100</b></td>
                                            <td colspan="1" align="right"><b>50,100</b></td>
                                            <td colspan="1" align="right"><b>0</b></td>
                                            <td colspan="2" align="right"></td>
                                            
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

        <!-- bảng dữ liệu hiển thị -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <h4>THÔNG TIN NHẬP</h4>
                    </div>
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


                            <div class="table-responsive">

                                <table class="table table-bordered table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <!-- checkbox để tạm -->
                                            <th class="text-center"><?php echo('Ngày nhập') ?></th>
                                            <th class="text-center"><?php echo('Số chứng từ') ?></th>
                                            <th class="text-center"><?php echo('Nhà cung cấp') ?></th>
                                            <th class="text-center"><?php echo('Số lượng nhập') ?></th>
                                            <th class="text-center"><?php echo('Giá nhập') ?></th>
                                            <th class="text-center"><?php echo('Thành tiền nhập') ?></th>
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
                                    
                                </table>
                                
                            </div>
                        </div>
                        <!-- fix this data area -->
                        <!-- <div class="text-right">  <?php echo htmlspecialchars_decode($links)?></div> -->
                    </div>
                </div>
            </div>
        </div>

        <!-- bảng dữ liệu hiển thị -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <h4>THÔNG TIN XUẤT</h4>
                    </div>
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


                            <div class="table-responsive">

                                <table class="table table-bordered table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <!-- checkbox để tạm -->
                                            <th class="text-center"><?php echo('Ngày xuất') ?></th>
                                            <th class="text-center"><?php echo('Số chứng từ') ?></th>
                                            <th class="text-center"><?php echo('Số lượng') ?></th>
                                            <th class="text-center"><?php echo('Giá xuất') ?></th>
                                            <th class="text-center"><?php echo('Nơi nhận') ?></th>
                                            <th class="text-center"><?php echo('Giảm giá') ?></th>
                                            <th class="text-center"><?php echo('Thành tiền xuất') ?></th>
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

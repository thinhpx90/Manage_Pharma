
<!-- Manage Invoice Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('manage_invoice') ?></h1>
            <small><?php echo display('manage_your_invoice') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('invoice') ?></a></li>
                <li class="active"><?php echo display('manage_invoice') ?></li>
            </ol>
        </div>
    </section>

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
                
    <?php if($this->permission1->method('new_invoice','create')->access()){ ?>
                    <a href="<?php echo base_url('Cinvoice') ?>" class="btn btn-info m-b-5 m-r-2"><i class="ti-plus"> </i> <?php echo display('new_invoice') ?> </a>
                <?php }?>
              <?php if($this->permission1->method('pos_invoice','create')->access()){ ?>
                    <a href="<?php echo base_url('Cinvoice/pos_invoice') ?>" class="btn btn-primary m-b-5 m-r-2"><i class="ti-align-justify"> </i>  <?php echo display('pos_invoice') ?> </a>
                <?php }?>

               
            </div>
        </div>

        <!-- date between search -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd">
                    <div class="panel-heading">
                        <h4>TÌM KIẾM</h4>
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
                                <label for="customer_name" class="col-sm-2 col-form-label"><?php echo('Trạng thái duyệt') ?> <i class="text-danger">*</i></label>
                                <div class="col-sm-4">
                                    <select name="customer_id"  class="form-control" required="">
                                        <option value=""></option>
                                       <?php foreach($customer as $customers){?>
                                        <option value="<?php echo html_escape($customers['customer_id'])?>"  <?php if($customers['customer_id'] == $customer_id){echo 'selected';}?>><?php echo html_escape($customers['customer_name'])?></option>
                                       <?php }?>
                                    </select>
                                </div>
                                <label for="customer_name" class="col-sm-2 col-form-label"><?php echo('TT thanh toán') ?> <i class="text-danger">*</i></label>
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
                                <label for="customer_name" class="col-sm-2 col-form-label"><?php echo('Loại đơn hàng') ?> <i class="text-danger">*</i></label>
                                <div class="col-sm-4">
                                    <select name="customer_id"  class="form-control" required="">
                                        <option value=""></option>
                                       <?php foreach($customer as $customers){?>
                                        <option value="<?php echo html_escape($customers['customer_id'])?>"  <?php if($customers['customer_id'] == $customer_id){echo 'selected';}?>><?php echo html_escape($customers['customer_name'])?></option>
                                       <?php }?>
                                    </select>
                                </div>
                                <div class="col-sm-6">
                                    <input type="checkbox" name="">
                                    <label for=""> Theo nhóm</label>
                                </div>
                            </div>
                        </div>
                        
                        
                        <?php echo form_close() ?>
                    </div>
                    <div class="form-group row panel-body" align="right">
                            <button type="submit" class="btn btn-success "><?php echo('Tìm kiếm') ?></button>
                            <button type="submit" class="btn btn-success "><?php echo('In') ?></button>
                            <button type="submit" class="btn btn-success "><?php echo('Làm mới') ?></button>
                        </div>
                </div>
            </div>
        </div>
        <div class="row"> 
        </div>
        <!-- Manage Invoice report -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                      
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive" >
                            <table class="table table-striped table-bordered" cellspacing="0" width="100%" id="InvList"> 
                                <thead>
                                    <tr>
                                        <th><?php echo display('sl') ?></th>
                                        <th><?php echo display('action') ?></th>
                                        <th><?php echo display('invoice_no') ?></th>
                                        <th><?php echo display('date') ?></th>
                                        
                                        <th><?php echo display('customer_name') ?></th>
                                        <th><?php echo ('Nhân viên') ?></th>
                                        <th><?php echo ('TT phụ thu') ?></th>
                                        <th><?php echo ('TT thu') ?></th>
                                        <th><?php echo ('Giảm giá') ?></th>
                                        <th><?php echo ('Công nợ') ?></th>
                                        <th><?php echo ('Trạng thái thanh toán') ?></th>
                                        
                                        <th><?php echo display('total_amount') ?></th>
                                        <!-- Tạm để là "echo" thay vì "echo display" -->
                                        <th><?php echo display('action') ?></th>
                                    </tr>
                                </thead>
                                <tbody>
             
                                </tbody>
                                <tfoot>
                    <th colspan="4" class="text-right"><?php echo display('total')?>:</th>
                
                  <th></th>  
                  <th></th> 
                  <th></th>  
                  <th></th> 
                  <th></th>  
                  <th></th> 
                  <th></th>  
                  <th></th> 
                  <th></th>
                 
                                </tfoot>
                            </table>
                            
                        </div>
                         <input type="hidden" id="total_invoice" value="<?php echo html_escape($total_invoice);?>" name="">
                 <input type="hidden" id="currency" value="{currency}" name="">

                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Manage Invoice End -->


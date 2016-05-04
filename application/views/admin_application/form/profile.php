<div class="box box-info">
                                <div class="box-header">
                                    <h3 class="box-title">Basic Info</h3>
                                   
                                </div>
                                <div class="box-body chart-responsive">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Photo</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                <input type="file" name="i_img">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">KTP Number</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                <input class="form-control" required type="text" name="i_ktp_number" value="<?= @$data['basic_info_ktp_number'] ?>" title="Please fill KTP Number">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">First name</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                            <input class="form-control" required type="text" title="Please fill first name" name="i_first_name" value="<?= @$data['basic_info_first_name'] ?>">
                                            
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Last name</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                            <input class="form-control" required type="text" name="i_last_name" value="<?= @$data['basic_info_last_name'] ?>" title="Please fill last name">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Phone number</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                            <input class="form-control" required type="text" name="i_phone_number" value="<?= @$data['basic_info_phone_number'] ?>" title="Please fill phone number">
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Email</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                            <input class="form-control" required type="text" name="i_email" value="<?= @$data['basic_info_email'] ?>" title="Please fill email">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Gender</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                <input type="radio" name="i_gender" value="1" 
                                                <?php if($data['basic_info_gender_id']==1){ ?>checked<?php } ?>> Male 
                                                <input type="radio" name="i_gender" value="2" <?php if($data['basic_info_gender_id']==2){ ?>checked<?php } ?>> Female<br>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Place of birth</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                <input class="form-control" required type="text" title="Please fill place of birth" name="i_birth_place" value="<?= @$data['basic_info_birth_place'] ?>">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Date of birth</span>
                                        </div>
                                        <div class="col-xs-8">
                                        <div class="form-group">
                                            <div class="input-group">
            
                                                <div class="input-group-addon">
                                                    <i class="fa fa-calendar"></i>
                                                </div>
                                                    <input type="text" required class="form-control pull-right" id="date_picker1" name="i_birth_date" value="<?= @$data['basic_info_birth_date'] ?>" title="Please fill date of birth" >
                                            </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Country</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                 <select id="basic" name="i_country_id" size="1" class="selectpicker show-tick form-control" data-live-search="true">
                                        <?php foreach($list_country as $row_country): ?>
                                                            <option value="<?= $row_country['country_id'] ?>" <?php

                                                            if(@$data['basic_info_country_id'] == $row_country['country_id']){ echo "selected"; }
                                                                                        ?>><?= $row_country['country_name'] ?></option>
                                                                                      <?php
                                                                                      endforeach;
                                                                                      ?>
                                                                                        </select>
                                            </div>
                                        </div>
                                    </div>

                                     <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Religion</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                <select id="basic" name="i_religion_id" size="1" class="selectpicker show-tick form-control" data-live-search="true">
                                                    <?php foreach($list_religion as $row_religion): ?>
                                                            <option value="<?= $row_religion['religion_id'] ?>" <?php

                                                            if(@$data['basic_info_religion_id'] == $row_religion['religion_id']){ echo "selected"; }?>><?= $row_religion['religion_name'] ?></option>
                                                                                      <?php
                                                                                      endforeach;
                                                                                      ?>
                                                                                        </select>
                                            </div>
                                        </div>
                                    </div>

                                    
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">NPWP number</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                            <input class="form-control" required type="text" name="i_npwp_number" value="<?= @$data['basic_info_npwp_number'] ?>" title="Please fill npwp number">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">City</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                 <select id="basic" name="i_city_id" size="1" class="selectpicker show-tick form-control" data-live-search="true">
                                        <?php foreach($list_city as $row_city): ?>
                                                            <option value="<?= $row_city['city_id'] ?>" <?php

                                                            if(@$data['basic_info_city_id'] == $row_city['city_id']){ echo "selected"; }
                                                                                        ?>><?= $row_city['city_name'] ?></option>
                                                                                      <?php
                                                                                      endforeach;
                                                                                      ?>
                                                                                        </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">BPJS number</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                            <input class="form-control" required type="text" name="i_bpjs_number" value="<?= @$data['basic_info_bpjs_number'] ?>" title="Please fill bpjs number">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Driver's license</span>
                                        </div>
                                        <div class="col-xs-8">
                                            
                                                <div class="col-sm-4" style="padding-left: 0px;"><div class="form-group">
                                                    <select id="basic" name="i_license_type_id" size="1" class="selectpicker show-tick form-control" data-live-search="true">
                                                    <?php foreach($list_license_type as $row_license_type): ?>
                                                            <option value="<?= $row_license_type['license_type_id'] ?>" <?php

                                                            if(@$data['basic_info_license_type_id'] == $row_license_type['license_type_id']){ echo "selected"; }
                                                                                        ?>><?= $row_license_type['license_type_name'] ?></option>
                                                                                      <?php
                                                                                      endforeach;
                                                                                      ?>
                                                                                        </select>
                                                </div></div>
                                                <div class="col-sm-8" style="padding: 0px;">
                                                <div class="form-group">
                                                    <input class="form-control" required type="text" name="i_license_number" value="<?= @$data['basic_info_license_number'] ?>" title="Please fill license number">
                                                </div>
                                                </div>
                                           
                                          
                                        </div>
                                    </div>

                                   
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Marital Status</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                  <input required="" type="radio" name="i_marital_status" value="1" <?php if($data['basic_info_marital_status']==1){ ?>checked<?php } ?>> Single 
                                                  <input type="radio" required="" name="i_marital_status" value="2" <?php if($data['basic_info_marital_status']==2){ ?>checked<?php } ?>> Married<br>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Children</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                <input class="form-control" required type="text" name="i_child_number" value="<?= @$data['basic_info_child_number'] ?>" title="Please fill children number">
                                            </div>
                                        </div>
                                    </div>

                                    

                               

                                    

                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
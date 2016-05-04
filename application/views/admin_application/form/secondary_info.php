<div class="box box-info">
                                <div class="box-header">
                                    <h3 class="box-title">Secondary Info</h3>
                                   
                                </div>
                                <div class="box-body chart-responsive">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Letter reference</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                <input type="file" name="i_letter_reference">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Weight</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                <input class="form-control" required type="text" name="i_weight" value="<?= @$data['secondary_info_weight'] ?>" title="Please fill weight">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Height</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                           <input class="form-control" required type="text" name="i_height" value="<?= @$data['secondary_info_height'] ?>" title="Please fill height">
                                            
                                            </div>
                                        </div>
                                    </div>

                                     <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Blood group</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                <input type="radio" name="i_blood_group" value="A" 
                                                <?php if(@$data['secondary_info_blood_group']=="A"){ ?>checked<?php } ?>> A 
                                                &nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="i_blood_group" value="B" <?php if(@$data['secondary_info_blood_group']=="B"){ ?>checked<?php } ?>> B
                                                &nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="i_blood_group" value="AB" <?php if(@$data['secondary_info_blood_group']=="AB"){ ?>checked<?php } ?>> AB
                                                &nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="i_blood_group" value="O" <?php if(@$data['secondary_info_blood_group']=="O"){ ?>checked<?php } ?>> O

                                                <br>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Blood group type</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                <input type="radio" name="i_blood_group_type" value="positif" 
                                                <?php if(@$data['secondary_info_blood_group_type']=="positif"){ ?>checked<?php } ?>> Positif 
                                                &nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="i_blood_group_type" value="negatif" <?php if(@$data['secondary_info_blood_group_type']=="B"){ ?>checked<?php } ?>> Negatif

                                                <br>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Last blood donor</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                            <input class="form-control" required type="text" name="i_blood_donation" value="<?= @$data['secondary_info_blood_donation'] ?>" title="Please fill blood donation">
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Wearing glasses or soflens</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                             <input type="radio" name="i_use_glasses" value="1" 
                                                <?php if(@$data['secondary_info_use_glasses']=="1"){ ?>checked<?php } ?>> Yes 
                                                &nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="i_use_glasses" value="2" <?php if(@$data['secondary_info_use_glasses']=="2"){ ?>checked<?php } ?>> No
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Smoker</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                             <input type="radio" name="i_smoker" value="1" 
                                                <?php if(@$data['secondary_info_smoker']=="1"){ ?>checked<?php } ?>> Yes 
                                                &nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="i_smoker" value="2" <?php if(@$data['secondary_info_smoker']=="2"){ ?>checked<?php } ?>> No
                                            </div>
                                        </div>
                                    </div>

                                     <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Allergy</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                 <select id="basic" name="i_allergy_id" size="1" class="selectpicker show-tick form-control" data-live-search="true">
                                        <?php foreach($list_allergy as $row_allergy): ?>
                                                            <option value="<?= $row_allergy['allergy_id'] ?>" <?php

                                                            if(@$data['secondary_info_allergy_id'] == $row_allergy['allergy_id']){ echo "selected"; }
                                                                                        ?>><?= $row_allergy['allergy_name'] ?></option>
                                                                                      <?php
                                                                                      endforeach;
                                                                                      ?>
                                                                                        </select>
                                            </div>
                                        </div>
                                    </div>

                                     <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Sport</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                 <select id="basic" name="i_sport_id" size="1" class="selectpicker show-tick form-control" data-live-search="true">
                                        <?php foreach($list_sport as $row_sport): ?>
                                                            <option value="<?= $row_sport['sport_id'] ?>" <?php

                                                            if(@$data['secondary_info_sport_id'] == $row_sport['sport_id']){ echo "selected"; }
                                                                                        ?>><?= $row_sport['sport_name'] ?></option>
                                                                                      <?php
                                                                                      endforeach;
                                                                                      ?>
                                                                                        </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Life Motto</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                <textarea rows="5" class="form-control" name="i_life_motto" required="" title="Please fill life motto "><?= @$data['basic_info_life_motto'] ?></textarea>
                                            </div>
                                        </div>
                                    </div>

                                     <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Join Reason</span>
                                        </div>
                                        <div class="col-xs-8">
                                            <div class="form-group">
                                                <textarea rows="5" class="form-control" name="i_join_reason" required="" title="Please fill join reason "><?= @$data['basic_info_join_reason'] ?></textarea>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-xs-4">
                                            <span class="application_label">Test Date</span>
                                        </div>
                                        <div class="col-xs-8">
                                        <div class="form-group">
                                            <div class="input-group">
            
                                                <div class="input-group-addon">
                                                    <i class="fa fa-calendar"></i>
                                                </div>
                                                    <input type="text" required class="form-control pull-right" id="date_picker2" name="i_test_date" value="<?= @$data['basic_info_test_date'] ?>" title="Please fill test date" >
                                            </div>
                                            </div>
                                        </div>
                                    </div>

                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
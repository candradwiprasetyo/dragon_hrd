<!-- Content Header (Page header) -->
        
                <!-- Main content -->
                <section class="content">
                    <form  class="cmxform" id="createForm" action="<?= $data_head['action']?>" method="post" enctype="multipart/form-data" role="form">
                    <div class="row">
                        <div class="col-md-6">

                            <!-- PROFILE -->
                            <?php $this->load->view('admin_application/form/profile'); ?>
                            
                           
                            
                        </div><!-- /.col (LEFT) -->
                        <div class="col-md-6">
                            
                            <!-- Secondary info -->
                            <?php $this->load->view('admin_application/form/secondary_info'); ?>
                           

                        </div><!-- /.col (RIGHT) -->
                    </div><!-- /.row -->

                    <div class="row">
                        <div class="col-md-12">
                            <input type="submit" class="btn btn-success" value="Save"></input>
                            <a href="<?= site_url() ?>admin_application" class="btn btn-primary" >Close</a>
                        </div>
                    </div>
                    </form>
                </section><!-- /.content -->
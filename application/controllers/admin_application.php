<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin_application extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('admin_application_model');
		$this->load->library('session');
		$this->load->library('access');
		$this->load->library('pagination');
		$this->load->library('table');

		$this->session->set_userdata('menu_active', 3);

		// akses user yang login, bisa diganti menggunakan data real
		$this->session->set_userdata('user_id', '1');
		
		/*
		$logged_admin = $this->session->userdata('logged_admin');
		if($logged_admin == ""){
			redirect('login_admin');
		}*/	
	}

	public function index() {

			$data_head['title'] = "application";
			$data_head['add_button'] = site_url().'admin_application/form/';

			$data_user = array();
			$result = $this->access->get_data_user_admin($this->session->userdata('user_id'));

			if($result){
				$data_user  = $result;
			}

			$list =  $this->admin_application_model->list_data();

			$this->load->view('admin_layout/header', array( 'data_head' => $data_head, 'data_user' => $data_user));
			$this->load->view('admin_application/list', array('data_head' => $data_head, 'list' => $list));
			$this->load->view('admin_layout/footer');

 	}

	public function view_portfolio($id) {

			$data_head['title'] = "View portfolio";
			$data_head['close_button'] = site_url().'admin_application/form/'.$id;

			$data_user = array();
			$result = $this->access->get_data_user_admin($this->session->userdata('user_id'));

			if($result){
				$data_user  = $result;
			}

			$data = array();
			if($id){
				$result = $this->admin_application_model->read_id($id);
				if($result){
					$data  = $result;
				}
			}

			$this->load->view('admin_layout/header', array( 'data_head' => $data_head, 'data_user' => $data_user));
			$this->load->view('admin_application/view_portfolio', array('data_head' => $data_head, 'data' => $data));
			$this->load->view('admin_layout/footer');

 	}

 	public function email() {


			$this->load->view('admin_application/email_notification');

 	}

	public function index_manual() {

			$data_head['title'] = "application ";
			$data_head['add_button'] = site_url().'admin_application/form/';

			$data_user = array();
			$result = $this->access->get_data_user_admin($this->session->userdata('user_id'));

			if($result){
				$data_user  = $result;
			}

			//$list =  $this->admin_application_model->list_data();


			$jumlah= $this->admin_application_model->jumlah();

			$config['base_url'] = base_url().'admin_application/index_manual/';
			$config['total_rows'] = $jumlah;
			$config['per_page'] = 10;

			//Adding Enclosing Markup
			$config['full_tag_open'] = '
			<div id="example1_wrapper" class="dataTables_wrapper form-inline" role="grid">
			<div class="row">
                    <div class="col-xs-6">
                        <div class="dataTables_info" id="example1_info"></div>
                    </div>
                    <div class="col-xs-6"><div class="dataTables_paginate paging_bootstrap">
                        <ul class="pagination">';
				$config['full_tag_close'] = '</ul>
                    </div>
                </div>
                </div>';

                //Customizing the First Link
                $config['first_tag_open'] = '<li>';
                $config['first_tag_close'] = '</li>';

                //Customizing the "Current Page" Link
                $config['cur_tag_open'] = '<li class="active"><a>';
                $config['cur_tag_close'] = '</a></li>';

                //Customizing the "Digit" Link
                $config['num_tag_open'] = '<li>';
                $config['num_tag_close'] = '</li>';

                //Customizing the "Next" Link
                $config['next_tag_open'] = '<li>';
                $config['next_tag_close'] = '</li>';

                //Customizing the "Prev" Link
                $config['prev_tag_open'] = '<li>';
                $config['prev_tag_close'] = '</li>';

                //Customizing the Last Link
				$config['last_tag_open'] = '<li>';
				$config['last_tag_close'] = '</li>';


			$dari = $this->uri->segment('3');
			$data_list['artikel'] = $this->admin_application_model->lihat($config['per_page'],$dari);
			$this->pagination->initialize($config);
			$this->load->view('admin_layout/header', array( 'data_head' => $data_head, 'data_user' => $data_user));
			$this->load->view('admin_application/list_manual', $data_list);
			$this->load->view('admin_layout/footer');

 	}

 	public function list_data() {


			$this->load->view('admin_application/list_data');


 	}

 	public function form($id = 0) {

			$data_head['title'] = "Application ";
			$data_head['action'] = site_url().'admin_application/form_action/'.$id;
			$data_head['close_button'] = site_url().'admin_application/';

			$data_user = array();
			$result_user = $this->access->get_data_user_admin($this->session->userdata('user_id'));

			if($result_user){
				$data_user  = $result_user;
			}


			$data = array();
			$data['row_id'] = "";
			if($id){
				$result = $this->admin_allergy_model->read_id($id);
				if($result){
					$data  = $result;
					$data['row_id'] = $data['basic_info_id'];
				}
			}else{
				$data['basic_info_gender_id'] = 1;
				$data['basic_info_marital_status'] = 1;
			}

			// basic info
			$list_country =  $this->admin_application_model->list_data_country();
			$list_city =  $this->admin_application_model->list_data_city();
			$list_license_type =  $this->admin_application_model->list_data_license_type();
			$list_religion =  $this->admin_application_model->list_data_religion();

			// secondary info
			$list_allergy =  $this->admin_application_model->list_data_allergy();
			$list_sport =  $this->admin_application_model->list_data_sport();


			$this->load->view('admin_layout/header', array( 'data_head' => $data_head, 'data_user' => $data_user));
			$this->load->view('admin_application/form/form', array(
									'data_head' => $data_head, 
									'data' => $data,
									'list_country' => $list_country,
									'list_city' => $list_city,
									'list_license_type' => $list_license_type,
									'list_religion' => $list_religion,
									'list_allergy' => $list_allergy,
									'list_sport' => $list_sport
								));
			$this->load->view('admin_layout/footer');

 	}

 	public function form_action($id = 0) {

 		if($_FILES['i_img']['name']){

			if($id){
				$get_img = $this->admin_application_model->get_img("resume", "resume_photo", "basic_info_id = '$id'");
			
				$oldfile   = "assets/images/application/".$get_img;
			
				if( file_exists( $oldfile ) ){
	    			unlink( $oldfile );
				}
			}

			$new_name = $this->upload_img('i_img');

			$data_resume['resume_photo'] 					= str_replace(" ", "_", $new_name);

		}

		 // simpan di table basic_info
		$data['basic_info_first_name']	 				= $this->input->post('i_first_name');
		$data['basic_info_last_name']	 				= $this->input->post('i_last_name');
		$data['basic_info_gender']	 					= $this->input->post('i_gender');
		$data['basic_info_birth_date']	 				= $this->access->format_back_date($this->input->post('i_birth_date'));
		$data['basic_info_birth_place']	 				= $this->input->post('i_birth_place');
		$data['basic_info_country_id']	 				= $this->input->post('i_country_id');
		$data['basic_info_npwp_number']	 				= $this->input->post('i_npwp_number');
		$data['basic_info_city_id']	 					= $this->input->post('i_city_id');
		$data['basic_info_bpjs_number']	 				= $this->input->post('i_bpjs_number');
		$data['basic_info_license_type_id']	 			= $this->input->post('i_license_type_id');
		$data['basic_info_license_number']	 			= $this->input->post('i_license_number');
		$data['basic_info_religion_id']	 				= $this->input->post('i_religion_id');
		$data['basic_info_email']	 					= $this->input->post('i_email');
		$data['basic_info_phone_number']	 			= $this->input->post('i_phone_number');
		$data['basic_info_marital_status']	 			= $this->input->post('i_marital_status');
		$data['basic_info_child_number']	 			= $this->input->post('i_child_number');
		$data['basic_info_join_reason']	 				= $this->input->post('i_join_reason');
		$data['basic_info_life_motto']	 				= $this->input->post('i_life_motto');
		$data['basic_info_status_id']	 				= 10;
		$data['basic_info_date']	 					= date("Y-m-d");
		$data['basic_info_ktp_number']	 				= $this->input->post('i_ktp_number');
		$data['basic_info_last_education_type_id']	 	= 0;
		$data['basic_info_test_date']	 				= $this->access->format_back_date($this->input->post('i_test_date'));
		$data['basic_info_test_status']	 				= 1;


		if($id){
			$this->admin_application_model->update($data, $id);
			redirect('admin_application/?did=2');
		}else{
			$this->admin_application_model->create($data);
			redirect('admin_application/?did=1');
		}



	}

	public function view($id = 0) {

			$data_head['title'] = "View application ";
			$data_head['action'] = site_url().'admin_application/form_action/'.$id;
			$data_head['close_button'] = site_url().'admin_application/';
			$data_head['view_portfolio'] = site_url().'admin_application/view_portfolio/'.$id;

			$data_head['sent_test1'] = site_url().'admin_application/update_status/5/'.$id;
			$data_head['sent_test2'] = site_url().'admin_application/update_status/6/'.$id;
			$data_head['sent_test3'] = site_url().'admin_application/update_status/7/'.$id;
			$data_head['sent_psikologi'] = site_url().'admin_application/update_status/8/'.$id;

			$data_head['rejected1'] = site_url().'admin_application/update_status/2/'.$id;
			$data_head['rejected2'] = site_url().'admin_application/update_status/3/'.$id;
			$data_head['save_draft'] = site_url().'admin_application/update_status/4/'.$id;

			$data_head['interview'] = site_url().'admin_application/update_status/9/'.$id;
			$data_head['accepted'] = site_url().'admin_application/update_status/10/'.$id;

			$data_user = array();
			$result_user = $this->access->get_data_user_admin($this->session->userdata('user_id'));

			if($result_user){
				$data_user  = $result_user;
			}


			$data = array();
			$data['row_id'] = "";
			if($id){
				$result = $this->admin_application_model->read_id($id);
				if($result){
					$data  = $result;
					$data['row_id'] = $data['basic_info_id'];

					switch($data['basic_info_license_type']){
						case '1': $data['license_type'] = "SIM A"; break;
						case '2': $data['license_type'] = "SIM B"; break;
						case '3': $data['license_type'] = "SIM C"; break;
					}
				}
			}

			$list_education = $this->admin_application_model->list_education($id);
			$list_work_experience = $this->admin_application_model->list_work_experience($id);
			$list_tool = $this->admin_application_model->list_tool($id);
			$list_hard_skill = $this->admin_application_model->list_hard_skill($id);
			$list_soft_skill = $this->admin_application_model->list_soft_skill($id);
			$list_history = $this->admin_application_model->list_history($id);


			if($data['basic_info_test_status']==1){


				$option_a = $this->admin_application_model->get_option_a($id);
				$option_b = $this->admin_application_model->get_option_b($id);
				$option_all = $this->admin_application_model->get_option_all($id);

				$data['option_a'] = $option_a / $option_all * 100;
				$data['option_b'] = $option_b / $option_all * 100;

			}


			$this->load->view('admin_layout/header', array( 'data_head' => $data_head, 'data_user' => $data_user));
			$this->load->view('admin_application/form',
				array(
					'data_head' => $data_head,
					'data' => $data,
					'list_education' => $list_education,
					'list_work_experience' => $list_work_experience,
					'list_tool' => $list_tool,
					'list_hard_skill' => $list_hard_skill,
					'list_soft_skill' => $list_soft_skill,
					'list_history' => $list_history
				));
			$this->load->view('admin_layout/footer');

 	}

	public function update_status($status_id, $id = 0) {


		 // simpan di table
		$data_history['application_history_date']	 		= date("Y-m-d");
		$data_history['basic_info_id']	 					= $id;

		$data_history['application_history_status_id'] = $status_id;
		$data['basic_info_status_id'] = $status_id;

		$email = $this->admin_application_model->get_email($id);

		// create history
		$this->admin_application_model->create_history($data_history);

		// update status terakhir di basic_infos
		$this->admin_application_model->update($data, $id);

		$this->sendMail($status_id, $email, $id);

		redirect('admin_application/form/'.$id);

	}

	function sendMail($status_id, $email, $basic_info_id){

			$ci = get_instance();
	        $ci->load->library('email');
	        $config['protocol'] = "smtp";
	        $config['smtp_host'] = "ssl://smtp.gmail.com";
	        $config['smtp_port'] = "465";
	        $config['smtp_user'] = "candradwiprasetyo@gmail.com";
	        $config['smtp_pass'] = "cm3l0n pc";

	        $config['charset'] = "utf-8";
	        $config['newline'] = "\r\n";
	        $config['mailtype'] = 'html';


	        $ci->email->initialize($config);

			$data = array();
			$list = array();

			$result = $this->admin_application_model->get_data_status($basic_info_id);

			if($result){
				$data  = $result;
			}

	        $ci->email->from('candradwiprasetyo@gmail.com', 'Admin Dragon Capital Center');
	        $ci->email->reply_to('candradwiprasetyo@gmail.com', 'Admin  Dragon Capital Center');
	        $ci->email->to($email);
	        $ci->email->subject('Application Dragon Capital Center');


	        if($status_id == 5){
	        	//$ci->email->attach('/Applications/XAMPP/htdocs/dragon_recruitment/assets/admin/file/1_1461046213_Dragon recruitment.pages');
	        	$ci->email->attach($_SERVER["DOCUMENT_ROOT"].'/dragon_recruitment/assets/admin/file/'.$data['position_file1']);
	        }else if($status_id == 6){
	        	$ci->email->attach($_SERVER["DOCUMENT_ROOT"].'/dragon_recruitment/assets/admin/file/'.$data['position_file2']);
	        }else if($status_id == 7){
	        	$ci->email->attach($_SERVER["DOCUMENT_ROOT"].'/dragon_recruitment/assets/admin/file/'.$data['position_file3']);
	        }

	        if($status_id == 8){
	        	$data['link_test'] = '<a href="'.site_url().'psychological_test/form/'.$basic_info_id.'" style="font-weight:bold; color:#3C8DBC">LINK TEST</a>';

	        }

	        $message=$this->load->view('admin_application/email_notification', array('data' => $data, 'list' => $list), TRUE);
			$ci->email->message($message);
			if ($this->email->send()) {
	            //echo 'Email sent.';
	        } else {
	            //show_error($this->email->print_debugger());
	        }



	}

	public function upload_img($img){
		$new_name = time()."_".$_FILES[$img]['name'];
			
			$configUpload['upload_path']    = './assets/images/application/';                 #the folder placed in the root of project
			$configUpload['allowed_types']  = 'gif|jpg|png|bmp|jpeg';       #allowed types description
			$config['max_size']	= '100';
			$config['max_width'] = '1024';
			$config['max_height'] = '768';                       #max height
			$configUpload['encrypt_name']   = false;   
			$configUpload['file_name'] 		= $new_name;                      	#encrypt name of the uploaded file
			$this->load->library('upload', $configUpload);                  #init the upload class
			if(!$this->upload->do_upload($img)){
				$uploadedDetails    = $this->upload->display_errors();
			}else{
				$uploadedDetails    = $this->upload->data(); 
				//$this->_createThumbnail($uploadedDetails['file_name']);
	 
				//$thumbnail_name = $uploadedDetails['raw_name']. '_thumb' .$uploadedDetails['file_ext'];   
			}
			
			return $new_name;
	}


}

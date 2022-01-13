<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class E403 extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('backend/Muser');
		$this->load->model('backend/Morders');
		if(!$this->session->userdata('sessionadmin'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionadmin');
		$this->data['com']='e403';
	}

	public function index(){
		$this->data['view']='index';
		$this->data['title']='Lỗi 404';
		$this->load->view('backend/layout', $this->data);
	}

}
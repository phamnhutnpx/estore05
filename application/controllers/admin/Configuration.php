<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Configuration extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Mconfiguration');
		$this->load->model('backend/Muser');
		$this->load->model('backend/Morders');

		if(!$this->session->userdata('sessionadmin'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionadmin');
		$this->data['com']='configuration';
	}
	
	public function update($id=1)
	{
		$this->data['row']=$this->Mconfiguration->configuration_detail($id);

		$this->load->library('form_validation');
		$this->load->library('session');	
		$this->form_validation->set_rules('mail_smtp', 'Địa chỉ email ', 'required');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'mail_smtp' =>$_POST['mail_smtp'], 
				'mail_smtp_password'=>$_POST['mail_smtp_password'],
				'mail_noreply'=>$_POST['mail_noreply'],
				'priceShip'=>$_POST['priceShip'],
				'title'=>$_POST['title'], 
				'description'=>$_POST['description'],
			);
			
			$this->Mconfiguration->configuration_update($mydata,$id);
			$this->session->set_flashdata('success', 'Cập nhật Cấu hình thành công');
			redirect('admin/configuration/update','refresh');
		} 
		$this->data['view']='update';
		$this->data['title']='Cấu hình';
		$this->load->view('backend/layout', $this->data);
	}
	

}

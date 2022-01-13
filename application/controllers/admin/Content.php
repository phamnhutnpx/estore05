<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Content extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Mcontent');
        $this->load->model('backend/Muser');
        $this->load->model('backend/Morders');
		if(!$this->session->userdata('sessionadmin'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionadmin');
		$this->data['com']='content';
	}

	public function index()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mcontent->content_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/content');
		$this->data['list']=$this->Mcontent->content_all($limit,$first);
		$this->data['view']='index';
		$this->data['title']='Danh sách bài viết';
		$this->load->view('backend/layout', $this->data);
	}

	public function insert()
	{
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->library('alias');
		$this->form_validation->set_rules('name', 'Tên bài viết', 'required|is_unique[db_content.title]');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'title' =>$_POST['name'], 
				'alias' =>$string=$this->alias->str_alias($_POST['name']),
				'fulltext'=>$_POST['fulltext'], 
				'introtext'=>'',
				'created'=>$today,
				'created_by'=>$this->session->userdata('id'),
				'modified'=>$today,
				'modified_by'=>$this->session->userdata('id'),
				'trash'=>1,
				'status'=>$_POST['status']
			);
			$config['upload_path']= './public/images/posts/';
            $config['allowed_types']= 'gif|jpg|png';
            $config['max_size']= 2000;
            $this->load->library('upload', $config);
            if ( $this->upload->do_upload('img'))
            {
                $data = $this->upload->data();
                $mydata['img']=$data['file_name'];
            }
            else
            {
                $mydata['img']='default.png';
            }

			$this->Mcontent->content_insert($mydata);
			$this->session->set_flashdata('success', 'Thêm bài viết thành công');
			redirect('admin/content','refresh');
		} 
		else 
		{
			$this->data['view']='insert';
			$this->data['title']='Thêm bài viết mới';
        	$this->load->view('backend/layout', $this->data);
		}
	}

	public function update($id)
	{
		$this->data['row']=$this->Mcontent->content_detail($id);
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->library('alias');
		$this->form_validation->set_rules('name', 'Tên bài viết', 'required');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'title' =>$_POST['name'], 
				'alias' =>$string=$this->alias->str_alias($_POST['name']),
				'fulltext'=>$_POST['fulltext'], 
				'introtext'=>$_POST['introtext'],
				'modified'=>$today,
				'modified_by'=>$this->session->userdata('id'),
				'trash'=>1,
				'status'=>$_POST['status']
			);
			$config['upload_path']= './public/images/posts/';
            $config['allowed_types']= 'gif|jpg|png';
            $config['max_size']= 2000;
            $this->load->library('upload', $config);
            if ( $this->upload->do_upload('img'))
            {
                $data = $this->upload->data();
                if(strlen($data['file_name'])!=0)
                {
                	$mydata['img']=$data['file_name'];
                }
            }

			$this->Mcontent->content_update($mydata, $id);
			$this->session->set_flashdata('success', 'Cập nhật bài viết thành công');
			redirect('admin/content/','refresh');
		} 
		$this->data['view']='update';
		$this->data['title']='Cập nhật bài viết';
		$this->load->view('backend/layout', $this->data);
	}

	public function status($id)
	{
		$row=$this->Mcontent->content_detail($id);
		$status=($row['status']==1)?0:1;
		$mydata= array('status' => $status);
		$this->Mcontent->content_update($mydata, $id);
		$this->session->set_flashdata('success', 'Cập nhật viết thành công');
		redirect('admin/content/','refresh');
	}

	public function trash($id)
	{
		$mydata= array('trash' => 0);
		$this->Mcontent->content_update($mydata, $id);
		$this->session->set_flashdata('success', 'Xóa bài viết vào thùng rác thành công');
		redirect('admin/content','refresh');
	}

	public function recyclebin()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mcontent->content_trash_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/content/recyclebin');
		$this->data['list']=$this->Mcontent->content_trash($limit, $first);
		$this->data['view']='recyclebin';
		$this->data['title']='Thùng rác bài viết';
		$this->load->view('backend/layout', $this->data);
	}

	public function restore($id)
	{
		$this->Mcontent->content_restore($id);
		$this->session->set_flashdata('success', 'Khôi phục bài viết thành công');
		redirect('admin/content/recyclebin','refresh');
	}
	public function delete($id)
	{
		$this->Mcontent->content_delete($id);
		$this->session->set_flashdata('success', 'Xóa bài viết thành công');
		redirect('admin/content/recyclebin','refresh');
	}

}
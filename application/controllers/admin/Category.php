<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Category extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
        $this->load->model('backend/Mcategory');
        $this->load->model('backend/Muser');
        $this->load->model('backend/Mproduct');
        $this->load->model('backend/Morders');
		if(!$this->session->userdata('sessionadmin'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionadmin');
		$this->data['com']='category';
	}

	public function index()
	{
		$this->load->library('phantrang');
		$this->load->library('alias');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mcategory->category_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/category');
		$this->data['list']=$this->Mcategory->category_all($limit,$first);
		$this->data['view']='index';
		$this->data['title']='Loại sản phẩm';
		$this->load->view('backend/layout', $this->data);
	}

	public function insert()
	{
		$user_role=$this->session->userdata('sessionadmin');
		if($user_role['role']==2){
			redirect('admin/E403/index','refresh');
		}
		$d=getdate();
		$this->load->library('alias');
		$this->load->library('form_validation');
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->form_validation->set_rules('name', 'Loại sản phẩm', 'required|is_unique[db_category.name]|max_length[25]');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'name' =>$_POST['name'], 
				'link' =>$string=$this->alias->str_alias($_POST['name']),
				'orders' =>$_POST['orders'],
				'status' =>$_POST['status'],
				'created_at' =>$today,
				'created_by' =>$this->session->userdata('id'),
				'updated_at' =>$today,
				'updated_by' =>$this->session->userdata('id'),
				'trash'=>1
			);

			$id=$_POST['parentid'];
			if($id==0)
			{
				$mydata['level']=1;
				$mydata['parentid']=$id;
			}
			else
			{
				$row=$this->Mcategory->category_detail($id);//Lấy thông tin loại đó
				$mydata['level']=$row['level']+1;
				$mydata['parentid']=$id;	
			}
			$this->Mcategory->category_insert($mydata);
			$this->session->set_flashdata('success', 'Thêm danh mục thành công');
			redirect('admin/category','refresh');
		} 
		else 
		{
			$this->data['view']='insert';
			$this->data['title']='Thêm danh mục mới';
			$this->load->view('backend/layout', $this->data);
		}
	}

	public function update($id)
	{
		$user_role=$this->session->userdata('sessionadmin');
		if($user_role['role']==2){
			redirect('admin/E403/index','refresh');
		}
		$this->data['row']=$this->Mcategory->category_detail($id);
		$d=getdate();
		$today=$d['year']."/".$d['mon']."/".$d['mday']." ".$d['hours'].":".$d['minutes'].":".$d['seconds'];
		$this->load->library('alias');
		$this->load->library('form_validation');
		$this->form_validation->set_rules('name', 'Tên danh mục', 'required|max_length[25]');
		if ($this->form_validation->run() == TRUE) 
		{
			$mydata= array(
				'name' =>$_POST['name'], 
				'link' =>$string=$this->alias->str_alias($_POST['name']),
				'status' =>$_POST['status'],
				'orders' =>$_POST['orders'],
				'updated_at' =>$today,
				'updated_by' =>$this->session->userdata('id'),
				'trash'=>1
			);
			$idtmp=$_POST['parentid'];
			if($idtmp==0)
			{
				$mydata['level']=1;
				$mydata['parentid']=$idtmp;
			}
			else
			{
				$row=$this->Mcategory->category_detail($idtmp);//Lấy thông tin loại đó
				$mydata['level']=$row['level']+1;
				$mydata['parentid']=$idtmp;	
			}
        
			$this->Mcategory->category_update($mydata, $id);
			$this->session->set_flashdata('success', 'Cập nhật danh mục thành công');
			redirect('admin/category','refresh');
		} 
		$this->data['view']='update';
		$this->data['title']='Cập nhật danh mục';
		$this->load->view('backend/layout', $this->data);
	}

	public function status($id)
	{
		$row=$this->Mcategory->category_detail($id);
		$status=($row['status']==1)?0:1;
		$mydata= array('status' => $status);
		$this->Mcategory->category_update($mydata, $id);
		$this->session->set_flashdata('success', 'Cập nhật loại sản phẩm thành công');
		redirect('admin/category','refresh');
	}

	public function trash($id)
	{
		$row = $this->Mcategory->category_detail($id);
		$count_product = $this->Mproduct->product_count_parentid($row['id']);
		$count_category = $this->Mcategory->category_count_parentid($row['id']);
		if($count_product > 0)
		{
			$this->session->set_flashdata('error', 'Danh mục này còn sản phẩm bên trong! Hãy xóa sản phẩm trước !');
			redirect('admin/category','refresh');
		}
		else
		{
			if($count_category > 0)
			{
				$this->session->set_flashdata('error', 'Danh mục này còn danh mục con bên trong! Không thể thực hiện !');
				redirect('admin/category','refresh');
			}
			else
			{
				$mydata= array('trash' => 0);
				$this->Mcategory->category_update($mydata, $id);
				$this->session->set_flashdata('success', 'Xóa loại sản phẩm vào thùng rác thành công');
				redirect('admin/category','refresh');
			}
		}
	}

	public function recyclebin()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mcategory->category_trash_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/category/recyclebin');
		$this->data['list']=$this->Mcategory->category_trash($limit, $first);
		$this->data['view']='recyclebin';
		$this->data['title']='Thùng rác loại sản phẩm';
		$this->load->view('backend/layout', $this->data);
	}
	public function restore($id)
	{
		$this->Mcategory->category_restore($id);
		$this->session->set_flashdata('success', 'Khôi phục loại sản phẩm thành công');
		redirect('admin/category/recyclebin','refresh');
	}

	public function delete($id)
	{
		$this->Mcategory->category_delete($id);
		$this->session->set_flashdata('success', 'Xóa loại sản phẩm thành công');
		redirect('admin/category/recyclebin','refresh');
	}

}

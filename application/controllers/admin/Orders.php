<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Orders extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('backend/Muser');
    $this->load->model('backend/Mproduct');
    $this->load->model('backend/Mcustomer');
    $this->load->model('backend/Morders');
    $this->load->model('backend/Mprovince');
    $this->load->model('backend/Mdistrict');
    $this->load->model('backend/Morderdetail');
    $this->load->model('backend/Mconfiguration');
    if(!$this->session->userdata('sessionadmin'))
    {
      redirect('admin/user/login','refresh');
    }
    $this->data['user']=$this->session->userdata('sessionadmin');
    $this->data['com']='orders';
  }

  public function index()
  {
    $this->load->library('phantrang');
    $limit=10;
    $current=$this->phantrang->PageCurrent();
    $first=$this->phantrang->PageFirst($limit, $current);
    $total=$this->Morders->orders_count();
    $this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/orders');
    $this->data['list']=$this->Morders->orders_listorders($limit,$first);
    $this->data['view']='index';
    $this->data['title']='Danh sách đơn hàng';
    $this->load->view('backend/layout', $this->data);
  }

  public function detail($id)
  {
    $this->data['id'] = $id;
    $this->data['view']='detail';
    $this->data['title']='Chi tiết đơn hàng';
    $this->load->view('backend/layout', $this->data);
  }
  public function view($id)
  {
    $this->data['id'] = $id;
    $this->data['view']='view';
    $this->data['title']='Chi tiết đơn hàng';
    $this->load->view('backend/layout', $this->data);
  }

  public function status($id)
  {
    $row=$this->Morders->orders_detail($id);
    $status = $row['status'];
    if($status == 0)
    {
      $status = 1;
      $mydata= array('status' => $status);
      $this->Morders->orders_update($mydata, $id);
      redirect('admin/orders','refresh');
    }
    else if ($status == 1)
    {

      $status = 2;
      $mydata= array('status' => $status);
      $this->Morders->orders_update($mydata, $id);

      $rowdetail = $this->Morderdetail->orderdetail_orderid($id);
      foreach ($rowdetail as  $value) {

        $idproduct = $value['productid'];
        $countproduct = $value['count'];

        //Lấy lên sl number_buy của sp để cộng thêm sl sp đó của đơn hàng
        $number_buy = $this->Morders->product_number_buy($idproduct);
        $mydata= array(
          'number_buy'=> $number_buy+$countproduct, 
        );
        $this->Morders->orders_update_number_product($mydata, $idproduct);
        $this->session->set_flashdata('success', 'Cập nhật đơn hàng '.$row['orderCode'].' thành công !!');
      }


      redirect('admin/orders','refresh');

    }else
    {
      $this->session->set_flashdata('error', 'Đơn hàng đã giao và thanh toán, không thể chỉnh sửa !');
      redirect('admin/orders','refresh');
    }
    
  }

  public function recyclebin()
  {
    $this->load->library('phantrang');
    $limit=10;
    $current=$this->phantrang->PageCurrent();
    $first=$this->phantrang->PageFirst($limit, $current);
    $total=$this->Morders->orders_trash_count();
    $this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/orders/recyclebin');
    $this->data['list']=$this->Morders->orders_trash($limit, $first);
    $this->data['view']='recyclebin';
    $this->data['title']='Thùng rác đơn hàng';
    $this->load->view('backend/layout', $this->data);
  }

  public function trash($id)
  {
    $row=$this->Morders->orders_detail($id);
    $status = $row['status'];
    if($status == 1){
      $this->session->set_flashdata('error', 'Đơn hàng '.$row['orderCode'].' đang được giao, không thể lưu !');
      redirect('admin/orders','refresh');
    }else{
      $mydata= array('trash' => 0);
      $this->Morders->orders_update($mydata, $id);
      $this->session->set_flashdata('success', 'lưu đơn hàng '.$row['orderCode'].' vào thùng rác thành công');
      redirect('admin/orders','refresh');
    }
  }

  public function restore($id)
  {
    $this->Morders->orders_restore($id);
    $this->session->set_flashdata('success', 'Khôi phục đơn hàng thành công');
    redirect('admin/orders/recyclebin','refresh');
  }
  public function cancelorder($id){
    $row=$this->Morders->orders_detail($id);
    $status = $row['status'];
    if($status == 0 || $status == 1)
    {
      $status = 4;
      $mydata= array('status' => $status);
      $this->Morders->orders_update($mydata, $id);
      redirect('admin/orders','refresh');
    }
  }

}
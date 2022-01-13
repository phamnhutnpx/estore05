<section id="content">
	<div class="container account">
        <aside class="col-right sidebar col-md-3 col-xs-12">
            <div class="block block-account">
                <div class="general__title">
                    <h2><span>Thông tin tài khoản</span></h2>
                </div>
                <div class="block-content">
                    <p>Tài khoản: <strong><?php echo $info['username'] ?></strong></p>
                    <p>Họ và tên: <strong><?php echo $info['fullname'] ?></strong></p>
                    <p>Email: <strong><?php echo $info['email'] ?></strong></p>
                    <p>Số điện thoại: <strong><?php echo $info['phone'] ?></strong></p>
                </div>
                <button class="btn"><a href="reset_password">Đổi mật khẩu</a></button>
            </div>
        </aside>
        <div class="col-main col-md-9 col-sm-12">
            <div class="my-account">

                <?php if($this->Minfocustomer->order_listorder_customerid_not($info['id']) != null)
                { ?>
                    <div class="general__title">
                        <h2><span>Danh sách đơn hàng chưa duyệt</span></h2>
                    </div>
                    <table style="padding-right: 10px; width: 100%;">
                        <thead style="border: 1px solid silver;">
                            <tr>
                                <th class="text-left" style="width: 85px; padding:5px 10px">Đơn hàng</th>
                                <th style="width: 110px; padding:5px 10px">Ngày</th>
                                <th style="width: 150px;text-align: center; padding:5px 10px">
                                    Giá trị đơn hàng 
                                </th>
                                <th style="width: 150px; text-align: center;">Trạng thái đơn hàng</th>
                                <th style="text-align: center;" colspan="2">Thao tác</th>
                            </tr>
                        </thead>
                        <tbody style="border: 1px solid silver;">
                            <?php $order = $this->Minfocustomer->order_listorder_customerid_not($info['id']);
                            foreach ($order as $value):?>
                                <tr style="border-bottom: 1px solid silver;">
                                    <td style="padding:5px 10px;">#<?php echo $value['orderCode'] ?></td>
                                    <td style="padding:5px 10px;"><?php echo $value['orderdate'] ?></td>
                                    <td style="text-align: center; padding:5px 10px;"><span class="price-2"><?php echo number_format($value['money']) ?> VNĐ</span></td>
                                    <td style="padding:5px 10px; text-align: center;">
                                       <?php
                                       switch ($value['status']) {
                                        case '0':
                                        echo 'Đang đợi duyệt';
                                        break;
                                    }
                                    $id = $value['id'];
                                    ?>
                                </td>
                                <td width="70">
                                    <span> <a style="color: #0f9ed8;" href="account/orders/<?php echo $value['id'] ?>">Xem chi tiết</a></span>
                                </td>
                                <td width="70">
                                    <a style="color: red;" href="thongtin/update/<?php echo $value['id'];?>" onclick="return confirm('Xác nhận hủy đơn hàng này ?')">Hủy đơn hàng</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <?php
            }
            ?>
            
            <div class="general__title">
                <h2><span>Danh sách đơn hàng</span></h2>
            </div>
            <div class="table-order">
                <table style="padding-right: 10px; width: 100%;">
                    <thead style="border: 1px solid silver;">
                        <tr>
                            <th class="text-left" style="width: 85px; padding:5px 10px">Đơn hàng</th>
                            <th style="width: 110px; padding:5px 10px">Ngày</th>
                            <th style="width: 150px;text-align: center; padding:5px 10px">
                                Giá trị đơn hàng 
                            </th>
                            <th style="width: 150px; text-align: center;">Trạng thái đơn hàng</th>
                            <th>Thao tác</th>
                        </tr>
                    </thead>
                    <tbody style="border: 1px solid silver;">
                        <?php $order = $this->Minfocustomer->order_listorder_customerid($info['id']);
                        foreach ($order as $value):?>
                            <tr style="border-bottom: 1px solid silver;">
                                <td style="padding:5px 10px;">#<?php echo $value['orderCode'] ?></td>
                                <td style="padding:5px 10px;"><?php echo $value['orderdate'] ?></td>
                                <td style="text-align: center; padding:5px 10px;"><span class="price-2"><?php echo number_format($value['money']) ?> VNĐ</span></td>
                                <td style="padding:5px 10px; text-align: center;">
                                   <?php
                                   switch ($value['status']) {
                                    case '0':
                                    echo 'Đang đợi duyệt';
                                    break;
                                    case '1':
                                    echo 'Đang giao hàng';
                                    break;
                                    case '2':
                                    echo 'Đã giao';
                                    break;
                                    case '3':
                                    echo 'Khách hàng đã hủy';
                                    break;
                                    case '4':
                                    echo 'Nhân viên đã hủy';
                                    break;
                                }
                                $id = $value['id'];
                                ?>
                            </td>
                            <td width="70">
                                <span> <a style="color: #0f9ed8;" href="account/orders/<?php echo $value['id'] ?>">Xem chi tiết</a></span>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>


        </div>
    </div>
</div>
</section>

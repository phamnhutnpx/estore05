<?php echo form_open_multipart('admin/contact/detail/'.$row['id']); ?>

<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/content/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-text-background"></i> Chi tiết </h1>
			<div class="breadcrumb">
				
				<a class="btn btn-primary btn-sm" href="admin/contact" role="button">
					<span class="glyphicon glyphicon-remove do_nos"></span> Thoát
				</a>
			</div>
		</section>
		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="box" id="view">
						<div class="box-body">
							<div class="col-md-9">
							<?php echo validation_errors(); ?>
							<div class="form-group">
									<label>Họ và tên <span class = "maudo" ></span></label>
									<output type="text" class="form-control" name="SDT" style="width:100%"><?php echo $row['fullname'] ?></output>
									
								</div>
								
								<div class="form-group">
									<label>SDT <span class = "maudo"></span></label>
									<output type="text" class="form-control" name="SDT" style="width:100%"><?php echo $row['phone'] ?></output>
									
								</div>
								<div class="form-group">
									<label>Email <span class = "maudo"></span></label>
									<output type="text" class="form-control" name="SDT" style="width:100%"><?php echo $row['email'] ?></output>
									
								</div>
								<div class="form-group">
									<label>Tiêu đề</label>
									<output type="text" class="form-control" name="SDT" style="width:100%"><?php echo $row['title'] ?></output>

								</div>
								<div class="form-group">
									<label>Nội dung mail<span class = "maudo"></span></label>
									<textarea rows="10" cols="20" name="content" style="width:100% height:100%"  id="content" class="form-control"><?php echo $row['content'] ?></textarea>
      								
								</div>
								
							
						</div>
					</div><!-- /.box -->
				</div>
			<!-- /.col -->
		  </div>
		  <!-- /.row -->
		</section>
	</form>
<!-- /.content -->
</div><!-- /.content-wrapper -->
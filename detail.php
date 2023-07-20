<?php if(! defined('BASEPATH')) exit('No direct script acess allowed');?>
<div class="content-wrapper">
  <section class="content-header">
    <h1>
      <i class="fa fa-book" style="color:green"> </i>  <?= $title_web;?>
    </h1>
    <ol class="breadcrumb">
			<li><a href="<?php echo base_url('dashboard');?>"><i class="fa fa-dashboard"></i>&nbsp; Dashboard</a></li>
			<li class="active"><i class="fa fa-book"></i>&nbsp;  <?= $title_web;?></li>
    </ol>
  </section>
  <section class="content">
	<div class="row" >
	    <div class="col-md-12" >
	        <div class="box box-primary">
                <div class="box-header with-border" >
                </div>
			    <!-- /.box-header -->
			    <div class="box-body">
					<table class="table table-striped table-bordered">
						<tr>
							<td style="width:20%"> Nama Pengguna</td>
							<td><?= $user->nama;?></td>
						</tr>
						<tr>
							<td style="width:20%"> Tempat Lahir</td>
							<td><?= $user->tempat_lahir;?></td>
						</tr>
						<tr>
							<td style="width:20%"> Username</td>
							<td><?= $user->user;?></td> 
						</tr>
						<tr>
							<td style="width:20%"> Password</td>
							<td><?= $user->pass;?></td>
						</tr>
						<tr>
							<td style="width:20%"> Level</td>
							<td><?= $user->level;?></td>
						</tr>
						<tr>
							<td style="width:20%"> Jenis Kelamin</td>
							<td><?= $user->jenkel;?></td>
						</tr>
						<tr>
							<td style="width:20%"> Telepon</td>
							<td><?= $user->telepon;?></td>
						</tr>
						<tr>
							<td style="width:20%"> Email</td>
							<td><?= $user->email;?></td>
						</tr>
						<tr>
							<td style="width:20%"> Alamat</td>
							<td><?= $user->alamat;?></td>
						</tr>
						<tr>
							<td>Foto</td>
							<td><?php if(!empty($user->foto !== "0")){?>
									<a href="<?= base_url('assets_style/image/'.$user->foto);?>" target="_blank">
									<img src="<?= base_url('assets_style/image/'.$user->foto);?>" class="img-responsive">
									</a>
									<?php }else{ echo '<br/><p style="color:red">* Tidak ada Sampul</p>';}?>
								</td>
						</tr>
					</table>
		        </div>
	        </div>
	    </div>
    </div>
</section>
</div>
<div class="modal-footer">
<a href="<?= base_url('user/');?>">
	<button type="button" class="btn btn-default pull-right" data-dismiss="modal" style="background:#198FD4 ; color : white;">Close</button>
</div>
</div>
<!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

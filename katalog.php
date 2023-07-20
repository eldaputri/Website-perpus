<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>PERPUSTAKAAN</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">

</head>
<body>

	<!-- header -->
	<div class="medsos" style="background:#fff" >
		<div class="container">
		</div>
	</div> 
	<header>
		<div class="container" >
		<h1 style=" color: #000" > P E R P U S T A K A A N </h1>
		<ul>
			<li class="active"><a href="index.html" style="background:#000000">HOME</a></li>
			<!-- <li><a href="#">CONTACT</a></li> -->
			<li><a href="login">LOGIN</a></li>
			<li><a href="registrasi">REGISTRASI</a></li>
		</ul>
		</div>
	</header>

	<!-- banner -->
	<section class="" style="background:url(
	'assets_style/image/8.png') ; height : 500px;background-size:100%;" >
		<!-- <h2>SELAMAT DATANG DI PERPUTAKAAN KAMI</h2> -->
	</section>

	<!-- about -->
	<section class="about">
		<div class="container">
			<h3 style=" color: #000">ABOUT</h3>
			<p> website ini menyediakan buku dengan berbagai kategori seperti dongen, komik, biografi, dll. terdapat fitur baca online sehingga para pengguna dapat mengefisiensi waktu tanpa harus datang ke perpustakaan. website ini juga menyediakan fitur peminjaman dimana pengguna harus melakukan registrasi terlenih dahulu sebelum meminjam buku. </strong></p>
		</div>
	</section>


	<!-- about -->
	<section class="about">
		<div class="container">
			<h3 style=" color: #000" >DAFTAR BUKU</h3>
			<div class="box-body" >
                    <br/> 
				<!-- <div class="table-responsive" >
                    <table id="example1" class="table table-bordered table-striped table" width="100%">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Cover</th>
                                <th>ISBN</th>
                                <th>Judul</th>
                                <th>Keterangan</th>
                            </tr>
                        </thead>
                        <tbody >
                        <?php foreach($buku->result_array() as $isi){?>
                            <tr>
                                <td style="width:2%;"></td>
                                <td>
                                    <center>
                                        <?php if(!empty($isi['sampul'] !== "0")){?>
                                        <img src="assets_style/image/buku/<?php echo $isi['sampul'];?>" alt="#" 
                                        class="img-responsive" style="height:auto;width:100px;"/>
                                        <?php }else{?>
                                            <img src="" alt="#" class="user-image" style="border:2px solid #fff;"/>
											<i class="fa fa-book fa-3x" style="color:#333;"></i> <br/><br/>
											Tidak Ada Sampul
                                        <?php }?>
                                    </center>
                                </td>
                                <td style="width:20%;"><?= $isi['isbn'];?></td>
                                <td style="width:20%;"><?= $isi['title'];?></td>
								<td style="width:40%;">
								<a href="<?php echo site_url('main/detail_produk/'.$isi['id_buku']); ?>" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                    			<a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a></td>
                            </tr>
                        <?php }?>
                        </tbody>
                    </table>
					</br>
			    </div> -->
		<div class="row px-xl-5 pb-3">
        <?php foreach($buku->result_array() as $isi){?>
        <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
            <div class="card product-item border-0 mb-4">
				<thead><tr>
					<th>
			<h4 style="color:#000" class="text-truncate mb-3"><?php echo $isi['title'];?></h4>
			<h5>ISBN : <?php echo $isi['isbn'];?></h5>
                <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
				<?php if(!empty($isi['sampul'] !== "0")){?>
                                        <img src="assets_style/image/buku/<?php echo $isi['sampul'];?>" alt="#" 
                                        class="img-responsive" style="height:auto;width:230px;"/>
                                        <?php }else{?>
                                            <img src="" alt="#" class="user-image" style="border:2px solid #fff;"/>
											<i class="fa fa-book fa-3x" style="color:#333;"></i> <br/><br/>
											Tidak Ada Sampul
                                        <?php }?>
                </div>
                <!-- <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                    <div class="d-flex justify-content-center">
                
                    </div>
                </div> -->
                <div class="card-footer d-flex justify-content-between bg-light border">
				<a href="<?= base_url('katalog/bukudetail/'.$isi['id_buku']);?>"><button type="button" class="btn btn-default pull-right" data-dismiss="modal" style="background:#AAC4F2 ; color : white; height:auto;width:230px;">View Detail</button></a>
                </div>
										</th>
										</br>
										<h4>Sinopsis : </h4>	
										<th style="width:20%;"><?= $isi['isi'];?></th>				
									</tr></thead>
										</br>
									</div>
        </div>
        <?php } ?>
    </div>
			    </div>
				
	</section>
	<section class="contact" id="contact">
    <h3 style=" color: #000" >CONTAC US</h3>
      <p>Reach out to us for any inquiries or feedback.</p>
      <div class="row">
        <div class="col information">
          <div class="contact-details">
            <p><i class="fas fa-map-marker-alt"></i> Amikom Yogyakarta</p>
            <p><i class="fas fa-envelope"></i> info@perputakaan.com</p>
            <p><i class="fas fa-phone"></i> (123) 456-7890</p>
            <p><i class="fas fa-clock"></i> Monday - Friday: 9:00 AM - 5:00 PM</p>
            <p><i class="fas fa-clock"></i> Saturday: 10:00 AM - 3:00 PM</p>
            <!-- <p><i class="fas fa-clock"></i> Sunday: Closed</p>
            <p><i class="fas fa-globe"></i> www.codingenpalweb.com</p> -->
          </div>          
        </div>
        <div class="col form">
          <form>
            <input type="text" placeholder="Name*" required>
            <input type="email" placeholder="Email*" required>
            <textarea placeholder="Message*" required></textarea>
            <button id="submit" type="submit">Send Message</button>
          </form>
        </div>
      </div>
    </section>


	<!-- footer -->
	<footer style="background:#000000">
		<div class="container" >
			<small> Copyright &copy; 2023 - PERPUSTAKAAN </small>
		</div>
	</footer>
</body>
</html>

<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Katalog extends CI_Controller {
	function __construct(){
	 parent::__construct();
     $this->load->model('M_Admin');
		}
    public function index()
	{
		$this->data['title_web'] = ' PERPUSTAKAAN';
		$this->data['buku'] =  $this->db->query("SELECT * FROM tbl_buku ORDER BY id_buku DESC");
		$this->load->view('katalog',$this->data);
	}
	// // public function register(){
	// // 	$this->data['title_web'] = ' A2SELTA CREAPY LIBRARY';
	// // 	$this->load->view('register');
	// // 	$this->load->view('katalog',$this->data);
	// // }
	// public function registrasi() //tmabah user baru
    // {	
    //     $this->data['title_web'] = 'registrasi ';
    //     $this->load->view('registrasi');
    // }
    // public function add() // action tambah user
    // {
	// 	// format tabel / kode baru 3 hurup / id tabel / order by limit ngambil data terakhir
	// 	$id = $this->M_Admin->buat_kode('tbl_login','AG','id_login','ORDER BY id_login DESC LIMIT 1'); 
    //     $nama = htmlentities($this->input->post('nama',TRUE));
    //     $user = htmlentities($this->input->post('user',TRUE));
    //     $pass = md5(htmlentities($this->input->post('pass',TRUE)));
    //     $level = htmlentities($this->input->post('level',TRUE));
    //     $jenkel = htmlentities($this->input->post('jenkel',TRUE));
    //     $telepon = htmlentities($this->input->post('telepon',TRUE));
    //     $status = htmlentities($this->input->post('status',TRUE));
    //     $alamat = htmlentities($this->input->post('alamat',TRUE));
	// 	$email = $_POST['email'];
	// 	$dd = $this->db->query("SELECT * FROM tbl_login WHERE user = '$user' OR email = '$email'");
	// 	if($dd->num_rows() > 0)
	// 	{
	// 		$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-warning">
	// 		<p> Gagal Update User : '.$nama.' !, Username / Email Anda Sudah Terpakai</p>
	// 		</div></div>');
	// 		redirect(base_url('user/tambah')); 
	// 	}else{
    //         // upload foto
    //         $nmfile = "user_".time();
    //         $config['upload_path'] = './assets_style/image/';
    //         $config['allowed_types'] = 'gif|jpg|jpeg|png';
    //         $config['file_name'] = $nmfile;
    //         // load library upload
    //         $this->load->library('upload', $config);
    //         // upload foto 1
    //         $this->upload->do_upload('gambar');
    //         $result1 = $this->upload->data();
    //         $result = array('gambar'=>$result1);
    //         $data1 = array('upload_data' => $this->upload->data());
    //         $data = array(
	// 			'anggota_id' => $id,
    //             'nama'=>$nama,
    //             'user'=>$user,
    //             'pass'=>$pass,
    //             'level'=>$level,
    //             'tempat_lahir'=>$_POST['lahir'],
    //             'tgl_lahir'=>$_POST['tgl_lahir'],
    //             'level'=>$level,
    //             'email'=>$_POST['email'],
    //             'telepon'=>$telepon,
    //             'foto'=>$data1['upload_data']['file_name'],
    //             'jenkel'=>$jenkel,
    //             'alamat'=>$alamat,
    //             'tgl_bergabung'=>date('Y-m-d')
    //         );
	// 		$this->db->insert('tbl_login',$data);
			
    //         $this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
    //         <p> Daftar User telah berhasil !</p>
    //         </div></div>');
	// 		redirect(base_url('user'));
	// 	}    
      
    // }
    public function bukudetail()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		$count = $this->M_Admin->CountTableId('tbl_buku','id_buku',$this->uri->segment('3'));
		if($count > 0)
		{
			$this->data['buku'] = $this->M_Admin->get_tableid_edit('tbl_buku','id_buku',$this->uri->segment('3'));
			$this->data['kats'] =  $this->db->query("SELECT * FROM tbl_kategori ORDER BY id_kategori DESC")->result_array();
			$this->data['rakbuku'] =  $this->db->query("SELECT * FROM tbl_rak ORDER BY id_rak DESC")->result_array();
		}else{
			echo '<script>alert("BUKU TIDAK DITEMUKAN");window.location="'.base_url('data').'"</script>';
		}
		$this->data['title_web'] = 'Data Buku Detail';
        // $this->load->view('header_view',$this->data);
        // $this->load->view('sidebar_view',$this->data);
        $this->load->view('detail_buku',$this->data);
        // $this->load->view('footer_view',$this->data);
	}
	
}
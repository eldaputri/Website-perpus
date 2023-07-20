<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class registrasi extends CI_Controller {
	function __construct(){
	 parent::__construct(); 
	 	//validasi jika user belum login
        // $this->data['CI'] =& get_instance();
        // $this->load->helper(array('form', 'url'));
        $this->load->model('M_Admin');
	 }
	public function index()
	{
		$this->data['title_web'] = ' LIBRARY';
		$this->load->view('registrasi',$this->data);
	}
    //login
    public function auth()
    {
        $id = $this->M_Admin->buat_kode('tbl_login','AG','id_login','ORDER BY id_login DESC LIMIT 1'); 
        $nama = $this->input->post('nama',TRUE);
        $user = $this->input->post('user',TRUE);
        $pass = md5(htmlentities($this->input->post('pass',TRUE)));
        $level = $this->input->post('level',TRUE);
        $jenkel = $this->input->post('jenkel',TRUE);
        $telepon = $this->input->post('telepon',TRUE);
        $status = $this->input->post('status',TRUE);
        $alamat = $this->input->post('alamat',TRUE);
		$email = $_POST['email'];
		$dd = $this->db->query("SELECT * FROM tbl_login WHERE user = '$user' OR email = '$email'");
		if($dd->num_rows() > 0)
		{
			$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-warning">
			<p> Gagal Update User : '.$nama.' !, Username / Email Anda Sudah Terpakai</p>
			</div></div>');
			redirect(base_url('registrasi/auth')); 
		}else{
            // upload foto
            $nmfile = "user_".time();
            $config['upload_path'] = './assets_style/image/';
            $config['allowed_types'] = 'gif|jpg|jpeg|png';
            $config['file_name'] = $nmfile;
            // load library upload
            $this->load->library('upload', $config);
            // upload foto 1
            $this->upload->do_upload('gambar');
            $result1 = $this->upload->data();
            $result = array('gambar'=>$result1);
            $data1 = array('upload_data' => $this->upload->data());
            $data = array(
				'anggota_id' => $id,
                'nama'=>$nama,
                'user'=>$user,
                'pass'=>$pass,
                'level'=>$level,
                'tempat_lahir'=>$_POST['lahir'],
                'tgl_lahir'=>$_POST['tgl_lahir'],
                'level'=>$level,
                'email'=>$_POST['email'],
                'telepon'=>$telepon,
                'foto'=>$data1['upload_data']['file_name'],
                'jenkel'=>$jenkel,
                'alamat'=>$alamat,
                'tgl_bergabung'=>date('Y-m-d')
            );
			$this->db->insert('tbl_login',$data);
			
            $this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
            <p> Daftar User telah berhasil !</p>
            </div></div>');
			redirect(base_url('login'));
		}    
      
    }
    //log-out
    public function logout()
    {
        $this->session->sess_destroy();
        echo '<script>window.location="'.base_url().'";</script>';
    }
}

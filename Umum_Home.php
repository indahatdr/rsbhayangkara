<?php
defined('BASEPATH') OR exit('No direct script access allowed');
   class Umum_Home extends CI_Controller {

     function __construct() {
         parent::__construct();
  			 $this->load->helper('url');
  			 $this->load->library('session');
  			 $this->load->database();
         $this->load->model('M_lapor');
         $this->load->model('M_lapor_hp');

  		}


         public function index()
       	{

          $data['jumlah_pengaduan'] = $this->M_lapor_hp->jumlah_pengaduan();
          $data['pengaduan_selesai'] = $this->M_lapor_hp->pengaduan_selesai();
          $data['pengaduan_proses'] = $this->M_lapor_hp->pengaduan_proses();
          // $data['jumlah_informasi'] = $this->M_lapor_hp->jumlah_informasi();
          $data['max5'] = $this->M_lapor->max5();


          // $query1=$this->db->query("SELECT * FROM `jenis_informasi`");
          // $hasil=$query1->result();
          // $data['jenis_informasi'] =$hasil;
          // $data['jenis_informasi1'] =$hasil;
          // foreach ($hasil as $isi) {

          //   $data['informasi'.$isi->id_informasi] = $this->M_info->artikel($isi->id_informasi);
          // }
       		$this->load->view('umum_home',$data);
       	}

         public function umum_cek()
       	{
          $id = $this->input->get('id');
          $data['data_pengaduan'] = $this->M_lapor_hp->detail_pengaduan($id);
       		$this->load->view('umum_cek',$data);
       	}
         public function umum_cek_awal()
       	{
          $no_telepon = $this->input->get('no_telepon');
          $data['data_pengaduan'] = $this->M_lapor_hp->data_pengaduan($no_telepon);
       		$this->load->view('umum_cek_awal',$data);
       	}

        public function cek()
       {
        {
         $data['jumlah_pengaduan'] = $this->M_lapor_hp->jumlah_pengaduan();
         $data['pengaduan_selesai'] = $this->M_lapor_hp->pengaduan_selesai();
         $data['pengaduan_proses'] = $this->M_lapor_hp->pengaduan_proses();
        //  $data['jumlah_informasi'] = $this->M_lapor_hp->jumlah_informasi();
         $data['max5'] = $this->M_lapor->max5();


        //  $query1=$this->db->query("SELECT * FROM `jenis_informasi`");
        //  $hasil=$query1->result();
        //  $data['jenis_informasi'] =$hasil;
        //  $data['jenis_informasi1'] =$hasil;
        //  foreach ($hasil as $isi) {

        //    $data['informasi'.$isi->id_informasi] = $this->M_info->artikel($isi->id_informasi);
        //  }
         $this->load->view('umum_home',$data);
          }
       }

   }
?>

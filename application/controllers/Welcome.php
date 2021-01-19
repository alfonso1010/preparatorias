<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Welcome extends CI_Controller {


	public function index()
	{
		$this->load->view('login/login');
	}

	public function login(){
		$datos = $this->input->post();
		$respuesta = consumir($datos);
		$body = json_decode($respuesta['body']);
		//debug($respuesta);
		$this->load->library('session');
		if (is_object($body) && $respuesta['code'] == 200 ) {
			$response = (array)$body;
			$sesion = [
				'token' => isset($response['access_token'])?$response['access_token']:""
			];
			$this->session->set_userdata($sesion);
			echo json_encode(['code' => $respuesta['code']]);
		}else{
			echo json_encode(['code' => 401]);
		}
		
	}
	
}

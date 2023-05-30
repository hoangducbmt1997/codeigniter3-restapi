<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function __construct()
    {
        parent::__construct();

    }

	public function login()
	{

		$method = $_SERVER['REQUEST_METHOD'];

		if($method != 'POST'){
			json_output(400,array('status' => 400,'message' => 'Bad request.'));
		} else {

			$check_auth_client = $this->Auth_Model->check_auth_client();
			if($check_auth_client == true){
				$params = $_REQUEST;
		        
		        $username = $params['username'];
		        $password = $params['password'];

		        $response = $this->Auth_Model->login($username,$password);

				echo json_encode($response);
			}
		}
	}

	public function logout()
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if($method != 'POST'){
			json_output(400,array('status' => 400,'message' => 'Bad request.'));
		} else {
			$check_auth_client = $this->Auth_Model->check_auth_client();
			if($check_auth_client == true){

		        $response = $this->Auth_Model->logout();

				json_output($response['status'],$response);
			}
		}
	}
	
}

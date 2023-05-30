<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Book extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		/*
		$check_auth_client = $this->MyModel->check_auth_client();
		if($check_auth_client != true){
			die($this->output->get_output());
		}
		*/


	}

	public function index()
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'GET') {
			json_output(400, array('status' => 400, 'message' => 'Bad request.'));
		} else {
			$check_auth_client = $this->Auth_Model->check_auth_client();

			if ($check_auth_client == true) {
				$response = $this->Auth_Model->auth();

				if ($response['status'] == 200) {
					$data = $this->Book_Model->book_all_data();
					$resp = array(
						'status' => $response['status'],
						'message' => 'Success',
						'data' => $data
					);
					json_output($response['status'], $resp);
				}
			}
		}
	}

	public function detail($id)
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'GET' || $this->uri->segment(3) == '' || is_numeric($this->uri->segment(3)) == FALSE) {
			json_output(400, array('status' => 400, 'message' => 'Bad request.'));
		} else {
			$check_auth_client = $this->Auth_Model->check_auth_client();
			if ($check_auth_client == true) {
				$response = $this->Auth_Model->auth();
				if ($response['status'] == 200) {
					$resp = $this->Book_Model->book_detail_data($id);
					json_output($response['status'], $resp);
				}
			}
		}
	}

	public function create()
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'POST') {
			json_output(400, array('status' => 400, 'message' => 'Bad request.'));
		} else {
			$check_auth_client = $this->Auth_Model->check_auth_client();

			if ($check_auth_client == true) {
				$response = $this->Auth_Model->auth();



				$respStatus = $response['status'];

				if ($response['status'] == 200) {
					// $params = json_decode(file_get_contents('php://input'), TRUE);

					$title = $this->input->post('title');
					$author = $this->input->post('author');

					if (empty($title) || empty($author)) {
						$respStatus = 400;
						$resp = array('status' => 400, 'message' => 'Title & Author can\'t empty');
					} else {
						$params = array(
							'title' => $title,
							'author' => $author
						);
						$resp = $this->Book_Model->book_create_data($params);
					}

					json_output($respStatus, $resp);
				}
			}
		}
	}

	public function update($id)
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'PUT') {
			json_output(400, array('status' => 400, 'message' => 'Bad request.'));
		} else {
			$check_auth_client = $this->Auth_Model->check_auth_client();
			if ($check_auth_client == true) {
				$response = $this->Auth_Model->auth();
				$respStatus = $response['status'];
				if ($response['status'] == 200) {

					$data = $this->input->input_stream();

					if (!empty($data) && isset($data['title']) && isset($data['author'])) {

						$title = $data['title'];
						$author = $data['author'];

						if (empty($title) || empty($author)) {

							$respStatus = 400;
							$resp = array('status' => 400, 'message' => 'Title & Author can\'t be empty');
						} else {
							$params = array(
								'title' => $title,
								'author' => $author
							);

							$resp = $this->Book_Model->book_update_data($id, $params);
						}
					} else {
						$respStatus = 400;
						$resp = array('status' => 400, 'message' => 'Invalid data format');
					}
					echo json_output($respStatus, $resp);
				}
			}
		}
	}

	public function delete($id)
	{
		$method = $_SERVER['REQUEST_METHOD'];
		if ($method != 'DELETE') {
			json_output(400, array('status' => 400, 'message' => 'Bad request.'));
		} else {
			$check_auth_client = $this->Auth_Model->check_auth_client();
			if ($check_auth_client == true) {
				$response = $this->Auth_Model->auth();


				if ($response['status'] == 200) {
					$resp = $this->Book_Model->book_delete_data($id);
					json_output($response['status'], $resp);
				}
			}
		}
	}


}
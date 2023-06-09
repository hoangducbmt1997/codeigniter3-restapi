<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth_Model extends CI_Model
{

    var $client_service = "frontend-client";
    var $auth_key = "simplerestapi";

    public function check_auth_client()
    {
        $client_service = $this->input->get_request_header('Client-Service', TRUE);
        $auth_key = $this->input->get_request_header('Auth-Key', TRUE);

        if ($client_service == $this->client_service && $auth_key == $this->auth_key) {
            return true;
        } else {
            $this->json_output(401, array('status' => 401, 'message' => 'Unauthorized.'));
        }
    }

    public function login($username, $password)
    {
        $q = $this->db->select('password,id')->from('users')->where('username', $username)->get()->row();

        if ($q == "") {
            return array('status' => 204, 'message' => 'Username not found.');
        } else {
            $hashed_password = $q->password;
            $id = $q->id;

            if (password_verify($password, $hashed_password)) {
                $last_login = date('Y-m-d H:i:s');


                $token = password_hash(substr(md5(rand()), 0, 7), PASSWORD_DEFAULT);

                $expired_at = date("Y-m-d H:i:s", strtotime('+12 hours'));

                $this->db->trans_start();
                $this->db->where('id', $id)->update('users', array('last_login' => $last_login));
                $this->db->insert('users_authentication', array('users_id' => $id, 'token' => $token, 'expired_at' => $expired_at));

                if ($this->db->trans_status() === FALSE) {
                    $this->db->trans_rollback();
                    return array('status' => 500, 'message' => 'Internal server error.');
                } else {
                    $this->db->trans_commit();
                    return array('status' => 200, 'message' => 'Successfully login.', 'id' => $id, 'token' => $token);
                }
            } else {
                return array('status' => 204, 'message' => 'Wrong password.');
            }
        }
    }


    public function logout()
    {
        $users_id = $this->input->get_request_header('User-ID', TRUE);
        $token = $this->input->get_request_header('Authorization', TRUE);
        $this->db->where('users_id', $users_id)->where('token', $token)->delete('users_authentication');
        return array('status' => 200, 'message' => 'Successfully logout.');
    }

    public function auth()
    {
        $users_id = $this->input->get_request_header('User-ID', TRUE);

        $token = $this->input->get_request_header('Authorization', TRUE);

        $q = $this->db->select('expired_at')->from('users_authentication')->where('users_id', $users_id)->where('token', $token)->get()->row();

        if ($q == "") {
            $this->json_output(401, array('status' => 401, 'message' => 'Unauthorized.'));
        } else {
            if ($q->expired_at < date('Y-m-d H:i:s')) {
                $this->json_output(401, array('status' => 401, 'message' => 'Your session has been expired.'));
            } else {
                $updated_at = date('Y-m-d H:i:s');
                $expired_at = date("Y-m-d H:i:s", strtotime('+12 hours'));
                $this->db->where('users_id', $users_id)->where('token', $token)->update('users_authentication', array('expired_at' => $expired_at, 'updated_at' => $updated_at));
                return array('status' => 200, 'message' => 'Authorized.');
            }
        }
    }



    private function json_output($statusHeader, $data)
    {
        $this->output
            ->set_content_type('application/json')
            ->set_status_header($statusHeader)
            ->set_output(json_encode($data));
    }

}
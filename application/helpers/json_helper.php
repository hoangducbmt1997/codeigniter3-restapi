<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

if (!function_exists('json_output')) {
    function json_output($statusHeader, $data)
    {
        $CI = &get_instance();
        $CI->output
           ->set_content_type('application/json')
           ->set_status_header($statusHeader)
           ->set_output(json_encode($data));
    }
}

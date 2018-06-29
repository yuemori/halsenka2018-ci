<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*!
 * Smartyハンズオン
 * ループの扱い方
 */
class Loop extends CI_Controller
{
	/*!
	 */
	public function index()
	{
		$data["array_sample"] = array(1,3,5,7,11,13,17);
		$data["key_array_sample"] = array(
										  "key"  => "value",
										  "hoge" => "fuga",
										  "foo"  => "bar",
										  );

		$this->smarty->view('Loop.tpl', $data);
	}
}

?>

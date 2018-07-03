<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*!
 * Smartyハンズオン
 * 条件分岐の扱い方
 */
class ConditionalBranch extends CI_Controller
{
	/*!
	 */
	public function index()
	{
		$data["foo"] = "bar";

		$data["hoge"] = 10;
		$data["fuga"] = 13;

		$this->smarty->view('ConditionalBranch.tpl', $data);
	}
}

?>

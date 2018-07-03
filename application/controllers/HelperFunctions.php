<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*!
 * Smartyハンズオン
 * ヘルパー関数
 */
class HelperFunctions extends CI_Controller
{
	/*!
	 */
	public function index()
	{
		$data["ti"] = time(NULL);

		$data["tag_string"] =
			'<table>'.
			'<input name="btn" type="button" value="OK" />'.
			'</table>'
			;

		$this->smarty->view('HelperFunctions.tpl', $data);
	}
}

?>

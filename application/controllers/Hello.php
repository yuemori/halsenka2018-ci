<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*!
 * Smartyお試しコントローラー
 */
class Hello extends CI_Controller
{
	/*!
	 * index.php/Hello/
	 */
	public function index()
	{
		// Codeigniterのautoloadによって既に初期化完了している
		$this->smarty->view('Hello.tpl');
	}
}

?>

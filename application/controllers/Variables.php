<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*!
 * お試し用オブジェクト
 */
class TestObject
{
	public $hoge;
	public $fuga;

	public function getValue()
	{
		return $this->fuga;
	}
};

/*!
 * Smartyハンズオン
 * 変数の扱い方
 */
class Variables extends CI_Controller
{
	/*!
	 */
	public function index()
	{
		// こんな感じでViewに値を回します。
		// どんな型でも気にせず渡せます
		//
		// $data[ label ]
		// ここの連想配列のキー(label)の名称に注意
		$data["int_sample"] = 123;
		$data["string_sample"] = "abc";

		// 配列も、連想配列も
		$data["array_sample"] = array(123, 456, 789);
		$data["key_array_sample"] = array(
										  "k1" => "v1",
										  "k2" => "v2"
										  );

		// オブジェクトだって渡せます！
		$obj = new TestObject();
		$obj->hoge = 123456;
		$obj->fuga = 654321;
		$data["object_sample"] = $obj;

		// 変数だって指定できます。
		$test_vallue = 1;
		$data["test_val_1"] = $test_vallue++;
		$data["test_val_2"] = $test_vallue++;
		$data["test_val_3"] = $test_vallue++;

		// application/views/templates/Variables.tpl に変数を渡して呼び出す。
		$this->smarty->view('Variables.tpl', $data);
	}
}

?>

<?php

class User_model extends CI_Model {
	public $id;
	public $name;
	public $email;

	public function __construct()
	{
		// CI_Model constructor の呼び出し
		parent::__construct();
		$this->load->database();
	}

	// ユーザを検索するメソッド
	public function get_users($count = 10) {
		// TODO: userテーブルから検索する
		return array();
	}

	// 名前でユーザ名を検索するメソッド
	public function find_users_by_name($name, $count = 10) {
		// TODO: ユーザ名を条件にuserテーブルから検索する
		return array();
	}

	// ユーザを作成するメソッド
	public function create_user($name, $email) {
		// TODO: ユーザをuserテーブルに追加する
		return FALSE;
	}
}

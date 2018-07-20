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
		$query = $this->db->get('user', $count);

		return $query->result('User_model');
	}

	// 名前でユーザ名を検索するメソッド
	public function find_users_by_name($name, $count = 10) {
		$this->db->where('name', $name);
		$query = $this->db->get('user', $count);

		return $query->result('User_model');
	}

	// ユーザを作成するメソッド
	public function create_user($name, $email) {
		$user = new User_model;
		$user->name = $name;
		$user->email = $email;

		return $this->db->insert('user', $user);
	}
}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
        // ユーザモデルの読み込み
		$this->load->model('User_model', 'user');
	}

	public function index()
	{
		// ユーザモデルからユーザを10件検索する
		$data['users'] = $this->user->get_users(10);

		$this->smarty->view('users/index.tpl', $data);
	}

	public function new()
	{
		$this->load->helper('form');
		$this->smarty->view('users/new.tpl');
	}

	public function create()
	{
		$name = $this->input->post('name');
		$email = $this->input->post('email');

		$this->user->create_user($name, $email);
		redirect('/user/index');
	}

	public function search()
	{
		$name = $this->input->get('name');

		if($name !== '') {
			$data['users'] = $this->user->find_users_by_name($name);
		} else {
			$data['users'] = array();
		}

		$this->smarty->view('users/search.tpl', $data);
	}
}

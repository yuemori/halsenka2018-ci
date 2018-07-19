<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Add_user_table extends CI_Migration {
	// migration実行時の更新方法を書く
        public function up()
        {
		// カラム定義
                $this->dbforge->add_field(array(
                        'id' => array(
                                'type' => 'INT',
                                'constraint' => 5,
                                'unsigned' => TRUE,
                                'auto_increment' => TRUE
                        ),
                        'name' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '20',
                        ),
                        'email' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '100',
                        ),
                ));

		// プライマリキーの指定
                $this->dbforge->add_key('id', TRUE);

		// テーブル作成
                $this->dbforge->create_table('user');
        }

	// 変更を取り消す方法を書く
        public function down()
        {
		// テーブル削除
                $this->dbforge->drop_table('user');
        }
}

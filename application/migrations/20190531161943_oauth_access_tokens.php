<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_oauth_access_tokens extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "oauth_access_tokens";

	public function up()
	{	
		$this->dbforge->add_field(array(
                        'access_token' => array(
                                'type' => 'VARCHAR',
                                'constraint' => 40,
                                'unsigned' => TRUE,
                                'auto_increment' => FALSE
                        ),
                        'client_id' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                        ),
                        'user_id' => array(
                               'type' => 'VARCHAR',
                               'constraint' => '255',
                               'null' => true,
                        ),
                        'expires TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP',
                        'scope' => array(
                               'type' => 'TEXT',
                               'null' => true,
                        ),
                ));
		$this->dbforge->add_key('access_token',TRUE);
		$this->dbforge->create_table($this->_table_name, TRUE);
	}

	public function down()
	{
		$this->dbforge->drop_table($this->_table_name, TRUE);
	}

}

?>
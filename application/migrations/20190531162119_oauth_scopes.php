<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_oauth_scopes extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "oauth_scopes";

	public function up()
	{
		$this->dbforge->add_field(array(
                        'scope' => array(
                                'type' => 'TEXT',
                        ),
                        'is_default' => array(
                                'type' => 'INT',
                                'constraint' => '11',
                        ),
                   
                ));
		$this->dbforge->create_table($this->_table_name, TRUE);

		$data = array(
            array(
            	'scope' => "userinfo",
                'is_default' => "1",
            ),
            array(
            	'scope' => "file",
                'is_default' => "0",
            ),
            array(
            	'scope' => "node",
                'is_default' => "0",
            ),
            array(
            	'scope' => "cloud",
                'is_default' => "0",
            ),
            array(
            	'scope' => "share",
                'is_default' => "0",
            ),
        );
         
    	$this->db->insert_batch('oauth_scopes', $data);

	}

	public function down()
	{
		$this->dbforge->drop_table($this->_table_name, TRUE);
	}

}

?>
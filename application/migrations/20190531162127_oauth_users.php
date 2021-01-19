<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_oauth_users extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "oauth_users";

	public function up()
	{
		$this->dbforge->add_field(array(
                        'id' => array(
                                'type' => 'INT',
                                'constraint' => '11',
                                'unsigned' => TRUE,
                                'auto_increment' => TRUE
                        ),
                        'username' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                        ),
                        'password' => array(
                                'type' => 'TEXT',
                        ),
                        'nombre' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                        ),
                        'apellido_paterno' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                        ),
                        'apellido_materno' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                        ),                       
                ));
		$this->dbforge->add_key('id',TRUE);
		$this->dbforge->create_table($this->_table_name, TRUE);

      $data = array(
              array(
                'username' => "alfonso",
                'password' => '$2a$08$kOoVJ8H5AAKHJeJC6/B2XeFSI.SiTTTpEXI85jaHXdykz/aQ3kDfO',
                'nombre' => "Alfonso",
                'apellido_paterno' => "Mendoza",
                'apellido_materno' => "Mendoza",
              ),
         );
         
      $this->db->insert_batch('oauth_users', $data);

	}

	public function down()
	{
		$this->dbforge->drop_table($this->_table_name, TRUE);
	}

}

?>
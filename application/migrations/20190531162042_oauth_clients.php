<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_oauth_clients extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "oauth_clients";

	public function up()
	{
		$this->dbforge->add_field(array(
                        'client_id' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                        ),
                        'client_secret' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                        ),
                        'redirect_uri' => array(
                               'type' => 'TEXT',
                               'null' => true,
                        ),
                         'grant_types' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                        ),
                        'scope' => array(
                               'type' => 'TEXT',
                               'null' => true,
                        ),
                        'user_id' => array(
                               'type' => 'VARCHAR',
                               'constraint' => '255',
                               'null' => true,
                        ),
                        
                ));
		$this->dbforge->add_key('client_id',TRUE);
		$this->dbforge->create_table($this->_table_name, TRUE);

    $data = array(
              array(
                'client_id' => "client2",
                'client_secret' => "pass2",
                'redirect_uri' => "http://homeway.me/",
                'grant_types' => "authorization_code",
                'scope' => "file node userinfo cloud",
                'user_id' => "xiaocao",
              ),
              array(
                'client_id' => "testclient",
                'client_secret' => "testpass",
                'redirect_uri' => "http://homeway.me/",
                'grant_types' => "client_credentials password authorization_code refresh_token",
                'scope' => "file node userinfo cloud",
                'user_id' => "xiaocao",
              ),
         );
         
    $this->db->insert_batch('oauth_clients', $data);
    
	}

	public function down()
	{
		$this->dbforge->drop_table($this->_table_name, TRUE);
	}

}

?>
<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_rvoe extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "rvoe";

	public function up()
	{
		$this->dbforge->add_field(array(
                'id' => array(
                        'type' => 'INT',
                        'constraint' => '11',
                        'unsigned' => TRUE,
                        'auto_increment' => TRUE
                ),
                'numero' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '255',
                ),
                'fechaExpedicion' => array(
                        'type' => 'DATETIME',
                ),
                'idCarrera' => array(
                        'type' => 'INT',
                        'constraint' => '11',
                ),                    
        ));
		$this->dbforge->add_key('id',TRUE);
		$this->dbforge->create_table($this->_table_name, TRUE);
	}

	public function down()
	{
		$this->dbforge->drop_table($this->_table_name, TRUE);
	}

}

?>
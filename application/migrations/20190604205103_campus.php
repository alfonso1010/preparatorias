<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_campus extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "campus";

	public function up()
	{
		$this->dbforge->add_field(array(
                'idCampus' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '45',
                ),
                'campus' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '255',
                ),
                'idNombreInstitucion' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '45',
                ),   
                
                                  
        ));
		$this->dbforge->add_key('idCampus',TRUE);
		$this->dbforge->create_table($this->_table_name, TRUE);
	}

	public function down()
	{
		$this->dbforge->drop_table($this->_table_name, TRUE);
	}

}

?>
<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_ipes extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "ipes";

	public function up()
	{
		$this->dbforge->add_field(array(
                        'idNombreInstitucion' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '45',
                        ),
                        'idEntidadFederativa' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '45',
                        ),
                        'nombreInstitucion' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),                    
                ));
		$this->dbforge->add_key('idNombreInstitucion',TRUE);
		$this->dbforge->create_table($this->_table_name, TRUE);
	}

	public function down()
	{
		$this->dbforge->drop_table($this->_table_name, TRUE);
	}

}

?>
<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_responsable_institucion extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "responsable_institucion";

	public function up()
	{
		$this->dbforge->add_field(array(
                        'id' => array(
                                'type' => 'INT',
                                'constraint' => '11',
                                'unsigned' => TRUE,
                                'auto_increment' => TRUE
                        ),
                        'nombre' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                        ),
                        'curp' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                        ),
                        'primerApellido' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                        ),
                        'segundoApellido' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                        ), 
                        'id_cargo' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '45',
                        ), 
                        'idCampus' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '45',
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
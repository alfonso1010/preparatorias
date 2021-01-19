<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_alumnos extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "alumnos";

	public function up()
	{
		$this->dbforge->add_field(array(
                        'numeroControl' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '255',
                        ),
                        'curp' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                        ),
                        'nombre' => array(
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
                        'foto' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                        ),
                        'idGenero' => array(
                                'type' => 'INT',
                                'constraint' => '11',
                        ), 
                        'fechaNacimiento' => array(
                                'type' => 'DATETIME',
                        ),  
                        'idCampus' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '45',
                        ),
                        'idCarrera' => array(
                                'type' => 'INT',
                                'constraint' => '11',
                        )                 
                ));
		$this->dbforge->add_key('numeroControl',TRUE);
		$this->dbforge->create_table($this->_table_name, TRUE);
	}

	public function down()
	{
		$this->dbforge->drop_table($this->_table_name, TRUE);
	}

}

?>
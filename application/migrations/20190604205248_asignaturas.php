<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_asignaturas extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "asignaturas";

	public function up()
	{
		$this->dbforge->add_field(array(
                'numeroControlAlumno' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '255',
                ), 
                'total' => array(
                        'type' => 'INT',
                        'constraint' => '11',
                ),
                'asignadas' => array(
                        'type' => 'INT',
                        'constraint' => '11',
                        'null' => true,
                ),
                'promedio' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '45',
                        'null' => true,
                ),
                'totalCreditos' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '45',
                ),
                'creditosObtenidos' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '45',
                        'null' => true,
                ),   
                           
        ));
		$this->dbforge->add_key('numeroControlAlumno',TRUE);
		$this->dbforge->create_table($this->_table_name, TRUE);
	}

	public function down()
	{
		$this->dbforge->drop_table($this->_table_name, TRUE);
	}

}

?>
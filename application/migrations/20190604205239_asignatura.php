<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_asignatura extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "asignatura";

	public function up()
	{
		$this->dbforge->add_field(array(
                'idAsignatura' => array(
                        'type' => 'INT',
                        'constraint' => '11',
                ),
                'claveAsignatura' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '100',
                ),
                'nombre' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '255',
                ),
                'ciclo' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '255',
                ),
                'calificacion' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '45',
                ),
                'idObservaciones' => array(
                        'type' => 'INT',
                        'constraint' => '11',
                ),
                'idTipoAsignatura' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '255',
                ),
                 'creditos' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '45',
                ),
                'numeroControlAlumno' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '255',
                ),

                           
        ));
		$this->dbforge->add_key('idAsignatura',TRUE);
		$this->dbforge->create_table($this->_table_name, TRUE);
	}

	public function down()
	{
		$this->dbforge->drop_table($this->_table_name, TRUE);
	}

}

?>
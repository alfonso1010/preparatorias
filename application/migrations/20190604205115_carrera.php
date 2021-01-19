<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_carrera extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "carrera";

	public function up()
	{
		$this->dbforge->add_field(array(
                'idCarrera' => array(
                        'type' => 'INT',
                        'constraint' => '11',
                ),
                'claveCarrera' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '45',
                ),
                'nombreCarrera' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '255',
                ),
                'idTipoPeriodo' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '45',
                ),
                'clavePlan' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '255',
                ),
                'idNivelEstudios' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '45',
                ),
                'calificacionMinima' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '45',
                        'default' => "5"
                ), 
                'calificacionMaxima' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '45',
                        'default' => '10'
                ),  
                'calificacionMinimaAprobatoria' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '45',
                ),   
                'idCampus' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '45',
                ),                    
        ));
		$this->dbforge->add_key('idCarrera',TRUE);
		$this->dbforge->create_table($this->_table_name, TRUE);
	}

	public function down()
	{
		$this->dbforge->drop_table($this->_table_name, TRUE);
	}

}

?>
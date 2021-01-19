<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_xml extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "xml";

	public function up()
	{
		$this->dbforge->add_field(array(
                'id' => array(
                        'type' => 'INT',
                        'constraint' => '11',
                        'unsigned' => TRUE,
                        'auto_increment' => TRUE
                ),
                'version' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '20',
                        'default' => '2.0'
                ),
                'tipoCertificado' => array(
                        'type' => 'INT',
                        'constraint' => '11',
                        'default' => '5'
                ),
                'folioControl' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '255',
                ),
                'sello' => array(
                        'type' => 'TEXT',
                ),   
                'certificadoResponsable' => array(
                        'type' => 'TEXT',
                ),  
                'noCertificadoResponsable' => array(
                        'type' => 'TEXT',
                ),
                'xmlns' => array(
                        'type' => 'VARCHAR',
                        'constraint' => '255',
                        'default' => "https://www.siged.sep.gob.mx/certificados/"
                ),    
                'idNombreInstitucion' => array(
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
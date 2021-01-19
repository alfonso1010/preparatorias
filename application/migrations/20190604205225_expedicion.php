<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_expedicion extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "expedicion";

	public function up()
	{
		$this->dbforge->add_field(array(
                        'id' => array(
                                'type' => 'INT',
                                'constraint' => '11',
                                'unsigned' => TRUE,
                                'auto_increment' => TRUE
                        ),
                        'idTipoCertificacion' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '45',
                        ),
                        'tipoCertificacion' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '80',
                                'null' => true,
                        ),
                        'fecha' => array(
                                'type' => 'DATETIME'
                        ),
                        'idLugarExpedicion' => array(
                                'type' => 'VARCHAR',
                                'constraint' => '45',
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
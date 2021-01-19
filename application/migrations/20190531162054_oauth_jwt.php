<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_oauth_jwt extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	protected $_table_name = "oauth_jwt";

	public function up()
	{
	}

	public function down()
	{
		$this->dbforge->drop_table($this->_table_name, TRUE);
	}

}

?>
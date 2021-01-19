<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require 'Api.php';


class Institucion extends Api {

  public $table_name = "ipes";
  public $coulumna_id = "idNombreInstitucion";
  public $name_rules = "rules/user";

  	public function __construct() {
        parent::__construct();
    }

}
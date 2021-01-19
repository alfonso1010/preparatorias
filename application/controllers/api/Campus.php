<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require 'Api.php';


class Campus extends Api {

  public $table_name = "campus";
  public $coulumna_id = "idCampus";
  public $name_rules = "rules/user";
  public $search = "";

  public function __construct() {
      parent::__construct();
      $data = $this->get();
      if(isset($data['id_institucion'])){
      	$this->search = "idNombreInstitucion = ".$data['id_institucion'];
      }
  }

}
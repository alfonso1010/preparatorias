<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require 'Api.php';


class Alumnos extends Api {

  public $table_name = "alumnos";
  public $coulumna_id = "numeroControl";
  public $name_rules = "rules/user";
  public $search = "";

  public function __construct() {
      parent::__construct();
      $data = $this->get();
      if(isset($data['id_campus'])){
      	$this->search = "idCampus = ".$data['id_campus'];
      }
  }

}
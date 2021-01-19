<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require 'Api.php';


class User extends Api {

  public $table_name = "oauth_users";
  public $coulumna_id = "id";
  public $name_rules = "rules/user";

  public function __construct() {
      parent::__construct();
  }

}
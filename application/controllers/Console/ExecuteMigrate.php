<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ExecuteMigrate extends CI_Controller {

	public function __construct(){
        parent::__construct();
    }

	public function index(){	
		 $this->load->library('migration');

         $dir = APPPATH."/migrations/";

        /* Hide this */
        $hideName = array('.','..','.DS_Store');    

        // Sort in ascending order - this is default
        $files = scandir($dir);
        /* While this to there no more files are */
        foreach($files as $filename) {
            if(!in_array($filename, $hideName)){
               /* echo the name of the files */
               //echo "$filename<br>";
               $nombre = explode("_", $filename);
               if ($this->migration->version($nombre[0]) === FALSE)
                {
                        show_error($this->migration->error_string());
                }else{
                    print_r("Migrate $filename aplicado con éxito <br>");
                }
            }
        } die();
		 

        
		
	}

	
}

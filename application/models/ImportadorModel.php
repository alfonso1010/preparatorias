<?php

class ImportadorModel extends CI_Model {


	// model constructor function
	function __construct() {
	    parent::__construct(); // call parent constructor
	    $this->load->database();
	}
	
	public function insertarMuchos($tabla,$data){
		$this->db->insert_batch($tabla, $data);
	}

	public function getUltimaExpedicion(){
		$query = $this->db->query("
			SELECT MAX(id) as id
			FROM expedicion
		");
		if ( is_array($query->result_array())) {
			return $query->result_array();
		}
	}


	public function eliminaExpedicion(){
		$this->db->truncate('expedicion'); 
	}



	public function buscaElemento($tabla,$key,$id,$key2 = null,$valorkey2 = null){
		$this->db->select('*');
	    $this->db->from($tabla);
	    $this->db->where($key, $id );
	    if(!is_null($key2) && !is_null($valorkey2)){
	    	$this->db->where($key2, $valorkey2 );
	    }
	    $query = $this->db->get();

	    if ( $query->num_rows() > 0 )
	    {
	        $row = $query->row_array();
	        return $row;
	    }else{
	    	return [];
	    }

	}

	public function eliminaElemento($tabla,$key,$id){
		$this->db->delete($tabla, array($key => $id)); 
	}

	public function eliminaElementos($tabla,$key,$ids){
		$this->db->where_in($key, $ids);
        $this->db->delete($tabla);
	}

}

?>



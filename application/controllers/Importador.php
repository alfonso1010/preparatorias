<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use PhpOffice\PhpSpreadsheet\IOFactory;

use Box\Spout\Reader\ReaderFactory;
use Box\Spout\Common\Type;

class Importador extends CI_Controller {


    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        if (!validarUsuario($this->session->userdata())) {
            //print_r("malo");
            redirect('/welcome/index');
        }
        $this->load->model('importadorModel');
        $this->load->model('generico' , 'generico');
    }

    public function index()
    {   
        $data = [
            'active_inicio' => 'active',
            'titulo' => 'Importador',
            'subtitulo' => '',
            'msj' =>  [] ,
            'error' => true
        ];
        $this->load->view('importador/index',$data);
    }
    
  public function vaciar()
    {   
        $instituciones =  $this->generico->obtenerRegistros([
                      'select' => '*',
                      'from' => "ipes",
                    ]);
        $data = [
            'active_vaciar' => 'active',
            'titulo' => 'Limpieza de tablas',
            'subtitulo' => '',
            'msj' =>  [] ,
            'error' => true,
            "instituciones" => $instituciones
        ];
        $this->load->view('importador/vaciar',$data);
    }

    public function confirmareliminar()
    {   
        $data = $this->input->post();
        $errores = "";
        if(isset($data['institucion']) && isset($data['password']) ){
            if($data['password'] == "cpi2020*"){
                $busca_institucion = $this->generico->obtenerRegistros([
                  'select' => '*',
                  'from' => "ipes",
                  'where' => "WHERE idNombreInstitucion = '".$data['institucion']."'"
                ]);
                $busca_campus = $this->generico->obtenerRegistros([
                  'select' => '*',
                  'from' => "campus",
                  'where' => "WHERE idNombreInstitucion = '".$data['institucion']."'"
                ]);
                foreach ($busca_campus as $key => $campus) {
                    //eliminar
                    $elimina_responsables = $this->generico->eliminarRegistros([
                      'tabla' => 'responsable_institucion',
                      'columna' => "idCampus",
                      'valor' => $campus['idCampus']
                    ]);
                    $elimina_carreras = $this->generico->eliminarRegistros([
                      'tabla' => 'carrera',
                      'columna' => "idCampus",
                      'valor' => $campus['idCampus']
                    ]);
                    $elimina_rvoe = $this->generico->eliminarRegistros([
                      'tabla' => 'rvoe',
                      'columna' => "idCampus",
                      'valor' => $campus['idCampus']
                    ]);
                    $busca_alumnos = $this->generico->obtenerRegistros([
                      'select' => '*',
                      'from' => "alumnos",
                      'where' => "WHERE idCampus = '".$campus['idCampus']."'"
                    ]);
                    foreach ($busca_alumnos as $key => $alumno) {
                        $elimina_expedicion = $this->generico->eliminarRegistros([
                          'tabla' => 'expedicion',
                          'columna' => "id ",
                          'valor' => $alumno['idExpedicion']
                        ]);
                        $elimina_asignaturas = $this->generico->eliminarRegistros([
                          'tabla' => 'asignaturas',
                          'columna' => "numeroControlAlumno ",
                          'valor' => $alumno['numeroControl']
                        ]);
                        $elimina_asignatura = $this->generico->eliminarRegistros([
                          'tabla' => 'asignatura',
                          'columna' => "numeroControl",
                          'valor' => $alumno['numeroControl']
                        ]);
                    }
                    $elimina_alumnos = $this->generico->eliminarRegistros([
                      'tabla' => 'alumnos',
                      'columna' => "idCampus",
                      'valor' => $campus['idCampus']
                    ]);
                }
                //eliminar xml
                $elimina_xml = $this->generico->eliminarRegistros([
                  'tabla' => 'xml',
                  'columna' => "idNombreInstitucion",
                  'valor' => $data['institucion']
                ]);
                $elimina_campus = $this->generico->eliminarRegistros([
                  'tabla' => 'campus',
                  'columna' => "idNombreInstitucion",
                  'valor' => $data['institucion']
                ]);
                $elimina_ipes = $this->generico->eliminarRegistros([
                  'tabla' => 'ipes',
                  'columna' => "idNombreInstitucion",
                  'valor' => $data['institucion']
                ]);
                $instituciones =  $this->generico->obtenerRegistros([
                      'select' => '*',
                      'from' => "ipes",
                    ]);
                $data = [
                    'active_vaciar' => 'active',
                    'titulo' => 'Limpieza de tablas',
                    'subtitulo' => '',
                    'msj' =>  [] ,
                    'error' => false,
                    "instituciones" => $instituciones
                ];
                $this->load->view('importador/vaciar',$data);

            }else{
                $errores = "Password incorrecto";
                $instituciones =  $this->generico->obtenerRegistros([
                      'select' => '*',
                      'from' => "ipes",
                    ]);
                $data = [
                    'active_vaciar' => 'active',
                    'titulo' => 'Limpieza de tablas',
                    'subtitulo' => '',
                    'msj' =>  $errores ,
                    'error' => true,
                    "instituciones" => $instituciones
                ];
                $this->load->view('importador/vaciar',$data);
            }
        }
        
    }

    
     public function subir()
    {   
        $data = $this->input->post();
        $msj = [];
        if (isset($data['submit'])) {           
            $reader = ReaderFactory::create(Type::XLSX);
            $reader->open($_FILES['file']['tmp_name']);
            $hoja1 = [];
            $hoja2 = [];
            $hoja3 = [];
            $hoja4 = [];
            $hoja5 = [];
            $hoja6 = [];
            $hoja7 = [];
            $hoja8 = [];
            $hoja9 = [];
            $hoja10 = [];
            $hoja55 = [];
            $hoja88 = [];
            $error = false;
            $id_institucion;
            $id_campus;


            foreach ($reader->getSheetIterator() as $hoja =>  $sheet) {
                foreach ($sheet->getRowIterator() as $row => $value) {
                    if ($row > 1 && $value[0] != ""  ) {
                        if($hoja == 1){
                            $id_institucion =  trim($value[0]);
                            $buscaipes = $this->importadorModel->buscaElemento("ipes","idNombreInstitucion",$value[0]);
                            if(empty($buscaipes)){
                                $hoja1[] = array(
                                    'idNombreInstitucion' => trim($value[0]),
                                    'idEntidadFederativa' => trim($value[1]),
                                    'nombreInstitucion' => trim($value[2])
                                );
                            }
                            
                        }else if($hoja == 2){
                            if($id_institucion != trim($value[1]) ){
                                $error = true;
                                $msj[] = "idNombreInstitucion de xml en la fila $row es incorrecto.";
                            }

                            $buscaxml = $this->importadorModel->buscaElemento("xml","idNombreInstitucion",trim($value[1]) );
                            if(empty($buscaxml)){
                                $hoja2[] = array(
                                    'version' => 2.0,
                                    'tipoCertificado' => 5,
                                    'folioControl' => "",
                                    'sello' => "",
                                    'certificadoResponsable' => "",
                                    'noCertificadoResponsable' => trim($value[0]),
                                    'xmlns' => "https://www.siged.sep.gob.mx/certificados/",
                                    'idNombreInstitucion' => trim($value[1])
                                ); 
                            }
                        }else if($hoja == 3){
                            if($id_institucion != trim($value[2]) ){
                                $error = true;
                                $msj[] = "idNombreInstitucion de campus  en la fila $row es incorrecto.";
                            }
                            
                            $id_campus = trim($value[0]);
                            $buscacampus = $this->importadorModel->buscaElemento("campus","idCampus",trim($value[0]) );
                            if(empty($buscacampus)){
                                $hoja3[] = array(
                                    'idCampus' => trim($value[0]),
                                    'campus' => trim($value[1]),
                                    'idNombreInstitucion' => trim($value[2])
                                );
                            }
                        }else if($hoja == 4){
                            if($id_campus != trim($value[5]) ){
                                $error = true;
                                $msj[] = "idCampus de responsable_institucion  en la fila $row es incorrecto.";
                            }
                            
                            $buscaresponsable = $this->importadorModel->buscaElemento("responsable_institucion","curp",trim($value[0]) );
                            if(empty($buscaresponsable)){
                                $hoja4[] = array(
                                    'curp' => trim($value[0]),
                                    'nombre' => trim($value[1]),
                                    'primerApellido' => trim($value[2]),
                                    'segundoApellido' => trim($value[3]),
                                    'id_cargo' => trim($value[4]),
                                    'idCampus' => trim($value[5])
                                );
                            }

                        }else if($hoja == 5){
                            if($id_campus != trim($value[6]) ){
                                $error = true;
                                $msj[] = "idCampus de carrera  en la fila $row es incorrecto.";
                            }

                            $hoja55[] = array(
                                'idCarrera' => trim($value[0]),
                                'claveCarrera' => trim($value[1]),
                                'idTipoPeriodo' => trim($value[2]),
                                'clavePlan' => trim($value[3]),
                                'idNivelEstudios' => trim($value[4]),
                                'calificacionMinima' => 5,
                                'calificacionMaxima' => 10,
                                'calificacionMinimaAprobatoria' => (double)$value[5],
                                'idCampus' => trim($value[6])
                            );
                            
                            $buscacarrera = $this->importadorModel->buscaElemento("carrera","idCarrera",trim($value[0]),"idCampus",trim($value[6]) );
                            if(empty($buscacarrera)){
                                $hoja5[] = array(
                                    'idCarrera' => trim($value[0]),
                                    'claveCarrera' => trim($value[1]),
                                    'idTipoPeriodo' => trim($value[2]),
                                    'clavePlan' => trim($value[3]),
                                    'idNivelEstudios' => trim($value[4]),
                                    'calificacionMinimaAprobatoria' => (double)$value[5],
                                    'idCampus' => trim($value[6]),
                                    'numeroRvoe' => trim($value[7])
                                );
                            }

                        }else if($hoja == 6){
                            $fechaExpedicion = "";
                            if($id_campus != trim($value[3]) ){
                                $error = true;
                                $msj[] = "idCampus de rvoe  en la fila $row es incorrecto.";
                            }
                            $busca_carrera = searchMultiArray(trim($value[2]), $hoja55,'idCarrera');
                            if($busca_carrera == 1){
                                $error = true;
                                $msj[] = "idCarrera de rvoe  en la fila $row es incorrecto.";
                            }

                            if( !is_object($value[1])  ){
                                $error = true;
                                $msj[] = "fechaExpedicion de rvoe  en la fila $row es incorrecto.";
                            }else{
                                $fechaExpedicion = date_format($value[1], 'Y-m-d');
                            }

                            $buscarvoe = $this->importadorModel->buscaElemento("rvoe","idCarrera",trim($value[2]),"idCampus",trim($value[3]) );
                            if(empty($buscarvoe)){
                                $hoja6[] = array(
                                    'numero' => trim($value[0]),
                                    'fechaExpedicion' => $fechaExpedicion,
                                    'idCarrera' => trim($value[2]),
                                    'idCampus' => trim($value[3]),
                                    'clavePlan' => isset($value[4])?trim($value[4]):""
                                );
                            }

                        }else if($hoja == 7){
                            $fecha = "";
                            if( !is_object($value[2]) && $value[2] != ""  ){
                                $error = true;
                                $msj[] = "fecha de expedici¨®n  en la fila $row es incorrecto.";
                            }else{
                                //$this->importadorModel->eliminaExpedicion();
                                $fecha = date_format($value[2], 'Y-m-d');
                                $hoja7[] = array(
                                    'id' => trim($value[0]),
                                    'idTipoCertificacion' => trim($value[1]),
                                    'fecha' => $fecha,
                                    'idLugarExpedicion' => trim($value[3])
                                );
                                
                            }
                        }else if($hoja == 8){
                            $fechaNacimiento = "";
                            $busca_expedicion = searchMultiArray(trim($value[9]), $hoja7,'id');
                            if($busca_expedicion == 1){
                                $error = true;
                                $msj[] = "idExpedicion de alumno  en la fila $row es incorrecto.";
                            }

                            if($id_campus != trim($value[8]) ){
                                $error = true;
                                $msj[] = "idCampus de alumno  en la fila $row es incorrecto.";
                            }

                            $busca_carrera = searchMultiArray(trim($value[7]), $hoja55,'idCarrera');
                            if($busca_carrera == 1){
                                $error = true;
                                $msj[] = "idCarrera de alumno  en la fila $row es incorrecto.";
                            }

                            if( !is_object($value[6]) ){
                                $error = true;
                                $msj[] = "fechaNacimiento  en la fila $row es incorrecto.";
                            }else{
                                $fechaNacimiento = date_format($value[6], 'Y-m-d');
                            }

                            $hoja88[] = array(
                                'numeroControl' => trim($value[0]),
                                'curp' => trim($value[1]),
                                'nombre' => trim($value[2]),
                                'primerApellido' => trim($value[3]),
                                'segundoApellido' => trim($value[4]),
                                'idGenero' => trim($value[5]),
                                'foto' => "",
                                'fechaNacimiento' => $fechaNacimiento,
                                'idCarrera' => trim($value[7]),
                                'idCampus' => trim($value[8]),
                                'idExpedicion' => trim($value[9]),
                                'folioControl' => trim($value[10])
                            );

                            $buscaralumno = $this->importadorModel->buscaElemento("alumnos","numeroControl",trim($value[0]),"curp",trim($value[1]) );
                            if(empty($buscaralumno)){
                                $hoja8[] = array(
                                    'numeroControl' => trim($value[0]),
                                    'curp' => trim($value[1]),
                                    'nombre' => trim($value[2]),
                                    'primerApellido' => trim($value[3]),
                                    'segundoApellido' => trim($value[4]),
                                    'idGenero' => trim($value[5]),
                                    'foto' => "",
                                    'fechaNacimiento' => $fechaNacimiento,
                                    'idCarrera' => trim($value[7]),
                                    'idCampus' => trim($value[8]),
                                    'idExpedicion' => trim($value[9]),
                                    'folioControl' => trim($value[10]),
                                    'clavePlan' => isset($value[11])?trim($value[11]):""
                                );
                            }

                        }else if($hoja == 9){
                            $busca_alumno = searchMultiArray(trim($value[7]), $hoja88,'numeroControl');
                            if($busca_alumno == 1){
                                $error = true;
                                $msj[] = "numeroControlAlumno de asignatura  en la fila $row es incorrecto.";
                            }
                            if($value[4] <= 0 | $value[4] == "" ){
                                $value[4] = 100;
                            }

                            $buscarasignatura = $this->importadorModel->buscaElemento("asignatura","idAsignatura",trim($value[0]),"numeroControl",trim($value[7]));

                            if(empty($buscarasignatura)){
                                $hoja9[] = array(
                                    'idAsignatura' => trim($value[0]),
                                    'claveAsignatura' => trim($value[1]),
                                    'ciclo' => trim($value[2]),
                                    'calificacion' => (double)$value[3],
                                    'idObservaciones' => trim($value[4]),
                                    'idTipoAsignatura' => trim($value[5]),
                                    'creditos' => (double)$value[6],
                                    'numeroControl' => trim($value[7]),
                                );
                            }

                        }else if($hoja == 10){
                            $busca_alumno = searchMultiArray(trim($value[2]), $hoja88,'numeroControl');
                            if($busca_alumno == 1){
                                $error = true;
                                $msj[] = "numeroControlAlumno de asignaturas  en la fila $row es incorrecto.";
                            }
                            $buscarasignaturas = $this->importadorModel->buscaElemento("asignaturas","numeroControlAlumno",trim($value[2]) );
                            if(empty($buscarasignaturas)){
                                $hoja10[] = array(
                                    'total' => trim($value[0]),
                                    'asignadas' => "",
                                    'promedio' => "",
                                    'totalCreditos' => (double)$value[1],
                                    'creditosObtenidos' => "",
                                    'numeroControlAlumno' => trim($value[2]),
                                );
                            }
                            

                        }
                    }
                }

            }
            if(!$error){

                if(!empty($hoja1)){
                    $this->importadorModel->insertarMuchos("ipes",$hoja1);
                }
                if(!empty($hoja2)){
                    $this->importadorModel->insertarMuchos("xml",$hoja2);
                }
                if(!empty($hoja3)){
                    $this->importadorModel->insertarMuchos("campus",$hoja3);
                }
                if(!empty($hoja4)){
                    $this->importadorModel->insertarMuchos("responsable_institucion",$hoja4);
                }
                if(!empty($hoja5)){
                    $this->importadorModel->insertarMuchos("carrera",$hoja5);
                }
                if(!empty($hoja6)){
                    $this->importadorModel->insertarMuchos("rvoe",$hoja6);
                }
                if(!empty($hoja7)){
                    $this->importadorModel->insertarMuchos("expedicion",$hoja7);
                }
                if(!empty($hoja8)){
                    $this->importadorModel->insertarMuchos("alumnos",$hoja8);
                }
                if(!empty($hoja9)){
                    $this->importadorModel->insertarMuchos("asignatura",$hoja9);
                }
                if(!empty($hoja10)){
                    $this->importadorModel->insertarMuchos("asignaturas",$hoja10);
                }
                
            }
           

            /*
            TRUNCATE TABLE asignaturas;
            TRUNCATE TABLE asignatura;
            TRUNCATE TABLE alumnos;
            TRUNCATE TABLE expedicion;
            TRUNCATE TABLE rvoe;
            TRUNCATE TABLE carrera;
            TRUNCATE TABLE responsable_institucion;
            TRUNCATE TABLE campus;
            TRUNCATE TABLE xml;
            TRUNCATE TABLE ipes;
            */
        }
        $data = [
            'active_inicio' => 'active',
            'titulo' => 'Importador',
            'subtitulo' => '',
            'msj' =>  $msj ,
            'error' => $error
        ];
        $this->load->view('importador/index',$data);
    }


}

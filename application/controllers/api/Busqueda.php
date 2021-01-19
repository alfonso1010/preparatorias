<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require 'Api.php';


class Busqueda extends Api {

  public $table_name = "alumnos";
  public $coulumna_id = "numeroControl";
  public $name_rules = "rules/user";
  public $search = "";

  public function __construct() {
      parent::__construct();
  }

  public function index_get($id = 0) {
      $data = $this->get();
      $requeridos = ['id_institucion','id_campus','alumnos'];
      foreach ($requeridos as $key => $value) {
        if(!isset($data[$value])){
          $this->response([
            'error' => true,
            'msg' => "$value no puede estar vacio."
          ], 422);
        }
      }

      $institucion =  $this->generico->obtenerRegistros([
                      'select' => '*',
                      'from' => "ipes",
                      'where' => "WHERE idNombreInstitucion = ".$data['id_institucion']
                    ]);
      if(isset($institucion[0])){
        $institucion = $institucion[0];
      }else{
        $this->response([
          'error' => true,
          'msg' => "No existe la institución del alumno: ".$data['alumnos']
        ], 422);
      }
      $xml =  $this->generico->obtenerRegistros([
                      'select' => '*',
                      'from' => "xml",
                      'where' => "WHERE idNombreInstitucion = ".$data['id_institucion']
                    ]);
      if(isset($xml[0])){
        $xml = $xml[0];
      }else{
        $this->response([
          'error' => true,
          'msg' => "No existe una configuración de certificados para la institución del alumno: ".$data['alumnos']
        ], 422);
      }

      

      
      $campus =  $this->generico->obtenerRegistros([
                      'select' => '*',
                      'from' => "campus",
                      'where' => "WHERE idCampus = ".$data['id_campus']
                    ]);
      if(isset($campus[0])){
        $campus = $campus[0];
      }else{
        $this->response([
          'error' => true,
          'msg' => "No existe el campus del alumno: ".$data['alumnos']
        ], 422);
      }
      
      $responsable =  $this->generico->obtenerRegistros([
                      'select' => '*',
                      'from' => "responsable_institucion",
                      'where' => "WHERE idCampus = ".$data['id_campus']
                    ]);

      if(isset($responsable[0])){
        $responsable = $responsable[0];
      }else{
        $this->response([
          'error' => true,
          'msg' => "No existe un responsable para el campus del alumno: ".$data['alumnos']
        ], 422);
      }
      $numero_control_string = $data['alumnos'];
      //print_r("WHERE numeroControl = \"$numero_control_string\" " );die();
      $alumno =  $this->generico->obtenerRegistros([
                      'select' => '*',
                      'from' => "alumnos",
                      'where' => "WHERE numeroControl = \"$numero_control_string\" " 
                    ]);

      if(isset($alumno[0])){
        $alumno = $alumno[0];
      }else{
        $this->response([
          'error' => true,
          'msg' => "No existe un alumno con el número de control: ".$data['alumnos']
        ], 422);
      }

      $expedicion =  $this->generico->obtenerRegistros([
                      'select' => '*',
                      'from' => "expedicion",
                      'where' => "WHERE id = '".$alumno['idExpedicion']."'"
                    ]);
      if(isset($expedicion[0])){
        $expedicion = $expedicion[0];
      }else{
        $this->response([
          'error' => true,
          'msg' => "No existe una configuración de certificados para la institución del alumno: ".$data['alumnos']
        ], 422);
      }


      //print_r($alumno);die();
      if(strlen($alumno['clavePlan']) > 1){
        $carrera =  $this->generico->obtenerRegistros([
          'select' => '*',
          'from' => "carrera",
          'where' => "WHERE idCarrera = ".$alumno['idCarrera']." AND clavePlan ='".$alumno['clavePlan']."'"."AND idCampus ='".$data['id_campus']."'"
        ]);
      }else{
        $carrera =  $this->generico->obtenerRegistros([
          'select' => '*',
          'from' => "carrera",
          'where' => "WHERE idCarrera = ".$alumno['idCarrera']."AND idCampus ='".$data['id_campus']."'"
        ]);
      }
     

      if(isset($carrera[0])){
        $carrera = $carrera[0];
      }else{
        $this->response([
          'error' => true,
          'msg' => "No existe la carrera del alumno: ".$data['alumnos']
        ], 422);
      }
      
      $rvoe =  $this->generico->obtenerRegistros([
        'select' => '*',
        'from' => "rvoe",
        'where' => "WHERE idCarrera = ".$carrera['idCarrera']." AND numero = '".$carrera['numeroRvoe']."'"
      ]);
     

      if(isset($rvoe[0])){
        $rvoe = $rvoe[0];
      }else{
        $this->response([
          'error' => true,
          'msg' => "No existe RVOE para la carrera del alumno: ".$data['alumnos']
        ], 422);
      }

      $asignatura =  $this->generico->obtenerRegistros([
                      'select' => 'idAsignatura,claveAsignatura,nombre,ciclo,calificacion,idObservaciones,idTipoAsignatura,creditos',
                      'from' => "asignatura",
                      'where' => "WHERE numeroControl = \"$numero_control_string\" "
                    ]);

      if( empty($asignatura) ){
        $this->response([
          'error' => true,
          'msg' => "No existen asignaturas para el alumno: ".$data['alumnos']
        ], 422);
      }
      
      
       foreach ($asignatura as $key => $value) {
        if($value['calificacion'] == "10.00"){
          $asignatura[$key]['calificacion'] = "10";
        }
      }
      
      //print_r($asignatura);die();
      

      $asignaturas =  $this->generico->obtenerRegistros([
        'select' => '*',
        'from' => "asignaturas",
        'where' => "WHERE numeroControlAlumno = \"$numero_control_string\" "
      ]);
      if(isset($asignaturas[0])){
        $asignaturas = $asignaturas[0];
      }else{
        $this->response([
          'error' => true,
          'msg' => "No existe asignaturas créditos para el alumno: ".$data['alumnos']
        ], 422);
      }

      $asignadas = 0;
      $promedio_asignaturas = 0;
      $creditos_obtenidos = 0;
      $suma_calificaciones = 0;
      if( is_null($asignaturas['promedio']) | $asignaturas['promedio'] == "" | $asignaturas['promedio'] == 0.0  ){
         foreach ($asignatura as $key => $value) {
            $asignadas++;
            $creditos_obtenidos = $creditos_obtenidos + $value['creditos'];
            $suma_calificaciones = $suma_calificaciones + $value['calificacion'];
          }
          $promedio_asignaturas = $suma_calificaciones/$asignadas;

          $array_promedio = explode(".", $promedio_asignaturas);

          $creditos_obtenidos = number_format($creditos_obtenidos, 2);
          if(isset($array_promedio[0]) && isset($array_promedio[1])){
             $promedio_asignaturas = $array_promedio[0].".".substr($array_promedio[1], 0, 2);
          }else{
            $promedio_asignaturas = number_format($promedio_asignaturas, 2);
          }


          $data_asignaturas = [
            'asignadas' => $asignadas,
            'promedio' => $promedio_asignaturas,
            'creditosObtenidos' => $creditos_obtenidos,
          ];

          $datos = $this->generico->modificarRegistros([
            'tabla' => "asignaturas",
            'columna' => "numeroControlAlumno",
            'valor'  => $data['alumnos'],
            'datos' => $data_asignaturas
          ]);
      }

      $asignaturas =  $this->generico->obtenerRegistros([
                      'select' => '*',
                      'from' => "asignaturas",
                      'where' => "WHERE numeroControlAlumno = \"$numero_control_string\" "
                    ]);

      if(isset($asignaturas[0])){
        $asignaturas = $asignaturas[0];
      }else{
        $this->response([
          'error' => true,
          'msg' => "No existe asignaturas créditos para el alumno: ".$data['alumnos']
        ], 422);
      }

      $responsable = [
        "curp" => $responsable['curp'],
        "nombre" => $responsable['nombre'],
        "primerApellido" => $responsable['primerApellido'],
        "segundoApellido" => $responsable['segundoApellido'],
        "idCargo" => $responsable['id_cargo'],
      ];
      unset($xml['id']);
      unset($xml['idNombreInstitucion']);

      $institucion = [
        'idNombreInstitucion' => $institucion['idNombreInstitucion'],
        'idCampus' => $campus['idCampus'],
        "idEntidadFederativa" => $institucion['idEntidadFederativa'],
        "Responsable" => $responsable
      ];

      unset($rvoe['id']);
      unset($rvoe['idCarrera']);
      unset($carrera['idCampus']);
      unset($alumno['idExpedicion']);
      unset($alumno['idCarrera']);
      unset($alumno['foto']);
      unset($alumno['idCampus']);
      unset($expedicion['id']);
      unset($asignaturas['numeroControlAlumno']);

      $asignaturas['Asignatura'] = $asignatura;

      $date_1 = new DateTime($rvoe['fechaExpedicion']);
      $rvoe['fechaExpedicion'] = $date_1->format('Y-m-d\TH:i:s');

      $date_2 = new DateTime($alumno['fechaNacimiento']);
      $alumno['fechaNacimiento'] = $date_2->format('Y-m-d\TH:i:s');

      $date_3 = new DateTime($expedicion['fecha']);
      $expedicion['fecha'] = $date_3->format('Y-m-d\TH:i:s');

      if($asignaturas['promedio'] == 10.00){
        $asignaturas['promedio'] = "10";
      }


      $cadena_original = "||".$xml['version']."|".$xml['tipoCertificado']."|".$institucion['idNombreInstitucion']."|".$institucion['idCampus']."|".$institucion['idEntidadFederativa']."|".$responsable['curp']."|".$responsable['idCargo']."|".$rvoe['numero']."|".$rvoe['fechaExpedicion']."|".$carrera['idCarrera']."|".$carrera['idTipoPeriodo']."|".$carrera['clavePlan']."|".$carrera['idNivelEstudios']."|".$carrera['calificacionMinima']."|".$carrera['calificacionMaxima']."|".$carrera['calificacionMinimaAprobatoria']."|".$alumno['numeroControl']."|".$alumno['curp']."|".$alumno['nombre']."|".$alumno['primerApellido']."|".$alumno['segundoApellido']."|".$alumno['idGenero']."|".$alumno['fechaNacimiento']."|||".$expedicion['idTipoCertificacion']."|".$expedicion['fecha']."|".$expedicion['idLugarExpedicion']."|".$asignaturas['total']."|".$asignaturas['asignadas']."|".$asignaturas['promedio']."|".$asignaturas['totalCreditos']."|".$asignaturas['creditosObtenidos'];

      foreach ($asignatura as $key => $value) {
        
        $cadena_original .= "|".$value['idAsignatura']."|".$value['ciclo']."|".$value['calificacion']."|".$value['idTipoAsignatura']."|".$value['creditos'];
       
      }

      $cadena_original .= "||";

      

      $xml['Ipes'] = $institucion;
      $xml['Rvoe'] = $rvoe;
      $xml['Carrera'] = $carrera;
      $xml['Alumno'] = $alumno;
      $xml['Expedicion'] = $expedicion;
      $xml['Asignaturas'] = $asignaturas;
      $xml['folioControl'] = $alumno['folioControl'];

      $respuesta = [
        'Dec' => $xml,
        'cadena_original' => $cadena_original
      ];

      $this->response(
         $respuesta
      , 200);
    }

}
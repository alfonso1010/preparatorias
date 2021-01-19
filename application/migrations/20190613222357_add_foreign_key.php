<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_add_foreign_key extends CI_Migration {

	/**
	 * Name of the table to be used in this migration!
	 *
	 * @var string
	 */
	
	public function up()
	{
		$this->db->query('ALTER TABLE `expedicion` ADD  CONSTRAINT `fk_expedicion_ipes` FOREIGN KEY (`idNombreInstitucion`) REFERENCES `ipes`(`idNombreInstitucion`) ON DELETE CASCADE ON UPDATE CASCADE;');
		$this->db->query('ALTER TABLE `xml` ADD CONSTRAINT `fk_xml_ipes` FOREIGN KEY (`idNombreInstitucion`) REFERENCES `ipes`(`idNombreInstitucion`) ON DELETE CASCADE ON UPDATE CASCADE;');
		$this->db->query('ALTER TABLE `campus` ADD CONSTRAINT `fk_campus_ipes_1` FOREIGN KEY (`idNombreInstitucion`) REFERENCES `ipes`(`idNombreInstitucion`) ON DELETE CASCADE ON UPDATE CASCADE;');
		$this->db->query('ALTER TABLE `responsable_institucion` ADD CONSTRAINT `fk_responsable_campus` FOREIGN KEY (`idCampus`) REFERENCES `campus`(`idCampus`) ON DELETE CASCADE ON UPDATE CASCADE;');
		$this->db->query('ALTER TABLE `carrera` ADD CONSTRAINT `fk_carrera_ipes` FOREIGN KEY (`idCampus`) REFERENCES `campus`(`idCampus`) ON DELETE CASCADE ON UPDATE CASCADE;');
		$this->db->query('ALTER TABLE `rvoe` ADD CONSTRAINT `fk_rvoe_carrera` FOREIGN KEY (`idCarrera`) REFERENCES `carrera`(`idCarrera`) ON DELETE CASCADE ON UPDATE CASCADE;');
		$this->db->query('ALTER TABLE `alumnos` ADD CONSTRAINT `fk_alumno_campus` FOREIGN KEY (`idCampus`) REFERENCES `campus`(`idCampus`) ON DELETE CASCADE ON UPDATE CASCADE;');
		$this->db->query('ALTER TABLE `alumnos` ADD CONSTRAINT `fk_alumno_carrera` FOREIGN KEY (`idCarrera`) REFERENCES `carrera`(`idCarrera`) ON DELETE CASCADE ON UPDATE CASCADE;');
		$this->db->query('ALTER TABLE `asignatura` ADD CONSTRAINT `fk_asignatura_alumno` FOREIGN KEY (`numeroControlAlumno`) REFERENCES `alumnos`(`numeroControl`) ON DELETE CASCADE ON UPDATE CASCADE;');
		$this->db->query('ALTER TABLE `asignaturas` ADD CONSTRAINT `fk_asignaturas_alumno` FOREIGN KEY (`numeroControlAlumno`) REFERENCES `alumnos`(`numeroControl`) ON DELETE CASCADE ON UPDATE CASCADE;');
	}
	public function down()
	{
		
	}



}

?>
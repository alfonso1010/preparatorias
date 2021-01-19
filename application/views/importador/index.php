<?php $this->load->view('plantillas/header');  ?>


            <div class="block-header">
                <h2><?= $titulo ?></h2>
            </div>

            <!-- Basic Alerts -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                <?= $titulo ?>
                                <small>Con el importador podrás cargar la información de las instituciones y alumnos desde un excel al sistema para generar certificados.</small>
                            </h2>
                        </div>
                        <div class="body">
                          <?php if(!empty($msj)){ ?>
                              <div class="row clearfix" >
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="card">
                                        <div class="header">
                                            <h2 style="color: red">
                                                Por favor corrija los siguientes errores:
                                            </h2>
                                        </div>
                                        <div class="body" style="background-color: white">
                                          <ul>
                                            <?php
                                              foreach ($msj as $key => $value) {
                                                echo '<li style="color: red">'.$value.'</li>';
                                              }
                                            ?>
                                          </ul>
                                        </div>
                                    </div>
                                </div>
                             </div> 
                            <?php } ?> 
                            <?php if( !$error ){ ?>
                              <div class="row clearfix" >
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="card">
                                        <div class="header">
                                            <h2 style="color: green">
                                                Completado
                                            </h2>
                                        </div>
                                        <div class="body" style="background-color: white">
                                          <h3 style="color: green">La importación se realizó con éxito.</h3>
                                        </div>
                                    </div>
                                </div>
                             </div> 
                            <?php } ?> 
                            <div class="font-black text-content portlet-title bg-warning">
                                <div class="bg-warning text-justify">
                                  <strong><em>Antes de importar, es indispensable leer las siguientes instrucciones:
                                  </em></strong>
                                </div>
                                <div>
                                  <ul>
                                    <li>Las extensiones del archivo de Excel a importar son .xlsx".</li>
                                    <li>Es necesario que los datos coincidan con la columna correspondiente
                                    </li>
                                    <li>La estructura del archivo <code>NO</code>
                                        es modificable, solo recibe las columnas que se muestran en el ejemplo.
                                        Si se agregan columnas distintas a estas,
                                        el sistema puede tener un comportamiento inestable y no registrar sus datos.</li>
                                    <li>El importador solo carga archivos con un  máximo de
                                       <strong><em>1000 registros </em></strong> por cada uno.</li>
                                    <li>El tiempo de importación dependerá de los registros que contenga el archivo.</li>
                                    <ul>Al terminar la carga, le mostrará un mensaje del estado de la importacion:</ul>
                                      <ul><strong><font color= "green"><em>Archivo Importado Exitosamente</em>
                                      </font></strong>:
                                        Cuando su archivo fue importado.</ul>
                                      <ul><strong><font color= "red"><em>El archivo importado contiene Errores</em>
                                      </font></strong> :
                                         Cuando su archivo no fue importado porque algunos datos estan vacios.</ul>
                                    <li>Si el archivo contiene filas vacias o el contenido no respeta el tipo de dato
                                      de la estructura del archivo,  el sistema especificará la(s)
                                      <font color= "blue">columna</font> (s) y
                                      <font color= "blue">fila</font> (s) del dato(s) erróneo(s)
                                      en la parte inferior del importador.</li>
                                    <li> <strong><em>Nota:</em></strong>
                                      Puede descargar un archivo de ejemplo, presionando el siguiente botón
                                      <button class="btn btn-success waves-effect">
                                         <b><FONT COLOR="white" >
                                           <a href="<?=  base_url(); ?>assets/layout_alumnos_v4.xlsx" style="color: white; font-size: 14px;" >
                                           Ejemplo de archivo a Importar</a></FONT></b>
                                      </button>  Para visualizar el formato del mismo e importar correctamente
                                      la información que desea.
                                    </li>
                                  </ul>
                                </div>
                            </div>



                            <div class="row clearfix">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="card">
                                        <div class="header">
                                            <h2>
                                                SUBIR LAYOUT
                                            </h2>
                                        </div>
                                        <div class="body">
                                        <form action="subir" id="frmFileUpload" class="dropzone" method="post" enctype="multipart/form-data">
                                                <div class="dz-message">
                                                    <div class="drag-icon-cph">
                                                        <i class="material-icons">touch_app</i>
                                                    </div>
                                                    <h3>Selecciona archivo..</h3>
                                                </div>
                                                <div class="fallback">
                                                    <input name="file" type="file" accept=".xlsx" required />
                                                </div>
                                                <br><br>
                                                <div class="row">
                                                  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                    <button type="submit" name="submit" class="btn bg-teal btn-block btn-lg waves-effect ">Subir</button>
                                                  </div>
                                                </div>
                                                
                                            </form>

                                        </div>
                                    </div>
                                </div>
                            </div>                        
                          </div>
                    </div>
                </div>
            </div>
      


<?php $this->load->view('plantillas/footer');  ?>

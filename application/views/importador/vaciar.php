<?php $this->load->view('plantillas/header');  ?>
<style>
    .bootstrap-select.btn-group.show-tick .dropdown-menu li a span.text {
        margin-left:20px;
    }
</style>

            <div class="block-header">
                <h2><?= $titulo ?></h2>
            </div>

            <!-- Basic Alerts -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>Limpieza de tablas 
                            </h2>
                        </div>
                        <div class="body">
                            <?php
                            if(!is_array($msj)){
                            ?>
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
                                            <?= '<li style="color: red">'.$msj.'</li>'; ?>
                                          </ul>
                                        </div>
                                    </div>
                                </div>
                             </div> 

                            <?php  } ?>
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
                                          <h3 style="color: green">La eliminación se realizó con éxito.</h3>
                                        </div>
                                    </div>
                                </div>
                             </div> 
                            <?php } ?> 
                            <div style="font-size:20px;color:brown">
                                El siguiente botón realiza una limpieza de todas las tablas relacionadas con la institucion seleccionada, su borrado es PERMANENTE y no se puede deshacer
                            </div>      
                            <div class="row" style="margin-left:15px ">
                                <div class="col-xs-12">
                                    <div class="col-sm-5"></div>
                                    <div class="col-sm-4">
                                        <br><br>
                                        <button style="font-size: 25px;" type="button" class="btn btn-danger waves-effect m-r-20" data-toggle="modal" data-target="#defaultModal">Realizar Eliminado</button>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="defaultModal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <form action="confirmareliminar" method="post">
                        <div class="modal-header">
                            <h4 class="modal-title" id="defaultModalLabel">Confirmación</h4>
                        </div>
                        <div class="modal-body">
                             <div class="col-md-12">
                                <p>
                                    <b>Selecciona Institucion</b>
                                </p>
                                <select required name="institucion" class="form-control show-tick" data-live-search="true">
                                    <?php
                                        foreach($instituciones as $row => $value){
                                            echo "<option value='".$value['idNombreInstitucion']."'>".$value['nombreInstitucion']."</option>";
                                        }
                                    ?>
                                </select>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="form-line">
                                        <label>Por favor ingrese contraseña de borrado:</label>
                                        <input required name="password" type="password" class="form-control" placeholder="Password" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6"></div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-danger waves-effect">Eliminar</button>
                            <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">Cerrar</button>
                        </div>
                    </form>
                    </div>
                </div>
            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Modal Structure -->
      
      


<?php $this->load->view('plantillas/footer');  ?>

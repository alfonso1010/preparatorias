 $('#login').submit(function(e) {
    var datos = getDatos(this);
    console.log(datos);
    var response = consumidor(
    					datos.servicio.url,
    					datos.servicio.servicio,
    					datos.servicio.metodo,
    					datos.datos,
    				);
    try {
        if(response.code == 200){
        	window.location.href = datos.servicio.redirect;
        }else{
        	swal(
              'Oops...',
              'Usuario o Contraseña no válidos!',
              'error'
            );
        }
    }  catch (e) {
        swal(
            'Oops...',
            'Ocurrió un error en servidor!',
            'error'
        );
    }
    e.preventDefault();
 });
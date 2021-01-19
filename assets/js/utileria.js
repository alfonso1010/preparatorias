

function consumidor(url, servicio, metodo, datos){
    var response_ajax;
    $.ajax({
        async:false,
        type: "POST",
        data: {'data':datos,'servicio':servicio,'metodo':metodo},
        url: url,
        success: function(reponse) {
            try{
                response_ajax = JSON.parse(reponse);
            } catch (e) {
                response_ajax = reponse;
            }
        }
    });

     try{
        if (response_ajax != undefined) {
            var id =response_ajax.body.replace("\n"," ");
            var id =response_ajax.body.replace('"'," ");
            response_ajax.body = parseInt(id);
        }
    } catch (e) {
        //no hago nada
    }
    
    
    return response_ajax;
}


function getDatos(formulario) {

    var url = $(formulario).attr('data-url');
    var servicio = $(formulario).attr('data-servicio');
    var metodo = $(formulario).attr('data-metodo')
    var redirect = $(formulario).attr('data-redirect')
    var servicio = {
            'url':url,
            'servicio':servicio,
            'metodo':metodo,
            'redirect':redirect
        };
    var datos = {};
    $('form#'+formulario.id+' :input').each( function(index){
        var input = $(this);
        if(input.attr('name') !== undefined){
            var valor = input.val();
            datos[input.attr('name')] = valor.replace(/[^a-zA-Z 0-9.\@]+/g,' ');
            if(input.is(':checkbox')){
                if(input.is(':checked')) {
                    datos[input.attr('name')] = 1;
                }else{
                    datos[input.attr('name')] = 0;
                }
            }
        }
    });
    return {
            'servicio':servicio,
            'datos':datos
        };

}



function eliminar(url){
    swal({
      title: 'Confirmación',
      text: "¿Estas seguro de eliminar ?",
      type: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Vamos, hazlo',
      cancelButtonText: 'Cancelar'
    }).then(function () {
      window.location.href = url;
    });
}


function buscarInputAjax(thisv,url,data){
    var inputVal = $(thisv).val();
    var resultDropdown = $(thisv).siblings(".result");
    if(inputVal.length){
        $.ajax({
            url: url,  
            async:false,
            type: "POST",
            dataType: "html",
            data: data,
            success: function(data){
                $("#result").html(data);
            },
        });
    } else{
        $("#result").empty();
    }
}

function agregarDivInputAjax(thisv,urlDetalle){
    $("#buscador").val("");
    var id = $(thisv).attr("id");
    console.log($(thisv).attr("id"));
    if ($("#c"+id).length) {
      alert("Ya existe");
    } else {
      detalleRegistroAjax(id,urlDetalle);
    }
    $("#result").empty();
}

function detalleRegistroAjax(id,urlDetalle){
        $.ajax({
            url: urlDetalle,  
            async:false,
            type: "POST",
            dataType: "html",
            data: {"id" : id},
            success: function(data){
                $("#detalleBusqueda").append(data);
            },
        });
    }
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Inicio de sesión | MEC</title>
    <!-- Favicon-->
    <link rel="icon" href="<?=  base_url(); ?>assets/favicon.ico" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="<?=  base_url(); ?>assets/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="<?=  base_url(); ?>assets/plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="<?=  base_url(); ?>assets/plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="<?=  base_url(); ?>assets/css/style.css" rel="stylesheet">
</head>

<body class="login-page">
    <div class="login-box">
        <div class="logo">
            <a href="javascript:void(0);"><b>MEC</b></a>
            <small>IPES</small>
        </div>
        <div class="card">
            <div class="body">
                <form class="form" id="login" 
                  method="post"
                  data-url="<?= getUrlControlador('welcome','login') ?>" 
                  data-metodo="<?= METODO_POST ?>"
                  data-redirect="<?= getUrlControlador('importador','index') ?>"
                >
                    <div class="msg">Inicio de Sesión</div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                        <div class="form-line">
                            <input type="email" class="form-control" id="user" name="user" placeholder="Correo Electrónico" required autofocus>
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-line">
                            <input type="password" class="form-control" id="password" name="password" 
                                placeholder="Contraseña" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-8 p-t-5">
                        </div>
                        <div class="col-xs-4">
                            <button class="btn btn-block bg-pink waves-effect" type="submit">Entrar</button>
                        </div>
                    </div>
                    <div class="row m-t-15 m-b--20">
                        <div class="col-xs-6">
                        </div>
                        <div class="col-xs-6 align-right">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Jquery Core Js -->
    <script src="<?=  base_url(); ?>assets/plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="<?=  base_url(); ?>assets/plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="<?=  base_url(); ?>assets/plugins/node-waves/waves.js"></script>


    <!-- Custom Js -->
    <script src="<?=  base_url(); ?>assets/js/admin.js"></script>
    <script src="<?=  base_url(); ?>assets/js/login.js"></script>
    <script src="<?=  base_url(); ?>assets/js/utileria.js"></script>
    <script src="<?=  base_url(); ?>assets/js/sweetalert2.all.min.js"></script>
</body>

</html>
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('getUrl'))
{
    function getUrl()
    {
        return base_url();
    }   
}

if ( ! function_exists('getToken'))
{
    function getToken()
    {
        mt_srand(time());
        mt_srand(time()*10000000);
        $c=mt_rand(0,9999999999);
        $f=mt_rand(0,999);
        $d=$c.$f;
        $d = sha1($d);
        return $d;
    }   
}


if ( ! function_exists('getUrlServicio'))
{
    function getUrlServicio($servicio)
    {
        return base_url()."index.php/".$servicio;
    }   
}

if ( ! function_exists('getUrlControlador'))
{
    function getUrlControlador($controlador,$accion)
    {
        return base_url()."index.php/".$controlador."/".$accion;
    }   
}

if ( ! function_exists('debug1'))
{
    function debug1($data)
    {
        highlight_string("<?php\n\$data =\n" . var_export($data, true) . ";\n?>");die();
    }   
}

if ( ! function_exists('debug'))
{
    function debug($data)
    {
        print_r($data);die();
    }   
}




if ( ! function_exists('consumir'))
{
    function consumir($datos)
        {

            $url = getUrlServicio("Oauth2/PasswordCredentials");
            $metodo = METODO_POST;
            $data = [
                'grant_type' => "password",
                'username' => isset($datos['data']['user'])?$datos['data']['user']:"",
                'password' => isset($datos['data']['password'])?$datos['data']['password']:"",
                'client_id' =>"testclient" ,
                'client_secret' => "testpass",
                'scope' => "userinfo cloud file node",
            ];

            $ch = curl_init(); 
            curl_setopt($ch, CURLOPT_URL,$url);
            curl_setopt($ch, CURLOPT_CUSTOMREQUEST,$metodo);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
            $output = curl_exec($ch);
            $http_status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            curl_close($ch);
            $body = $output;
            if ($http_status != 200) {
                //redirect('/errorServer/index');
            }
            //debug($http_status);
            return ['body' => $body, 'code' => $http_status];
            
        }
}



if ( ! function_exists('aleatorio'))
{
    function aleatorio()
        {

           $aleatorio =  (int) date('YmdHi').rand(10,100).rand(10,100);
           return $aleatorio;
            
        }
}
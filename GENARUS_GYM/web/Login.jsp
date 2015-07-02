<%@page import="gym.modelo.entidad.Usuario"%>
<%@page import="gym.modelo.dao.impl.UsuarioDaoImpl"%>
<%@page import="gym.modelo.dao.UsuarioDao"%>
 <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title></title>
        <link rel="stylesheet"  href="css/estilos.css">


        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    </head>
    <body>
        <br><br><br><br><br><br>

    <article>
        <div class="container well" id="sha">
            <div class="row ">
               <div class="col-xs-12">
                        <div >
                            <img src="recursos/img/logo3.png" class="img-responsive" >
                        </div>
                   
               <div class="col-md-12">
                 <h2 class=" form-signin-heading"><center><strong>Ingresa Aqu&iacute;</strong></center></h2>
               </div>
                <form class="" action="validar.do" method="post">
                 <div class="form-group"><input type="Usuario" class="form-control" placeholder="Usuario" name="usuario" required autofocus></div>
                 <div class="form-group"><input type="password" class="form-control" placeholder="Contrase&ntilde;a" name="password" required></div>
                 <button class="btn btn-lg btn-primary btn-block" type="submit"><strong>Iniciar seci&oacute;n</strong></button>
               </form>                            
             </div>
             </div>
        </div>
       
    </article>  
        <script src="jquery/jquery-1.11.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>
 </body>
</html>

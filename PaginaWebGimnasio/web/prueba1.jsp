<%@include file="WEB-INF/jspf/top.jspf" %>

<div class="container">
    <article class="cuerpo1">
        <div class="row marketing">
            <div class="col-lg-6">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="recursos/img/descarga.jpg" alt="UPEU">
                        </div>
                        <div class="item">
                            <img src="recursos/img/images 1.jpg" alt="UPEU">
                        </div>
                        <div class="item">
                            <img src="recursos/img/images 2.jpg" alt="UPEU">
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <h4 class="titulo1">Bienvenido al Gimnasio</h4>
                <p>Desde esta página web podras realizar todas las gestiones que antes no podías.
                    Si no estas registrado todavía, registrate y disfruta de lo servicios que te ofrece la página</p>

                <div>

                    <div class="container user">

                        <form class="form-inline" role="form">
                            <div class="form-group">
                                <h2 class="form-signin-heading">Ingresa aqui</h2>
                                <label class="sr-only" for="ejemplo_email_2">Email</label>
                                <input type="email" class="form-control" id="ejemplo_email_2"
                                       placeholder="Introduce tu email">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="ejemplo_password_2">Contraseña</label>
                                <input type="password" class="form-control" id="ejemplo_password_2" 
                                       placeholder="Contraseña">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> No cerrar sesión
                                </label>
                            </div>
                            <button type="submit" class="btn btn-default">Entrar</button>
                        </form>
                    </div>
                </div>


            </div>

            <div class="col-lg-6">
                <div class="container ">

                    <div class="table" >
                        <table >

                            <tbody>
                                <tr>
                                    <td>
                                        <form role="form">
                                            <div class="form-group">
                                                <h2 class="form-signin-heading">Registrate</h2>
                                                <label for="ejemplo_email_1">Nombre</label>
                                                <input type="nombre" class="form-control" id="ejemplo_nombre_1"
                                                       placeholder="Introduce tu nombre">
                                            </div>
                                            <div class="form-group">
                                                <label for="ejemplo_password_1">Apellido</label>
                                                <input type="Apellido" class="form-control" id="ejemplo_apellido_1" 
                                                       placeholder="Apellido">
                                            </div>
                                            <div class="form-group">
                                                <label for="ejemplo_password_1">DNI</label>
                                                <input type="DNI" class="form-control" id="ejemplo_DNI_1" 
                                                       placeholder="DNI">
                                            </div>
                                            <div class="form-group">
                                                <label for="ejemplo_password_1">Contraseña</label>
                                                <input type="password" class="form-control" id="ejemplo_password_1" 
                                                       placeholder="Contraseña">
                                            </div>
                                            <div class="form-group">
                                                <label for="ejemplo_password_1">Escribe de nuevo la contrase&ntilde;a</label>
                                                <input type="password" class="form-control" id="ejemplo_password_1" 
                                                       placeholder="Contraseña">
                                            </div>
                                            <button type="submit" class="btn btn-default">Enviar</button>

                                        </form>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>

                </div> 

            </div>
        </div>




    </article>
</div>

<%@include file="WEB-INF/jspf/bottom.jspf" %>
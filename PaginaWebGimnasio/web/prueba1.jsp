<%@include file="WEB-INF/jspf/top.jspf" %>
 
        <article>
          
            <div class="container">

                <div class="row">
                         <SECTION>
                    <div class="col-xs-8">

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
                      
                        <section>
                            <div class="row">
                                <div class="col-xs-8">
                        
                        <h4 class="titulo1">Bienvenido al Gimnasio</h4>
                        <p>Desde esta p&aacute;gina web podras realizar todas las gestiones que antes no pod&iacute;as.
                            Si no estas registrado todav&iacute;a, registrate y disfruta de lo servicios que te ofrece la p&aacute;gina</p>
                            
                              </div>
                              </div>
                         </section> 
                          <section>
                            <div class="row">
                                <div class="col-xs-8"> 
                        
                        <form class="form-signin">
                            <h2 class="form-signin-heading">Ingresa Aqui</h2>
                            <label for="inputUsuario" class="sr-only">Usuario</label>
                            <input type="Ususario" id="inputUsuario" class="form-control" placeholder="Usuario" required autofocus>
                            <label for="inputContrase&ntilde;a" class="sr-only">Contrase&ntilde;a</label>
                            <input type="Contrase&ntilde;a" id="inputPassword" class="form-control" placeholder="Contrase&ntilde;a" required>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="remember-me"> No Cerrar Seci&oacute;n
                                </label>
                            </div>
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
                        </form>
                         </div>
                              </div>
                         </section> 
                        
                    </div>
                    <div class="col-xs-3 ">
                        <div>
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
                                    <label for="ejemplo_password_1">Contrase&ntilde;a</label>
                                    <input type="password" class="form-control" id="ejemplo_password_1" 
                                           placeholder="Contrase&ntilde;a">
                                </div>
                                <div class="form-group">
                                    <label for="ejemplo_password_1">Escribe de nuevo la contrase&ntilde;a</label>
                                    <input type="password" class="form-control" id="ejemplo_password_1" 
                                           placeholder="Contrase&ntilde;a">
                                </div>
                                <button type="submit" class="btn btn-default">Enviar</button>

                            </form>
                        </div>


                    </div>
                     </SECTION>
                </div>
            </div>
             
    </article>

<%@include file="WEB-INF/jspf/bottom.jspf" %>
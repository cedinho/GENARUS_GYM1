<%@include file="WEB-INF/jspf/top.jspf" %>
 
        <article>
            <div class="container">
                <div class="row">
                    <div class="col-xs-7 well" >
                        <section>
                            <div id="myCarousel" class="carousel slide " data-ride="carousel">
                            <ol class="carousel-indicators"> 
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                <li data-target="#myCarousel"
                                data-slide-to="3"
                                <li data-target="#myCarousel" data-slide-to="4"></li>
                                <li data-target="#myCarousel" data-slide-to="5"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="recursos/img/gym_01.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h4></h4>
                                        <p></p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="recursos/img/gym_02.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h4></h4>
                                        <p>
                                    </p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="recursos/img/gym_03.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h4></h4>
                                        <p></p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="recursos/img/gym_04.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h4></h4>
                                        <p></p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="recursos/img/gym_05.jpg" alt="">
                                    <div class="carousel-caption">
                                        <h4></h4>
                                        <p></p>
                                    </div>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                            <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
                        </div>
                        </section>
                        <section>
                             <h4 class="titulo1">Bienvenido al Gimnasio</h4>
                        <p>Desde esta p&aacute;gina web podras realizar todas las gestiones que antes no pod&iacute;as.
                            Si no estas registrado todav&iacute;a, registrate y disfruta de lo servicios que te ofrece la p&aacute;gina</p>
                        </section>
                        <br />
                        <section>
                          <div class="container well" action="#" id="sha">
                             <div class="col-sm-12 form-group">
                                    <h2 class=" col-sm-offset-2 form-signin-heading">Ingresa Aqui</h2>
                                    <br />
                
                                    <input type="nombre" class="form-control" id="ejemplo_nombre_1"
                                           placeholder="Usuario">

                          </div>
                          <div class="col-sm-12 form-group">
                                    
                                    <input type="password" class="form-control" id="ejemplo_password_1" 
                                           placeholder="Contrase&ntilde;a">
                                </div>
                                 <div class="col-sm-offset-2 col-sm-8">
                                 <button class="btn btn-lg btn-primary btn-block" type="sulmit">Aceptar</button>
                               </div>
                                  

                        
                        </section>

                    </div>
                    <div class="container col-xs-offset-1 col-xs-4 well" id="sha">
                        <form role="form">
                                <div class="col-sm-10 form-group">
                                    <h2 class=" col-sm-offset-4 form-signin-heading">Registrate</h2>
                                     <br />
                                    <label for="ejemplo_email_1">Nombre</label>

                                    <input type="nombre" class="form-control" id="ejemplo_nombre_1"
                                           placeholder="Introduce tu nombre">
                                </div>
                                <div class="col-sm-10 form-group">
                                    <label for="ejemplo_password_1">Apellido</label>
                                    <input type="Apellido" class="form-control" id="ejemplo_apellido_1" 
                                           placeholder="Apellido">
                                </div>
                                <div class="col-sm-10 form-group">
                                    <label for="ejemplo_password_1">DNI</label>
                                    <input type="DNI" class="form-control" id="ejemplo_DNI_1" 
                                           placeholder="DNI">
                                </div>
                                <div class="col-sm-10 form-group">
                                    <label for="ejemplo_password_1">Contrase&ntilde;a</label>
                                    <input type="password" class="form-control" id="ejemplo_password_1" 
                                           placeholder="Contrase&ntilde;a">
                                </div>
                                <div class="col-sm-10 form-group">
                                    <label for="ejemplo_password_1">Escribe de nuevo la contrase&ntilde;a</label>
                                    <input type="password" class="form-control" id="ejemplo_password_1" 
                                           placeholder="Contrase&ntilde;a">
                                </div>
                                <div class="col-sm-offset-2 col-sm-10 form-group">
                  
                                <button type="submit" class="btn btn-default">Enviar</button>
                                </div>

                            </form>
                    </div>
                </div>
            </div>


        </article>
          
<%@include file="WEB-INF/jspf/bottom.jspf" %>
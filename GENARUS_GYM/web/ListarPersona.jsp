<%@page import="gym.modelo.dao.PersonaDao"%>
<%@page import="gym.modelo.dao.impl.PersonaDaoImpl"%>
<%@page import="gym.modelo.entidad.Persona"%>
<%@include file="WEB-INF/jspf/top.jspf" %>

<div class="container">
    <%
        String busqueda = request.getParameter("busqueda");
        busqueda = busqueda == null ? "nombres" : busqueda;
        String buscar = request.getParameter("buscar");
        buscar = buscar == null ? "" : buscar;
        String opcion = request.getParameter("opcion");
        opcion = opcion == null ? "" : opcion;
        String id_persona = request.getParameter("id_persona");
        id_persona = id_persona == null ? "" : id_persona;
        String mensaje = "";
        String mensajeError = "";

        if (opcion.equals("1")) {
            PersonaDao dao = new PersonaDaoImpl();
            //elimino un registro de la base de datos
            //clienteDao.eliminarCliente(Integer.parseInt(id));
            if (dao.eliminarPersona(id_persona)) {
                out.println("Se elimino Saticfatoriamente");

            } else {
                mensaje = "ocurrio un error al eliminar";
            }
        }
        
    %>
    <br><br>
    <div class="row">
        <div class="col-md-1"></div>

        <div class="col-md-10">

            <form class="form-horizontal" action="ListarPersona.jsp" method="post" size="10">
                <div class="form-group">
                    <label class="control-label col-sm-3">Busqueda:</label>
                    <div class="col-sm-3">
                        <select class="form-control" name="busqueda">
                            <option value="nombre">Nombre</option>
                            <option value="dni">DNI</option>
                            <option value="telefono">Telefono</option>
                        </select>
                    </div>

                    <div class="col-xs-5">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Buscar" name="buscar">
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-primary">Buscar</button>
                            </span>
                        </div><!-- /input-group -->
                    </div>

                </div> 
            </form>
        </div>
    </div>


    <div class="col-md-1"></div>


    <br>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10" id="aler">
            <br>
            <%                if (!mensajeError.equals("")) {
            %>
            <div class="alert alert-danger"><%=mensajeError%></div> 
            <%}%>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>
<div class="container">

    <!-- Trigger the modal with a button -->
    <center><button type="button" class="btn btn-default btn-lg" id="myBtn">Registrar</button></center>

    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" style="padding:35px 50px;">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4><span class="glyphicon glyphicon-lock"></span> Registrar</h4>
                </div>
                <div class="modal-body" style="padding:40px 50px;">
                    <form role="form" action="#" method="post">
                        <div class="col-xs-4">
                            <a href=""><button type="submit" class="btn btn-primary "><span class="glyphicon glyphicon-user"></span> Usuario</button></a>
                        </div>
                        </form>
                        <form role="form" action="RegistrarPersona.jsp" method="post">
                        <div class="col-xs-4">
                            <a href=""><button type="submit" class="btn btn-success "><span class="glyphicon glyphicon-user"></span> General</button></a>
                        </div>
                          </form>
                    <form role="form" action="RegistrarCliente.jsp" method="post">
                        <div class="col-xs-4">
                            <a href=""><button type="submit" class="btn btn-dangerus "><span class="glyphicon glyphicon-user"></span> Cliente</button></a>
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>

                </div>
            </div>

        </div>
    </div> 
</div>

<div class="container">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10 well">
         
            <div class="table-responsive">

                <table class="table table-striped table-bordered  well">

                    <thead>



                        <tr class="info">
                            <th width="5%">#</th>
                            <th width="25%">Nombres </th>
                            <th width="30%">Apellidos</th>
                            <th width="15%">DNI</th>
                            <th width="8%">Sexo</th>
                            <th width="8%">Telefono</th>
                            <th width="8%">Direcci&oacute;n</th>
                            <th width="20%">Accion</th>

                        </tr>
                    </thead>
                    <tbody>
                        <%

                            int count = 0;
                            PersonaDao dao = new PersonaDaoImpl();

                            for (Persona persona : dao.buscarPersona(busqueda, buscar)) {
                                count++;

                        //evento.getIdEvento();

                        %>


                        <tr>
                    
                    <td><%=count%>.-</td>
                    <td><%=persona.getNombres()%></td>
                    <td><%=persona.getApellidos()%></td>
                    <td><%=persona.getDni()%></td>
                    <td><%=persona.getSexo()%></td>
                    <td><%=persona.getTelefono()%></td>
                    <td><%=persona.getDireccion()%></td>
                    <td align="center"><a href="ListarPersona.jsp?id_persona=<%=persona.getIdPersona()%>&opcion=1"><span class="glyphicon glyphicon-trash" ></span></a></td>
                    <td align="center"><a href="ActualizarPersona.jsp?id_persona=<%=persona.getIdPersona()%>&opcion=2"><span class="glyphicon glyphicon-edit"   ></span></a></td>
                    <td align="center"><a href="RegistrarCliente.jsp?id_persona=<%=persona.getIdPersona()%>"><span class="glyphicon glyphicon-user"   ></span></a></td>
                    </tr>
                    <%}%>
                    </tbody>    

                </table>

            </div>
         
        </div>
        <div class="col-md-1"></div>
    </div>  
</div>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10" id="aler">
        <br>
        <%                if (!mensaje.equals("")) {
        %>
        <div class="alert alert-danger"><%=mensaje%></div> 
        <%}%>
    </div>
    <div class="col-md-1"></div>
</div>
<%@include file="WEB-INF/jspf/bottom.jspf" %>
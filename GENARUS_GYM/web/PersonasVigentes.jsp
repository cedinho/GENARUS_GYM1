<%@page import="gym.modelo.entidad.Personas_Vigentes"%>
<%@page import="gym.modelo.dao.impl.ContratoClienteDaoImpl"%>
<%@page import="gym.modelo.dao.ContratoClienteDao"%>
<%@include file="WEB-INF/jspf/top.jspf" %>

<div class="container">
    <%
        String busqueda = request.getParameter("busqueda"); busqueda = busqueda == null ? "nombre" : busqueda;
        String buscar = request.getParameter("buscar"); buscar = buscar == null ? "" : buscar;
        String opcion = request.getParameter("opcion"); opcion = opcion == null ? "" : opcion;
        String mensaje = "";
        String mensajeError = "";

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
                            <th width="8%" hidden>Id Persona</th>
                            <th width="25%">Nombre </th>
                            <th width="30%">Apellidos</th>
                            <th width="15%">Dias</th>

                        </tr>
                    </thead>
                    <tbody>
                        <%

                            int count = 0;
                            ContratoClienteDao dao = new ContratoClienteDaoImpl();

                            for (Personas_Vigentes pv : dao.ListarVigentes()) {
                                count++;


                        %>


                        <tr>
                    
                    <td><%=count%>.-</td>
                    <td hidden><%=pv.getIdPersona()%></td>
                    <td><%=pv.getNombres()%></td>
                    <td><%=pv.getApellidos()%></td>
                    <td><%=pv.getDias()%></td>
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
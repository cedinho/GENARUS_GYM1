

<%@page import="gym.modelo.dao.impl.UsuarioDaoImpl"%>
<%@page import="gym.modelo.dao.UsuarioDao"%>
<%@page import="gym.modelo.dao.impl.PersonaDaoImpl"%>
<%@page import="gym.modelo.dao.PersonaDao"%>
<%@page import="gym.modelo.entidad.Persona"%>
<%@page import="gym.modelo.entidad.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/jspf/top.jspf" %>
        <%
            PersonaDao dao = new PersonaDaoImpl();
            Persona persona = new Persona();
            Usuario usuario = new Usuario();

            String buscarDni = request.getParameter("buscarDni");
            buscarDni = buscarDni == null ? "" : buscarDni;
            out.println("dni" + buscarDni);

            String id_persona = request.getParameter("id_persona");
            id_persona = id_persona == null ? "" : id_persona;
            out.println("id_persona" + id_persona);
            

            String nombre = request.getParameter("nombre");
            nombre = nombre == null ? "" : nombre;
            out.println("nombre" + nombre);

            String apellidos = request.getParameter("apellidos");
            apellidos = apellidos == null ? "" : apellidos;
            out.println("Apellidos" + apellidos);
     
            String dni = request.getParameter("dni");
            dni = dni == null ? "" : dni;

            out.println("dni" + buscarDni);

            String usuarioo = request.getParameter("usuarioo");
            usuarioo = usuarioo == null ? "" : usuarioo;
            out.println("usuario" + usuarioo);

            String password = request.getParameter("password");
            password = password == null ? "" : password;
            out.println("dni" + password);

            String opcion = request.getParameter("opcion");
            opcion = opcion == null ? "Buscar" : opcion; // isrvepara poder validar si es que se va a inscribir o solo buscar
            out.println("opcion" + opcion);
            String mensaje = "";
            String mensajeError = "";

            if (opcion.equals("Buscar")) {
                if (!buscarDni.equals("")) {
                    persona = dao.buscarPersona(buscarDni);
                    if (persona != null) {
                        id_persona = persona.getIdPersona();
                        nombre = persona.getNombre();
                        apellidos = persona.getApellidos();
                        dni = persona.getDni();
                        opcion = "registrar";
                    } else {
                        mensaje = "La persona no tiene registro Registrar <a href='RegistrarPersona.jsp'>aqui</a>";
                    }

                }
            }
            if (opcion.equals("registrar")) {
                usuario.setIdUsuario(id_persona);
                usuario.setUsuario(usuarioo);
                usuario.setPassword(password);
                usuario.setTipo("2");
                usuario.setEstado("1");
                if (dao.registrarUsuario(usuario)) {
                    response.sendRedirect("InicioSistema.jsp");
                } else {
                    mensajeError = "No se pudo Registrar al usuario debido a que ya existe";
                }
            }

           //oculta hidden
        %>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-3 col-md-3"></div>
                <div class="col-xs-12 col-sm-6 col-md-6 well">
                    <%if (opcion.equals("Buscar")) {%>
                    <form action=" Reg_usuario.jsp " method="post" class="form-horizontal">
                        <table class="table table-condensed">
                            <tr>
                                <td><label class="col-md-12">DNI:</label></td>
                                <td><input type="text" name="buscarDni" placeholder="Ingrese su Dni"  class="form-control"></td>
                                <td><input type="submit" value="Buscar"></td>
                            </tr>

                            <tr>  
                                <td colspan="3"><%=mensaje%></td>
                            </tr> 

                        </table>    
                    </form>
                    <%}%>
                    <%if (opcion.equals("registrar")) {%>
                    <form action=" Reg_usuario.jsp " method="post" class="form-horizontal">
                        <input type="hidden" name="id_persona" value="<%=id_persona%>" class="form-horizontal">
                        <input type="hidden" name="opcion" value="registar" class="form-horizontal">
                        <table>
                            <tr>
                                <td><label class="col-md-12">Nombre</label></td>
                                <td><input type="text" name="nombre" placeholder= "Nombre" value="<%=nombre%>" class="form-control" readonly="true"></td>
                            </tr>
                            <tr>
                                <td><label class="col-md-12">Apellidos</label></td>
                                <td><input type="text" name="apellidos" placeholder= "Apellidos" value="<%=apellidos%>" class="form-control" readonly="true"></td>
                            </tr>
                            <tr>
                                <td><label class="col-md-12">Dni</label></td>
                                <td><input type="text" name="dni" placeholder= "Dni" value="<%=dni%>" class="form-control" readonly="true"></td>
                            </tr>

                            <tr>
                                <td><label class="col-md-12">Nombre usuario</label></td>
                                <td><input type="text" name="usuarioo" placeholder= "Nombre de usuario" class="form-control" ></td>
                            </tr>

                            <tr>
                                <td><label class="col-md-12">password</label></td>
                                <td><input type="password" name="password" placeholder= "password" class="form-control"></td>
                            </tr> 
                            <tr>
                                <td colspan="2"><label><%=mensajeError%></label></td>
                            </tr>
                            <tr>
                                <td colspan="2"><input type="submit" class="btn btn-success" value="Registrar"></td>
                            </tr>
                        </table>
                    </form>
                    <%}%>
                </div> 
                <div class="col-xs-12 col-sm-3 col-md-3"></div>
            </div>
        </div>
<%@include file="WEB-INF/jspf/bottom.jspf" %>
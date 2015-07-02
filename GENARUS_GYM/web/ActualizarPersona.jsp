<%@page import="gym.modelo.entidad.Persona"%>
<%@page import="gym.modelo.dao.impl.PersonaDaoImpl"%>
<%@page import="gym.modelo.dao.PersonaDao"%>
<%@include file="WEB-INF/jspf/top.jspf" %>

<div class="container">
   
    <%

        String opcion = request.getParameter("opcion");
        opcion = opcion == null ? "" : opcion;
        String id_persona = request.getParameter("id_persona");
        id_persona = id_persona == null ? "" : id_persona;
        out.println(id_persona);
        String mensaje = "";

         String nombre = request.getParameter("nombre"); nombre = nombre==null?"":nombre;
         String apellidos = request.getParameter("apellidos"); apellidos = apellidos==null?"":apellidos;
         String dni = request.getParameter("dni"); dni = dni==null?"":dni;
         String sexo = request.getParameter("sexo"); sexo = sexo==null?"":sexo;
         String telefono = request.getParameter("telefono"); telefono = telefono==null?"":telefono;
         String direccion = request.getParameter("direccion"); direccion = direccion==null?"":direccion;
         
         PersonaDao dao = new PersonaDaoImpl();
         Persona persona = new Persona();
         
        
        if(opcion.equals("2")){
        persona = dao.ObtenerPersona(id_persona);
        }
           if(opcion.equals("3")){
           persona.setIdPersona(id_persona);
             persona.setNombre(nombre);
             persona.setApellidos(apellidos);
             persona.setDni(dni);
             persona.setSexo(sexo);
             persona.setTelefono(telefono);
             persona.setDireccion(direccion);
             
             dao.actualizarPersona(persona);
              if (dao.actualizarPersona(persona)) {
               out.println("Se Actualizo correctamente");
               response.sendRedirect("ListarPersona.jsp");
            } else {
               mensaje = "Ocurrio un error al actualizar ";

           }
       
           } 
             
 
       //Envio del bean Cliente hacia el metodo agregar Cliente del DAO
            //clienteDao.agregarCliente(clien);
          
    %>

    <div class="row">      

        <div class="col-sm-6  ">
            <div class="form1">
                <form class="form-horizontal" action="ActualizarPersona.jsp" method="post">
                    <input type="hidden" name="id_persona"  value="<%=persona.getIdPersona()%>" size="10">
                    <input type="hidden" name="opcion"  value="3" size="10">
                    <div class="form-group">
                        <label class="control-label col-xs-3">Nombres:</label>
                        <div class="col-xs-8">
                            <div class="input-group">     
                                <input type="text" class="form-control" placeholder="Nombre"  value="<%=persona.getNombre()%>" name="nombre">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Apellidos:</label>
                        <div class="col-xs-8">
                            <input type="text" class="form-control" placeholder="Apellidos" value="<%=persona.getApellidos()%>" name="apellidos">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">DNI:</label>
                        <div class="col-xs-8">
                            <input type="text" class="form-control" placeholder="Numero de dni" value="<%=persona.getDni()%>" name="dni">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Sexo:</label>
                        <div class="col-xs-3">
                            <label class="radio-inline">
                                <input type="radio" name="sexo" <%if(persona.getSexo().equals("M")){%>checked<%}%> value="<%=persona.getSexo()%>"> Masculino
                            </label>
                        </div>
                        <div class="col-xs-3">
                            <label class="radio-inline">
                                <input type="radio" name="sexo" <%if(persona.getSexo().equals("F")){%>checked<%}%> value="<%=persona.getSexo()%>"> Femenino
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" >Telefono:</label>
                        <div class="col-xs-8">
                            <input type="text" class="form-control" placeholder="Telefono" value="<%=persona.getTelefono()%>" name="telefono">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Dirección:</label>
                        <div class="col-xs-8">
                            <input rows="3" class="form-control" placeholder="Dirección" value="<%=persona.getDireccion()%>" name="direccion">
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-2">           
                        </div>
                        <div class="col-md-7">                           
                            <div class="form-group">
                                <div class="col-xs-offset-3 col-xs-9">
                                    <input type="submit" class="btn btn-primary" value="Enviar">
                                    <input type="reset" class="btn btn-default" value="Limpiar">
                                </div>
                                <br><br><br>            
                            </div>
                        </div>
                        <div class="col-md-3">                       
                        </div>
                    </div>
                </form>
            </div> 

           
        </div>

    </div>
                        </div>


    <%@include file="WEB-INF/jspf/bottom.jspf" %>

<%@page import="gym.modelo.entidad.Persona"%>
<%@page import="gym.modelo.dao.impl.PersonaDaoImpl"%>
<%@page import="gym.modelo.dao.PersonaDao"%>
<%@include file="WEB-INF/jspf/top.jspf" %>
    
       
              
            
               
          
          
   <div class="container">   
         <%
                 PersonaDao dao = new PersonaDaoImpl();
                 Persona persona = new Persona();
           
            
             String nombre = request.getParameter("nombre"); nombre= nombre==null?"":nombre;
             String apellidos = request.getParameter("apellidos"); apellidos= apellidos==null?"":apellidos;
             String dni=request.getParameter("dni");if(dni==null)dni="";
             
             String sexo = request.getParameter("sexo"); sexo= sexo==null?"":sexo;
             String telefono = request.getParameter("telefono"); telefono= telefono==null?"":telefono;
             String direccion = request.getParameter("direccion"); direccion= direccion==null?"":direccion;
             String mensaje = "";
             
             if( !nombre.equals("") && !apellidos.equals("")  && !sexo.equals("")){
             
                 
                 persona.setNombre(nombre);
                 persona.setApellidos(apellidos);
                 persona.setDni(dni);
                 persona.setSexo(sexo);
                 persona.setTelefono(telefono);
                 persona.setDireccion(direccion);

                 if(dao.agregarPersona(persona)){
                     response.sendRedirect("RegistrarPersona.jsp");
                     
                 }else{
                     mensaje = "No se pudo registrar a la persona";
                 }
             }
             
             
        
        %>
  
<div class="row">
    <div class="col-md-12" id="aler">
        <br>
        <%
            if(!mensaje.equals("")){
        %>
        <div class="alert alert-danger"><%=mensaje%></div> 
        <%}%>
    </div>
</div>
    <div class="row">      
            <div class="col-md-2">           
            </div>
            <div class="col-md-8 well">
                <div class="titleform1">
                    <h2>Formulario de Registro</h2>
                </div>
                <br>
                <div class="form1">
                    <form class="form-horizontal" action="RegistrarPersona.jsp" method="post">
                    <div class="form-group">
                        <label class="control-label col-xs-3">Nombre:</label>
                        <div class="col-xs-8">
                            <div class="input-group">     
                            <input type="text" class="form-control" placeholder="Nombre" name="nombre">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Apellidos:</label>
                        <div class="col-xs-8">
                            <input type="text" class="form-control" placeholder="Apellidos" name="apellidos">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">DNI:</label>
                        <div class="col-xs-8">
                            <input type="text" class="form-control" placeholder="Numero de dni" name="dni">
                        </div>
                    </div>
                     <div class="form-group">
                        <label class="control-label col-xs-3">Sexo:</label>
                        <div class="col-xs-3">
                            <label class="radio-inline">
                                <input type="radio" name="sexo" value="M"> Masculino
                            </label>
                        </div>
                        <div class="col-xs-3">
                            <label class="radio-inline">
                                <input type="radio" name="sexo" value="F"> Femenino
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3" >Telefono:</label>
                        <div class="col-xs-8">
                            <input type="text" class="form-control" placeholder="Telefono" name="telefono">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Dirección:</label>
                        <div class="col-xs-8">
                            <input rows="3" class="form-control" placeholder="Dirección" name="direccion">
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
        <%=mensaje%>
            <div class="col-md-2">           
            </div>
    </div>
</div>
    <%@include file="WEB-INF/jspf/bottom.jspf" %>  

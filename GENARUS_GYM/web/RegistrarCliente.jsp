
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="gym.modelo.entidad.CategoriaContrato"%>
<%@page import="gym.modelo.entidad.Persona"%>
<%@page import="gym.modelo.dao.impl.ContratoClienteDaoImpl"%>
<%@page import="gym.modelo.dao.ContratoClienteDao"%>
<%@page import="gym.modelo.entidad.ContratoCliente"%>
<%@page import="gym.modelo.entidad.ContratoCliente"%>
<%@page import="gym.modelo.dao.impl.PersonaDaoImpl"%>
<%@page import="gym.modelo.dao.PersonaDao"%>
<%@page import="gym.modelo.entidad.TipoContrato"%>
<%@include file="WEB-INF/jspf/top.jspf" %>


 <div class="container well">
 	<div class="row">
   <% 
       HttpSession session1 = request.getSession();
           
           String idUsuario = (String)session1.getAttribute("idUsuario");
           
   %>
            <%
           ContratoClienteDao dao = new ContratoClienteDaoImpl(); 
            ContratoCliente cliente = new ContratoCliente();
            
            Persona persona = new Persona();
            String mat = request.getParameter("mat"); mat= mat==null?"":mat;
            String id_persona = request.getParameter("id_persona"); id_persona= id_persona==null?"":id_persona;
            String id_contrato_cliente = request.getParameter("id_contrato_cliente"); id_contrato_cliente= id_contrato_cliente==null?"":id_contrato_cliente;
            String buscarDni = request.getParameter("buscarDni"); buscarDni= buscarDni==null?"":buscarDni;
         
            
            String id_categoria_contrato = request.getParameter("id_categoria_contrato"); id_categoria_contrato= id_categoria_contrato==null?"":id_categoria_contrato;
            String id_tipo_contrato = request.getParameter("id_tipo_contrato"); id_tipo_contrato= id_tipo_contrato==null?"":id_tipo_contrato;
            String monto_total = request.getParameter("monto_total"); monto_total= monto_total==null?"":monto_total;
            String fecha_inicio = request.getParameter("fecha_inicio"); fecha_inicio= fecha_inicio==null?"":fecha_inicio;
            String fecha_fin = request.getParameter("fecha_fin"); fecha_fin= fecha_fin==null?"":fecha_fin;
            String fecha_registro = request.getParameter("fecha_registro"); fecha_registro= fecha_registro==null?"":fecha_registro;
            String mensaje = "";
            String mensajeError = "";
            
            out.println(id_persona);
            out.println(mat);
            if( !id_persona.equals("") && mat.equals("Enviar")){
              Date fecha = new SimpleDateFormat("dd/MM/yyyy").parse(fecha_inicio);
              Date fecha1 = new SimpleDateFormat("dd/MM/yyyy").parse(fecha_fin);
              Date fecha2 = new SimpleDateFormat("dd/MM/yyyy").parse(fecha_registro);
                
              cliente.setIdContratoCliente(id_contrato_cliente);
              cliente.setIdUsuario(idUsuario);
              cliente.setTipoContrato(id_tipo_contrato);
              cliente.setPersona(id_persona);
              cliente.setCategoriaContrato(id_categoria_contrato);
              cliente.setMontoTotal(Integer.parseInt(monto_total));
              cliente.setFechaInicio(fecha);
              cliente.setFechaFin(fecha1);
              cliente.setFechaRegistro(fecha2);
               
              dao.registrarContratoCliente(cliente);
              if(dao.registrarContratoCliente(cliente)){
               response.sendRedirect("RegistrarCliente.jsp");
              }
              out.println("paso if");
            }
         
        %>
 		<div class="col-xs-12"><h2>Registrar cliente</h2></div>
 		<br /><br />

                <form  class="form-horizontal" action="RegistrarCliente.jsp" method="post">
                 <input type="hidden" name="id_persona" value="<%=id_persona%>">
                <div class="form-group" >
                    <label class="control-label col-xs-4">Tipo contrato</label>
                    <div class="col-xs-6">
                        <select  class="form-control" name="id_tipo_contrato"><option>Selecciona tipo contrato</option> 
                         <%
                        for(TipoContrato tipoContrato: dao.listarTipoContraro()){
                        %>
                        <option value="<%=tipoContrato.getIdTipoContrato()%>"><%=tipoContrato.getNombre()%></option>
                        <%}%>
                        </select>
                    </div>
                </div>
                  <div class="form-group" >
                    <label class="control-label col-xs-4">Categoria</label>
                    <div class="col-xs-6">
                        <select  class="form-control" name="id_categoria_contrato"><option>Selecciona la categoria</option> 
                            <%
                                for (CategoriaContrato cn : dao.listarCategoria()) {
                            %>
                            <option  value="<%=cn.getIdCategoriaContrato().trim()%>"><%=cn.getNombreCategoria()%></option>
                            <%}%>
                        </select>
                    </div>
                </div>
                <div class="form-group">
			<label class="col-xs-4 control-label " for="formGroup" name="monto_total" placeholder="ingrese monto" value>Monto Contrato</label>
			<div class="input-group col-sm-3">
				<span class="input-group-addon"><span class="glyphicon glyphicon-usd"></span></span>
                                <input class="form-control" type="text" id="formGroup" value="<%=monto_total%>">
			</div>
		</div>
                   
                 <div class="form-group">
                    <label class="control-label col-xs-4">Fecha Inicio:</label>
                    <div class="col-xs-6">
                        <input type="date" class="form-control" placeholder="dd/mm/yyyy " name="fecha_inicio" required="" value="<%=fecha_inicio%>">
                    </div>
                </div> 
                  <div class="form-group">
                    <label class="control-label col-xs-4">Fecha Fin:</label>
                    <div class="col-xs-6">
                        <input type="date" class="form-control" placeholder="dd/mm/yyyy " name="fecha_fin" required="" value="<%=fecha_fin%>">
                    </div>
                </div> 
                     <div>
                    <label class="control-label col-xs-4"></label>
                    <div class="col-xs-6">
                        
                        
                    </div>
                </div> 
                    
                <div class="form-group">
                    <div class="col-xs-offset-3 col-xs-9">
                       
                        <div>
                            
                            <input type="submit" class="btn btn-primary" name="mat" value="Enviar">
                            <input type="reset" class="btn btn-default" value="Limpiar">
                        </div>               
                    </div>
                    <br><br><br>
                </div>
            </form>
 	</div>

 </div>
   
   

<%@include file="WEB-INF/jspf/bottom.jspf" %>
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gym.modelo.controlador;

import gym.modelo.dao.UsuarioDao;
import gym.modelo.dao.impl.UsuarioDaoImpl;
import gym.modelo.entidad.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author chasse2
 */
@WebServlet(name = "Validar", urlPatterns = {"/Validar"})
public class Validar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario=request.getParameter("usuario"); usuario=usuario== null?"":usuario;
        String password=request.getParameter("password"); password=password== null?"": password;
        String mensaje="Hola bebe";
        String id_usuario="";
        UsuarioDao dao = new UsuarioDaoImpl();
        Usuario usuarioo= new Usuario();
        
        if (dao.validarDato(usuario, password) !=null) {
          
            // nos permite levantarr la sesion  
            HttpSession session=request.getSession(); // nos permite para podder enviar la sesion
            session.setAttribute("idUsuario", dao.validarDato(usuario, password)); // poniendo en sesion el id del usuariooo
            
            
            
            id_usuario=dao.validarDato(usuario, password);
            request.setAttribute("usuarios", dao.mostrarusuario(id_usuario));// estamos setando un objeto un bean
            
            request.setAttribute("usuario",usuario);///seteo de atributos desde un formularioooooo o caja de texto.
            request.setAttribute("dato", mensaje); // seteo de Atrinutoss de una varable cualquiera.. no recibida de un formulario
            request.getRequestDispatcher("InicioSistema.jsp").forward(request, response); // se tiene que añadir el request o responsi
            
            
        } else {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

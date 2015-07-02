/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gym.modelo.dao.impl;


import gym.modelo.dao.UsuarioDao;
import gym.modelo.entidad.Usuario;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import gym.modelo.util.ConexionOracle;

/**
 *
 * @author chasse2
 */
public class UsuarioDaoImpl implements UsuarioDao{
    
     public Connection abrirConexion(){
       return ConexionOracle.conectar();
    }
    
    public void cerrarConexion(){
        try {
           ConexionOracle.conectar().close();
        } catch (Exception e) {
        }
    }
    
    public void Guardar(){
        try {
             abrirConexion().commit();
        } catch (Exception e) {
        }       
    }
    
    public void Revertir(){
        try {
             abrirConexion().rollback();
        } catch (Exception e) {
        }       
    }


    @Override
    public String validarDato(String usuario, String password) {
        String id_usuario= null;
        String query="select id_usuario from usuario "
                     + "where upper(usuario)='"+usuario.toUpperCase()+"' and password='"+password+"'";
        Statement st= null;
        ResultSet rs= null;
        try {
            st=abrirConexion().createStatement();
            rs=st.executeQuery(query);
            if(rs.next()){
                id_usuario=rs.getString("id_usuario");
                
            }
           cerrarConexion();
        } catch (Exception e) {
          cerrarConexion();
          e.printStackTrace();
          System.out.println("Error: " +e.getMessage());
        }
        
        return id_usuario;
    }

    @Override
    public Usuario mostrarusuario(String idUsuario) {
        Usuario usuario = null;
        String query ="SELECT * FROM USUARIO WHWRE id_usuario ='"+idUsuario+"'";
        Statement st =null;
        ResultSet rs= null;
        try {
            st = abrirConexion().createStatement();
            rs = st.executeQuery(query);
            if (rs.next()){
                usuario = new Usuario();
                usuario.setIdUsuario(rs.getString("idUsuario"));
                usuario.setUsuario(rs.getString("usuario"));
                usuario.setPassword(rs.getString("password"));
                usuario.setTipo(rs.getString("tipo"));
                usuario.setEstado(rs.getString("estado"));
      
            }
            cerrarConexion();
        } catch (Exception e) {
            cerrarConexion();
            e.printStackTrace();
            System.out.println("ERROR:"+e.getMessage());
        }
        
        return usuario;
    }
    
}

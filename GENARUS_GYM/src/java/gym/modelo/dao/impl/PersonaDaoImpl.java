package gym.modelo.dao.impl;

import gym.modelo.dao.PersonaDao;
import gym.modelo.entidad.Persona;
import gym.modelo.entidad.Usuario;
import gym.modelo.util.HibernateUtil;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author chasse2
 */
public class PersonaDaoImpl implements PersonaDao {

    public Connection abrirConexion() {
        return gym.modelo.util.ConexionOracle.conectar();
    }

    @Override
    public boolean agregarPersona(Persona persona) {
        boolean estado = false;
        Statement st = null;
        String query = "INSERT INTO persona (id_persona,nombres,apellidos,dni,sexo,telefono,direccion) VALUES ('','" + persona.getNombres() + "','" + persona.getApellidos() + "','" + persona.getDni() + "','" + persona.getSexo() + "', '" + persona.getTelefono() + "','" + persona.getDireccion() + "')";
        try {
            st = abrirConexion().createStatement();
            st.executeQuery(query);
            abrirConexion().commit(); //commit();
            abrirConexion().close();//cerrar la conexion
            estado = true;
        } catch (Exception e) {
            e.printStackTrace();
            estado = false;
            try {
                abrirConexion().rollback();
                abrirConexion().close();
            } catch (Exception ex) {
            }
        }
        return estado;
    }

    @Override
    public List<Persona> listarPersona() {
        List<Persona> lista = null;
        SessionFactory sf = null;
        Session session = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            lista = new ArrayList<Persona>();
            Query query = session.createQuery("FROM Persona");
            lista = query.list();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            session.close();
        }
        return lista;
    }

    @Override
    public boolean eliminarPersona(String id_persona) {
        boolean estado = false;
        Statement st = null;
        String query = "delete from persona where id_persona='"+id_persona+"'";
        try {
            st = abrirConexion().createStatement();
            st.executeUpdate(query);
            abrirConexion().commit();
            abrirConexion().close();
            estado = true;

        } catch (Exception e) {
            e.printStackTrace();
            estado = false;
            try {
                abrirConexion().rollback();
                abrirConexion().close();
            } catch (Exception ex) {
            }
        }

        return estado;
    }

    @Override
    public boolean actualizarPersona(Persona persona) {
        boolean estado = false;
        Statement st = null;
        String query = "UPDATE persona SET nombres='" + persona.getNombres() + "',"
                + " apellidos='" + persona.getApellidos() + "',  "
                + " dni='" + persona.getDni() + "', "
                + " sexo='" + persona.getSexo() + "', "
                + " telefono='" + persona.getTelefono() + "', "
                + " direccion='" + persona.getDireccion() + "' "
                + " where id_persona='" + persona.getIdPersona() + "' ";

        try {
            st = abrirConexion().createStatement();
            st.executeUpdate(query);
            abrirConexion().commit();
            abrirConexion().close();
            estado = true;
        } catch (Exception e) {
            e.printStackTrace();
            estado = false;
            try {
                abrirConexion().rollback();
                abrirConexion().close();
            } catch (Exception ex) {
            }
        }
        return estado;
    }

    

    @Override
    public Persona ObtenerPersona (String id_persona) {
        Persona persona = null;
        SessionFactory sf = null;
        Session session = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            Query query = session.createQuery("from Persona where idPersona='"+id_persona+"'");
            persona = (Persona)query.uniqueResult();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            session.close();
        }
        return persona;
    }

    @Override
    public List<Persona> buscarPersona(String Busqueda, String Buscar) {
        List<Persona> lista = new ArrayList<Persona>();
        Statement st = null;
        ResultSet rs = null;
        Persona persona = null;
        String query = "SELECT p.id_persona , p.nombres, nvl(p.apellidos,'-') as apellidos ,  nvl(p.dni,'-')as dni  , p.sexo,   nvl(p.telefono,'-')as telefono, nvl(p.direccion,'-') as direccion FROM persona p  WHERE UPPER(p." + Busqueda + ") LIKE UPPER('" + Buscar + "%') and rownum <=10   ORDER BY nombre ASC ";

        try {
            st = abrirConexion().createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                persona = new Persona();
                persona.setIdPersona(rs.getString("id_persona"));
                persona.setNombres(rs.getString("nombres"));
                persona.setApellidos(rs.getString("apellidos"));
                persona.setDni(rs.getString("dni"));
                persona.setSexo(rs.getString("sexo"));
                persona.setTelefono(rs.getString("telefono"));
                persona.setDireccion(rs.getString("direccion"));
                lista.add(persona);
            }
            abrirConexion().close();
        } catch (Exception e) {
            e.printStackTrace();
            try {
                abrirConexion().close();
            } catch (Exception ex) {
            }
        }

        return lista;

    }

    @Override
    public boolean registrarUsuario(Usuario usuario) {
        Statement st = null;
        boolean flat = false;
        String query ="insert into usuario(id_usuario,usuario,password,tipo,estado) values ('"+usuario.getIdUsuario()+"','"+usuario.getUsuario()+"','"+usuario.getPassword()+"','"+usuario.getTipo()+"','"+usuario.getEstado()+"')";
        System.out.println(query);
        try {
            st = abrirConexion().createStatement();
            st.executeUpdate(query);
            abrirConexion().commit();//metodo que contiene el commit();
            abrirConexion().close();//metodo que contiene el .Close(); para cerrar conexion
            flat = true;
        } catch (Exception e) {
            e.printStackTrace();
            try {
                abrirConexion().rollback();//metodo que contiene el rollback();
                abrirConexion().close();
                flat = false;
            } catch (Exception ex) {
            }
        }
        return flat;  
    }

    @Override
    public Persona buscarPersona(String dni) {
        Persona persona = null;
        SessionFactory sf = null;
        Session session = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            Query query = session.createQuery("FROM Persona WHERE dni='"+dni+"'");
            persona = (Persona)query.uniqueResult();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            session.close();
        }
       return persona;
    }
}

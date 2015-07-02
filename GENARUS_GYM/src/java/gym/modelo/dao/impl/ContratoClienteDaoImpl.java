/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gym.modelo.dao.impl;

import gym.modelo.dao.ContratoClienteDao;
import gym.modelo.entidad.CategoriaContrato;
import gym.modelo.entidad.ContratoCliente;


import gym.modelo.entidad.Persona_Usuario;
import gym.modelo.entidad.Personas_Vigentes;
import gym.modelo.entidad.TipoContrato;
import gym.modelo.util.HibernateUtil;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author chasse2
 */
public class ContratoClienteDaoImpl implements ContratoClienteDao{
     public Connection abrirConexion() {
        return gym.modelo.util.ConexionOracle.conectar();
    }

    @Override
    public boolean registrarContratoCliente(ContratoCliente cliente) {
        boolean estado = false;
        Statement st = null;
        
        String query = "Insert into contrato_cliente(id_contrato_cliente,id_tipo_contrato,id_persona,id_usuario,id_categoria_contrato,monto_total,fecha_inicio.fecha_fin,estado,fecha_registro) values ('',"+cliente.getTipoContrato()+"','"+cliente.getPersona()+"','"+cliente.getUsuario()+"','"+cliente.getCategoriaContrato()+"','"+cliente.getMontoTotal()+"', '"+cliente.getFechaInicio()+"' , '"+cliente.getFechaFin()+"' ,'1', 'sysdate' )";  

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
    public List<TipoContrato> listarTipoContraro() {
        List<TipoContrato> lista = new ArrayList<>();
        Statement st = null;
        ResultSet rs = null;
        TipoContrato contrato = null;
        String query = "select tc.id_tipo_contrato, tc.nombre, tc.nuemer_dias from tipo_contrato tc";

        try {
            st = abrirConexion().createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                contrato = new TipoContrato();
                contrato.setIdTipoContrato(rs.getString("id_tipo_contrato"));
                contrato.setNombre(rs.getString("nombre"));
                contrato.setNumDias(rs.getInt("num_dias"));
                lista.add(contrato);
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
    public ContratoCliente buscarContratoCliente(String dni) {
        ContratoCliente cliente = null;
        SessionFactory sf = null;
        Session session = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            Query query = session.createQuery("from contrato_cliente where dni='"+dni+"'");
            cliente = (ContratoCliente)query.uniqueResult();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
            session.close();
        }
        return cliente;
    }

    @Override
    public List<CategoriaContrato> listarCategoria() {
        List<CategoriaContrato> lista = new ArrayList<>();
        Statement st = null;
        ResultSet rs = null;
        CategoriaContrato cc = null;
        String query = "select ca.id_categoria_contrato as cc, ca.nombre_categoria as nc, ca.descuento as dcto from Categoria_Contrato ca";

        try {
            st = abrirConexion().createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                cc = new CategoriaContrato();
                cc.setIdCategoriaContrato(rs.getString("cc"));
                cc.setNombreCategoria(rs.getString("nc"));
                cc.setDescuento(rs.getInt("dcto"));
                lista.add(cc);
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
    public List<Personas_Vigentes> ListarVigentes() {
        List<Personas_Vigentes> lista = new ArrayList<>();
        Statement st = null;
        ResultSet rs = null;
        Personas_Vigentes pv = null;
        String query = "select p.id_persona,p.nombres, p.apellidos, trunc(to_date(cc.fecha_fin))-trunc(to_date(to_char(sysdate, 'dd/mm/yyyy'))) as dias " +
                        "from persona p, contrato_cliente cc " +
                        "where p.id_persona=cc.id_persona and (select to_char(sysdate,'dd/mm/yyyy') from dual)>=(cc.fecha_inicio) " +
                        "and (select to_char(sysdate,'dd/mm/yyyy') from dual)<=(cc.fecha_fin)";

        try {
            st = abrirConexion().createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                pv = new Personas_Vigentes();
                pv.setIdPersona(rs.getString("id_persona"));
                pv.setNombres(rs.getString("nombres"));
                pv.setApellidos(rs.getString("apellidos"));
                pv.setDias(rs.getString("dias"));
                lista.add(pv);
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
    public List<Persona_Usuario> Listarpersona_usuario() {
     List<Persona_Usuario> lista = new ArrayList<>();
        Statement st = null;
        ResultSet rs = null;
        Persona_Usuario pu = null;
        String query = "select p.id_persona, p.nombres, p.apellidos, u.usuario, u.password\n" +
                        "from persona p, usuario u\n" +
                       "where p.id_persona=u.id_usuario";

        try {
            st = abrirConexion().createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                pu = new Persona_Usuario();
               pu.setIdpersona(rs.getString("id_persona"));
                pu.setNombres(rs.getString("nombres"));
                pu.setApellidos(rs.getString("apellidos"));
                pu.setUsuario(rs.getString("usuario"));
                pu.setPassword(rs.getString("password"));
                lista.add(pu);
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

  

   

}
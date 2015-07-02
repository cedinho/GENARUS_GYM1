/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gym.modelo.dao;


import gym.modelo.entidad.Persona;
import gym.modelo.entidad.Usuario;
import java.util.List;

/**
 *
 * @author chasse2
 */
public interface PersonaDao {
    public boolean agregarPersona(Persona persona);
    public List<Persona> listarPersona();
   
    public boolean eliminarPersona(String id_persona);
    public boolean actualizarPersona(Persona persona);
    public Persona ObtenerPersona (String id_persona);
    public List<Persona> buscarPersona (String Busqueda , String Buscar);
    public boolean registrarUsuario (Usuario usuario);
    public Persona buscarPersona (String dni);
}

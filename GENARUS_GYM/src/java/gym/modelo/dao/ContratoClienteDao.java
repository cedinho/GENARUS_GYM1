/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gym.modelo.dao;

import gym.modelo.entidad.CategoriaContrato;
import gym.modelo.entidad.ContratoCliente;




import gym.modelo.entidad.Persona_Usuario;
import gym.modelo.entidad.Personas_Vigentes;
import gym.modelo.entidad.TipoContrato;
import java.util.List;

/**
 *
 * @author chasse2
 */
public interface ContratoClienteDao {
     
    public boolean registrarContratoCliente (ContratoCliente cliente);
    public List<TipoContrato> listarTipoContraro();
    public List<CategoriaContrato> listarCategoria();
    public ContratoCliente buscarContratoCliente (String dni);
    public List<Personas_Vigentes> ListarVigentes();
    public List<Persona_Usuario> Listarpersona_usuario();
    
  
    
  
    
}

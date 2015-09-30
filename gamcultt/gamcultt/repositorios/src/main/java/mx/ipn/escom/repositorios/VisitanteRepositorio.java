/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.repositorios;

import java.util.List;
import mx.ipn.escom.entidades.Visitante;

/**
 *
 * @author Lap_Christo
 */
public interface VisitanteRepositorio {
    Boolean agregar(Visitante visitante);
    Boolean actualizar(Visitante visitante);
    Boolean eliminar(Visitante visitante);
    Boolean eliminar(Integer id);
    
    Visitante buscarPorId(Integer id);
    List<Visitante> buscarTodos();
    List<Visitante> buscarPorCorreo(String correo);
    List<Visitante> buscarPorNombre(String nombre , String apellidoPaterno , String apellidoMaterno);
    List<Visitante> buscarPorEdad(String edadmin , String edadmax);
     List<Visitante> buscarPorSexo(String sexo);
}

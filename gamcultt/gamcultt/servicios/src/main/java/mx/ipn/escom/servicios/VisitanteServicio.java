/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.servicios;

import java.util.List;
import mx.ipn.escom.entidades.Visitante;

/**
 *
 * @author Lap_christo
 */
public interface VisitanteServicio {
    String agregar(Visitante visitante);
    String actualizar(Visitante visitante);
    String eliminar(Visitante visitante);
    String eliminar(Integer id);
    
    Visitante buscarPorId(Integer id);
    List<Visitante> buscarTodos();
    List<Visitante> buscarPorCorreo(String correo);
    List<Visitante> buscarPorTaller(Integer id);
    List<Visitante> buscarPorNombre(String nombreCompleto);
    List<Visitante> buscarPorEdad(String edadCompleta);
}

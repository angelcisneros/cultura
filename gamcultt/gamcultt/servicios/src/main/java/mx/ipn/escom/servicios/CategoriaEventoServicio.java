/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.servicios;

import java.util.List;
import mx.ipn.escom.entidades.CategoriaEvento;

/**
 *
 * @author Lap_christo
 */
public interface CategoriaEventoServicio {
    String agregar(CategoriaEvento categoriaEvento);
    String actualizar(CategoriaEvento categoriaEvento);
    String eliminar(CategoriaEvento categoriaEvento);
    String eliminar(Integer id);
    
    CategoriaEvento buscarPorId(Integer id);
    List<CategoriaEvento> buscarTodos();
}

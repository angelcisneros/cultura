/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.repositorios;

import java.util.List;
import mx.ipn.escom.entidades.CategoriaEvento;

/**
 *
 * @author Lap_christo
 */

public interface CategoriaEventoRepositorio {
    
    Boolean agregar(CategoriaEvento categoriaEvento);
    Boolean actualizar(CategoriaEvento categoriaEvento);
    Boolean eliminar(CategoriaEvento categoriaEvento);
    Boolean eliminar(Integer id);
    
    CategoriaEvento buscarPorId(Integer id);
    List<CategoriaEvento> buscarTodos();
    
}

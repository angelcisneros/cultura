/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.repositorios;

import java.util.List;
import mx.ipn.escom.entidades.CategoriaTaller;

/**
 *
 * @author Lap_christo
 */

public interface CategoriaTallerRepositorio {
    
    Boolean agregar(CategoriaTaller categoriaTaller);
    Boolean actualizar(CategoriaTaller categoriaTaller);
    Boolean eliminar(CategoriaTaller categoriaTaller);
    Boolean eliminar(Integer id);
    
    CategoriaTaller buscarPorId(Integer id);
    List<CategoriaTaller> buscarTodos();
    
}

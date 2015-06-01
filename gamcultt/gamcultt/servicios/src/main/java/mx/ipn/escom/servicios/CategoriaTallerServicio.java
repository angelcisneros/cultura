/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.servicios;

import java.util.List;
import mx.ipn.escom.entidades.CategoriaTaller;

/**
 *
 * @author Lap_christo
 */
public interface CategoriaTallerServicio {
    String agregar(CategoriaTaller categoriaTaller);
    String actualizar(CategoriaTaller categoriaTaller);
    String eliminar(CategoriaTaller categoriaTaller);
    String eliminar(Integer id);
    
    CategoriaTaller buscarPorId(Integer id);
    List<CategoriaTaller> buscarTodos();
}

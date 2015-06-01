/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.servicios.impl;

import java.util.List;
import mx.ipn.escom.entidades.CategoriaTaller;
import mx.ipn.escom.repositorios.CategoriaTallerRepositorio;
import mx.ipn.escom.servicios.CategoriaTallerServicio;
import static mx.ipn.escom.servicios.util.MensajesCrud.ADD_CORRECT;
import static mx.ipn.escom.servicios.util.MensajesCrud.DELETE_CORRECT;
import static mx.ipn.escom.servicios.util.MensajesCrud.ERROR_HIBERNATE;
import static mx.ipn.escom.servicios.util.MensajesCrud.UPDATE_CORRECT;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 *
 * @author Lap_christo
 */

@Service
public class CategoriaTallerServicioImpl implements CategoriaTallerServicio{
    
    @Autowired
    CategoriaTallerRepositorio categoriaTallerRepositorio;
    private static final String CATEGORIA_TALLER = "un Categoria Taller.#";
    
     @Override
    public String agregar(CategoriaTaller categoriaTaller) {
        if (categoriaTallerRepositorio.agregar(categoriaTaller)) {
            return ADD_CORRECT + CATEGORIA_TALLER + categoriaTaller.getId();
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public String actualizar(CategoriaTaller categoriaTaller) {
        if (categoriaTallerRepositorio.actualizar(categoriaTaller)) {
            return UPDATE_CORRECT + CATEGORIA_TALLER;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public String eliminar(CategoriaTaller categoriaTaller) {
        boolean a = categoriaTallerRepositorio.eliminar(categoriaTaller);
        System.out.println(a);
        if (a) {
            return DELETE_CORRECT + CATEGORIA_TALLER;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public List<CategoriaTaller> buscarTodos() {
        return categoriaTallerRepositorio.buscarTodos();
    }

    @Override
    public String eliminar(Integer id) {
       CategoriaTaller categoriaTaller = categoriaTallerRepositorio.buscarPorId(id);
       if (categoriaTallerRepositorio.eliminar(categoriaTaller)) {
            return DELETE_CORRECT + CATEGORIA_TALLER;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public CategoriaTaller buscarPorId(Integer id) {
       return categoriaTallerRepositorio.buscarPorId(id);
    }
}

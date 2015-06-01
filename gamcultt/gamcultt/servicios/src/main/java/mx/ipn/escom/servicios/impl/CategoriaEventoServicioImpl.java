/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.servicios.impl;

import java.util.List;
import mx.ipn.escom.entidades.CategoriaEvento;
import mx.ipn.escom.repositorios.CategoriaEventoRepositorio;
import mx.ipn.escom.servicios.CategoriaEventoServicio;
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
public class CategoriaEventoServicioImpl implements CategoriaEventoServicio{
    
    @Autowired
    CategoriaEventoRepositorio categoriaEventoRepositorio;
    private static final String CATEGORIA_EVENTO = "un Categoria Taller.#";
    
     @Override
    public String agregar(CategoriaEvento categoriaEvento) {
        if (categoriaEventoRepositorio.agregar(categoriaEvento)) {
            return ADD_CORRECT + CATEGORIA_EVENTO + categoriaEvento.getId();
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public String actualizar(CategoriaEvento categoriaEvento) {
        if (categoriaEventoRepositorio.actualizar(categoriaEvento)) {
            return UPDATE_CORRECT + CATEGORIA_EVENTO;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public String eliminar(CategoriaEvento categoriaEvento) {
        boolean a = categoriaEventoRepositorio.eliminar(categoriaEvento);
        System.out.println(a);
        if (a) {
            return DELETE_CORRECT + CATEGORIA_EVENTO;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public List<CategoriaEvento> buscarTodos() {
        return categoriaEventoRepositorio.buscarTodos();
    }

    @Override
    public String eliminar(Integer id) {
       CategoriaEvento categoriaEvento = categoriaEventoRepositorio.buscarPorId(id);
       if (categoriaEventoRepositorio.eliminar(categoriaEvento)) {
            return DELETE_CORRECT + CATEGORIA_EVENTO;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public CategoriaEvento buscarPorId(Integer id) {
       return categoriaEventoRepositorio.buscarPorId(id);
    }
}

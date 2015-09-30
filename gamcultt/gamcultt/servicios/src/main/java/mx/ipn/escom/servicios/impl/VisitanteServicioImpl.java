/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.servicios.impl;

import java.util.ArrayList;
import java.util.List;
import mx.ipn.escom.entidades.Visitante;
import mx.ipn.escom.repositorios.VisitanteRepositorio;
import mx.ipn.escom.servicios.VisitanteServicio;
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
public class VisitanteServicioImpl implements VisitanteServicio {

    @Autowired
    VisitanteRepositorio visitanteRepositorio;

    private static final String VISITANTE = "un visitante.#";

    @Override
    public String agregar(Visitante visitante) {
        if (visitanteRepositorio.agregar(visitante)) {
            return ADD_CORRECT + VISITANTE + visitante.getId();
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public String actualizar(Visitante visitante) {
        if (visitanteRepositorio.actualizar(visitante)) {
            return UPDATE_CORRECT + VISITANTE;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public String eliminar(Visitante visitante) {
        if (visitanteRepositorio.eliminar(visitante)) {
            return DELETE_CORRECT + VISITANTE;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public List<Visitante> buscarTodos() {
        return visitanteRepositorio.buscarTodos();
    }

    @Override
    public String eliminar(Integer id) {
        Visitante visitante = visitanteRepositorio.buscarPorId(id);
        if (visitanteRepositorio.eliminar(visitante)) {
            return DELETE_CORRECT + VISITANTE;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public Visitante buscarPorId(Integer id) {
        return visitanteRepositorio.buscarPorId(id);
    }

    @Override
    public List<Visitante> buscarPorCorreo(String correo) {
        return visitanteRepositorio.buscarPorCorreo(correo);
    }

    @Override
    public List<Visitante> buscarPorNombre(String nombre) {
        String[] nombreCompleto = nombre.split(",");
        return visitanteRepositorio.buscarPorNombre(nombreCompleto[0], nombreCompleto[1], nombreCompleto[2]);
    }

    @Override
    public List<Visitante> buscarPorEdad(String edadCompleta) {
        String[] edad = edadCompleta.split(",");
        return visitanteRepositorio.buscarPorEdad(edad[0], edad[1]);
    }

    @Override
    public List<Visitante> buscarPorTaller(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

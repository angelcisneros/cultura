/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.servicios.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.ipn.escom.entidades.Taller;
import mx.ipn.escom.repositorios.TallerRepositorio;
import mx.ipn.escom.servicios.TallerServicio;
import mx.ipn.escom.servicios.util.ManejadorArchivos;
import static mx.ipn.escom.servicios.util.ManejadorArchivos.crearArchivoContenido;
import static mx.ipn.escom.servicios.util.MensajesCrud.ADD_CORRECT;
import static mx.ipn.escom.servicios.util.MensajesCrud.DELETE_CORRECT;
import static mx.ipn.escom.servicios.util.MensajesCrud.ERROR_HIBERNATE;
import static mx.ipn.escom.servicios.util.MensajesCrud.UPDATE_CORRECT;
import static mx.ipn.escom.servicios.util.Rutas.TALLERES;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Lap_christo
 */
@Service
public class TallerServicioImpl implements TallerServicio {

    @Autowired
    TallerRepositorio tallerRepositorio;
    private static final String TALLER = "un taller.#";

    @Override
    public String agregar(Taller taller) {
        if (tallerRepositorio.agregar(taller)) {
            File file = new File(TALLERES + taller.getId());
            file.mkdir();
            return ADD_CORRECT + TALLER + taller.getId();
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public String actualizar(Taller taller) {
        if (tallerRepositorio.actualizar(taller)) {
            return UPDATE_CORRECT + TALLER;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public String eliminar(Taller taller) {
        if (tallerRepositorio.eliminar(taller)) {
            return DELETE_CORRECT + TALLER;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public List<Taller> buscarTodos() {
        return tallerRepositorio.buscarTodos();
    }

    @Override
    public String eliminar(Integer id) {
        Taller taller = tallerRepositorio.buscarPorId(id);
        if (tallerRepositorio.eliminar(taller)) {
            return DELETE_CORRECT + TALLER;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public Taller buscarPorId(Integer id) {
        Taller taller = tallerRepositorio.buscarPorId(id);
        taller.setCategoriaTaller(null);
        taller.setGaleriaTallers(null);
        taller.setCategoriaTaller(null);
        taller.setClases(null);
        return taller;
    }

    @Override
    public String subirImagen(MultipartFile contenido, Integer id) {
        try {
            Taller taller = tallerRepositorio.buscarPorId(id);
            String path = TALLERES + taller.getId() + "\\" + contenido.getOriginalFilename();
            crearArchivoContenido(path, contenido.getBytes());
            return "1";
        } catch (IOException ex) {
            Logger.getLogger(TallerServicioImpl.class.getName()).log(Level.SEVERE, null, ex);
            return "-1";
        }
    }

    @Override
    public Integer cuentaImagenes(Integer id) {
        Taller taller = tallerRepositorio.buscarPorId(id);
        String path = TALLERES + taller.getId();
        File file = new File(path);
        return file.list().length;
    }

    @Override
    public File regresaArchivo(Integer id, Integer i) {
        Taller taller = tallerRepositorio.buscarPorId(id);
        String path = TALLERES + taller.getId();
        File file = new File(path);
        return file.listFiles()[i];
    }

    // se implemento el metodo de TallerServicio

    @Override
    public List<Taller> buscarPorCasa(int idCasa) {
        return tallerRepositorio.buscarPorCasa(idCasa);
    }
}

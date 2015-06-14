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
import mx.ipn.escom.entidades.Casa;
import mx.ipn.escom.repositorios.CasaRepositorio;
import mx.ipn.escom.servicios.CasaServicio;
import static mx.ipn.escom.servicios.util.ManejadorArchivos.borrarArchivosAndContenido;
import static mx.ipn.escom.servicios.util.ManejadorArchivos.crearArchivoContenido;
import static mx.ipn.escom.servicios.util.MensajesCrud.ADD_CORRECT;
import static mx.ipn.escom.servicios.util.MensajesCrud.CORRECTO_IMAGEN;
import static mx.ipn.escom.servicios.util.MensajesCrud.DELETE_CORRECT;
import static mx.ipn.escom.servicios.util.MensajesCrud.ERROR_ALGO;
import static mx.ipn.escom.servicios.util.MensajesCrud.ERROR_HIBERNATE;
import static mx.ipn.escom.servicios.util.MensajesCrud.ERROR_IMAGEN;
import static mx.ipn.escom.servicios.util.MensajesCrud.IMAGEN_INVALIDA;
import static mx.ipn.escom.servicios.util.MensajesCrud.UPDATE_CORRECT;
import static mx.ipn.escom.servicios.util.Rutas.CASAS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;


/**
 *
 * @author Lap_christo
 */

@Service
public class CasaServicioImpl implements CasaServicio{
    
    @Autowired
    CasaRepositorio casaRepositorio;
    private static final String CASA = "un casa.#";
    
     @Override
    public String agregar(Casa casa) {
        if (casaRepositorio.agregar(casa)) {
            File carpeta = new File(CASAS + casa.getId());
            if(carpeta.mkdirs()){
                return ADD_CORRECT + CASA + casa.getId();
            }else{
                casaRepositorio.eliminar(casa);
                return ERROR_ALGO;
            }
            
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public String actualizar(Casa casa) {
        if (casaRepositorio.actualizar(casa)) {
            return UPDATE_CORRECT + CASA;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public String eliminar(Casa casa) {
        if (casaRepositorio.eliminar(casa)) {
            File carpeta = new File(CASAS + casa.getId());
            borrarArchivosAndContenido(carpeta);
            return DELETE_CORRECT + CASA;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public List<Casa> buscarTodos() {
        return casaRepositorio.buscarTodos();
    }

    @Override
    public String eliminar(Integer id) {
       Casa casa = casaRepositorio.buscarPorId(id);
       if (casaRepositorio.eliminar(casa)) {
            return DELETE_CORRECT + CASA;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public Casa buscarPorId(Integer id) {
       return casaRepositorio.buscarPorId(id);
    }

    @Override
    public List<Casa> buscarPorCategoriaTaller(Integer categoriaTaller) {
        return casaRepositorio.buscarPorCategoriaTaller(categoriaTaller);
    }
    @Override
    public String agregarImagenPrincipal(Integer id, MultipartFile imagen) {
        String path = CASAS + id + "\\" + id + ".png";
        if(!esExtencionValida(imagen.getOriginalFilename(), ".png") || esExtencionValida(imagen.getOriginalFilename(), ".jpg")){
            return IMAGEN_INVALIDA;
        }
        try {
            if(crearArchivoContenido(path, imagen.getBytes())){
                return CORRECTO_IMAGEN;
            }
        } catch (IOException ex) {
            Logger.getLogger(CasaServicioImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ERROR_IMAGEN;
    }

    private boolean esExtencionValida(String originalFilename, String png) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}

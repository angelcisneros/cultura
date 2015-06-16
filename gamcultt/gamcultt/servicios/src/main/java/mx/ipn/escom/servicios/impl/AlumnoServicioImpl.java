/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.servicios.impl;

import java.util.ArrayList;
import java.util.List;
import mx.ipn.escom.entidades.Alumno;
import mx.ipn.escom.entidades.AlumnoClase;
import mx.ipn.escom.entidades.Clase;
import mx.ipn.escom.entidades.Taller;
import mx.ipn.escom.repositorios.AlumnoClaseRepositorio;
import mx.ipn.escom.repositorios.AlumnoRepositorio;
import mx.ipn.escom.repositorios.CasaRepositorio;
import mx.ipn.escom.repositorios.ClaseRepositorio;
import mx.ipn.escom.servicios.AlumnoServicio;
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
public class AlumnoServicioImpl implements AlumnoServicio{
    
    @Autowired
    AlumnoRepositorio alumnoRepositorio;
    
    @Autowired
    AlumnoClaseRepositorio alumnoClaseRepositorio;
    
    private static final String ALUMNO = "un alumno.#";
    
     @Override
    public String agregar(Alumno alumno) {
        if (alumnoRepositorio.agregar(alumno)) {
            return ADD_CORRECT + ALUMNO + alumno.getId();
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public String actualizar(Alumno alumno) {
        if (alumnoRepositorio.actualizar(alumno)) {
            return UPDATE_CORRECT + ALUMNO;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public String eliminar(Alumno alumno) {
        if (alumnoRepositorio.eliminar(alumno)) {
            return DELETE_CORRECT + ALUMNO;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public List<Alumno> buscarTodos() {
        return alumnoRepositorio.buscarTodos();
    }

    @Override
    public String eliminar(Integer id) {
       Alumno alumno = alumnoRepositorio.buscarPorId(id);
       if (alumnoRepositorio.eliminar(alumno)) {
            return DELETE_CORRECT + ALUMNO;
        }
        return ERROR_HIBERNATE;
    }

    @Override
    public Alumno buscarPorId(Integer id) {
       return alumnoRepositorio.buscarPorId(id);
    }

    @Override
    public List<Alumno> buscarPorCorreo(String correo) {
        return alumnoRepositorio.buscarPorCorreo(correo);
    }

    @Override
    public List<Alumno> buscarPorNombre(String nombre) {
        String[] nombreCompleto = nombre.split(",");
        return alumnoRepositorio.buscarPorNombre(nombreCompleto[0] ,nombreCompleto[1],nombreCompleto[2]);
    }
    
    @Override
    public List<Alumno> buscarPorEdad(String edadCompleta) {
        String[] edad = edadCompleta.split(",");
        return alumnoRepositorio.buscarPorEdad(edad[0],edad[1]);
    }

    @Override
    public List<Alumno> buscarPorTaller(Integer id) {
        List<AlumnoClase> alumnoClase = alumnoClaseRepositorio.buscarPorTaller(id);
        if(alumnoClase == null){
            return null;
        }
        List<Alumno> alumnos = new ArrayList<>();
        for(AlumnoClase ac: alumnoClase){
            alumnos.add(ac.getAlumno());
        }
        return alumnos;
    }
}

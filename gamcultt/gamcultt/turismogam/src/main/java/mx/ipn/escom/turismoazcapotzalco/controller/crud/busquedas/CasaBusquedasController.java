/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.crud.busquedas;

import javax.servlet.http.HttpSession;
import mx.ipn.escom.servicios.AlumnoServicio;
import static mx.ipn.escom.servicios.util.MensajesCrud.SESION_CADUCA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Lap_christo
 */
@Controller
@RequestMapping("administrador/")
public class CasaBusquedasController {
    
    @Autowired
    AlumnoServicio alumnoServicio;
    
   
    
    @RequestMapping(value = "buscarAlumnoPorNombre", method =RequestMethod.POST )
    public String buscarAlumnoPorNombre(String nombreCompleto, HttpSession session, Model model){
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        model.addAttribute("alumnos", alumnoServicio.buscarPorNombre(nombreCompleto));
        return "crud/alumnoBody";
    }
    @RequestMapping(value = "buscarAlumnoPorEdad", method =RequestMethod.POST )
    public String buscarAlumnoPorEdad(String edadCompleta, HttpSession session, Model model){
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        model.addAttribute("alumnos", alumnoServicio.buscarPorEdad(edadCompleta));
        return "crud/alumnoBody";
    }
  @RequestMapping(value = "buscarAlumnoPorTaller/{idTaller}", method = {RequestMethod.GET, RequestMethod.POST} )
    public String buscarAlumnoPorTaller(@PathVariable String idTaller, HttpSession session, Model model){
        System.out.println("ENTREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE");
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        model.addAttribute("alumnos", alumnoServicio.buscarPorTaller(Integer.parseInt(idTaller)));
        return "crud/alumnoBody";
    }
}


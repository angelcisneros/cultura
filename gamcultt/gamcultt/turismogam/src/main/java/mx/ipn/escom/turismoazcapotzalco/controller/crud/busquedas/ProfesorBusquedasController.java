/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.crud.busquedas;

import javax.servlet.http.HttpSession;
import mx.ipn.escom.servicios.ProfesorServicio;
import static mx.ipn.escom.servicios.util.MensajesCrud.SESION_CADUCA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Lap_christo
 */
@Controller
@RequestMapping("administrador/")
public class ProfesorBusquedasController {

    @Autowired
    ProfesorServicio profesorServicio;
    
    @RequestMapping(value = "buscarTodosProfesor", method = RequestMethod.POST)
    public String buscarTodosProfesor(@RequestParam String nada, HttpSession session, Model model) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        model.addAttribute("alumnos", profesorServicio.buscarTodos());
        return "crud/profesorBody";
    }
    @RequestMapping(value = "buscarProfesorPorCorreo", method = RequestMethod.POST)
    public String buscarProfesorPorCorreo(@RequestParam String correop, HttpSession session, Model model) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        model.addAttribute("profesors", profesorServicio.buscarPorCorreo(correop));
        return "crud/profesorBody";
    }

    @RequestMapping(value = "buscarProfesorPorNombre", method = RequestMethod.POST)
    public String buscarProfesorPorNombre(@RequestParam String nombreCompletop, HttpSession session, Model model) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        model.addAttribute("profesors", profesorServicio.buscarPorNombre(nombreCompletop));
        return "crud/profesorBody";
    }

    @RequestMapping(value = "buscarProfesorPorEdad", method = RequestMethod.POST)
    public String buscarProfesorPorEdad(@RequestParam String edad, HttpSession session, Model model) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        model.addAttribute("profesors", profesorServicio.buscarPorEdad(edad));
        return "crud/profesorBody";
    }

}

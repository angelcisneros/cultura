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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Lap_christo
 */
@Controller
@RequestMapping("administrador/")
public class AlumnoBusquedasController {

    @Autowired
    AlumnoServicio alumnoServicio;

    @RequestMapping(value = "buscarAlumnoPorCorreo", method = RequestMethod.POST)
    public String buscarAlumnoPorCorreo(@RequestParam String correo, HttpSession session, Model model) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        model.addAttribute("alumnos", alumnoServicio.buscarPorCorreo(correo));
        return "crud/alumnoBody";
    }

    @RequestMapping(value = "buscarAlumnoPorNombre", method = RequestMethod.POST)
    public String buscarAlumnoPorNombre(@RequestParam String nombreCompleto, HttpSession session, Model model) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        model.addAttribute("alumnos", alumnoServicio.buscarPorNombre(nombreCompleto));
        return "crud/alumnoBody";
    }

    @RequestMapping(value = "buscarAlumnoPorEdad", method = RequestMethod.POST)
    public String buscarAlumnoPorEdad(@RequestParam String edadCompleta, HttpSession session, Model model) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        model.addAttribute("alumnos", alumnoServicio.buscarPorEdad(edadCompleta));
        return "crud/alumnoBody";
    }

    @RequestMapping(value = "buscarAlumnoPorTaller", method = RequestMethod.POST)
    public String buscarAlumnoPorTaller(@RequestParam String idTaller, HttpSession session, Model model) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        model.addAttribute("alumnos", alumnoServicio.buscarPorTaller(Integer.parseInt(idTaller)));
        return "crud/alumnoBody";
    }
}

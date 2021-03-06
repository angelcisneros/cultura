/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.crud;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import mx.ipn.escom.entidades.Profesor;
import mx.ipn.escom.servicios.ProfesorServicio;
import static mx.ipn.escom.servicios.util.MensajesCrud.ERROR_DATOS;
import static mx.ipn.escom.servicios.util.MensajesCrud.SESION_CADUCA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author vcisneros
 */
@Controller
@RequestMapping("administrador/")
public class ProfesorController {

    @Autowired
    ProfesorServicio profesorServicio;

     @RequestMapping(value = "profesors", method = RequestMethod.GET)
    public String alumnos(Model model, HttpSession session) {
        model.addAttribute("profesors", profesorServicio.buscarTodos());
        return "crud/profesor";
    }
    @ResponseBody
    @RequestMapping(value = "agregarProfesor", method = RequestMethod.POST)
    public String agregarProfesor(@Valid @ModelAttribute("profesor") Profesor profesor, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {
            return ERROR_DATOS;
        }
        return profesorServicio.agregar(profesor);
    }

    @ResponseBody
    @RequestMapping(value = "editarProfesor", method = RequestMethod.POST)
    public String editarProfesor(@Valid @ModelAttribute("profesor") Profesor profesor, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {
            return ERROR_DATOS;
        }
        return profesorServicio.actualizar(profesor);
    }

    @ResponseBody
    @RequestMapping(value = "eliminarProfesor", method = RequestMethod.POST)
    public String eliminarProfesor(Profesor profesor, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        return profesorServicio.eliminar(profesor);
    }
}






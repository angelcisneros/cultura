/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.crud;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import mx.ipn.escom.entidades.Sala;
import mx.ipn.escom.servicios.CasaServicio;
import mx.ipn.escom.servicios.SalaServicio;
import static mx.ipn.escom.servicios.util.Llave.USUARIO;
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
public class SalaController {

    @Autowired
    SalaServicio salaServicio;

    @Autowired
    CasaServicio casaServicio;

    @RequestMapping(value = "salas", method = RequestMethod.GET)
    public String salas(Model model, HttpSession session) {
        if (session.getAttribute(USUARIO) == null) {
            return "templates/login";
        }

        model.addAttribute("salas", salaServicio.buscarTodos());
        model.addAttribute("casas", casaServicio.buscarTodos());
        return "crud/sala";
    }

    @ResponseBody
    @RequestMapping(value = "agregarSala", method = RequestMethod.POST)
    public String agregarSala(@Valid @ModelAttribute("sala") Sala sala, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {
            return ERROR_DATOS;
        }
        return salaServicio.agregar(sala);
    }

    @ResponseBody
    @RequestMapping(value = "editarSala", method = RequestMethod.POST)
    public String editarSala(@Valid @ModelAttribute("sala") Sala sala, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {
            return ERROR_DATOS;
        }
        return salaServicio.actualizar(sala);
    }

    @ResponseBody
    @RequestMapping(value = "eliminarSala", method = RequestMethod.POST)
    public String eliminarSala(Sala sala, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        return salaServicio.eliminar(sala);
    }
     
}

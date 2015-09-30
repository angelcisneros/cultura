/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.crud;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import mx.ipn.escom.entidades.Visitante;
import mx.ipn.escom.servicios.VisitanteServicio;
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
public class VisitanteController {

    @Autowired
    VisitanteServicio visitanteServicio;
    
    

    @RequestMapping(value = "visitantes", method = RequestMethod.GET)
    public String visitantes(Model model, HttpSession session) {
        if (session.getAttribute(USUARIO) == null){
            return "templates/login";
        }
        model.addAttribute("visitantes", visitanteServicio.buscarTodos());
        return "crud/visitante";
    }
    
    @ResponseBody
    @RequestMapping(value = "agregarVisitante", method = RequestMethod.POST)
    public String agregarVisitante(@Valid @ModelAttribute("visitante") Visitante visitante, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute(USUARIO) == null){
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {      
            return ERROR_DATOS;
        }
        return visitanteServicio.agregar(visitante);
    }

    @ResponseBody
    @RequestMapping(value = "editarVisitante", method = RequestMethod.POST)
    public String editarVisitante(@Valid @ModelAttribute("visitante") Visitante visitante, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute(USUARIO) == null){
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {
            return ERROR_DATOS;
        }
        return visitanteServicio.actualizar(visitante);
    }

    @ResponseBody
    @RequestMapping(value = "eliminarVisitante", method = RequestMethod.POST)
    public String eliminarVisitante(Visitante visitante, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute(USUARIO) == null){
            return SESION_CADUCA;
        }
        return visitanteServicio.eliminar(visitante);
    }
}

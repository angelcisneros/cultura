/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.crud.busquedas;

import javax.servlet.http.HttpSession;
import mx.ipn.escom.servicios.CasaServicio;
import static mx.ipn.escom.servicios.util.MensajesCrud.SESION_CADUCA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Lap_christo
 */
@Controller
@RequestMapping("administrador/")
public class CasaBusquedasController {

    @Autowired
    CasaServicio casaServicio;

    @RequestMapping(value = "buscarCasaPorNombre", method = RequestMethod.POST)
    public String buscarCasaPorNombre(@RequestParam String nombre, HttpSession session, Model model) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        model.addAttribute("casa", casaServicio.buscarPorNombre(nombre));
        return "crud/casaBody";
    }

}

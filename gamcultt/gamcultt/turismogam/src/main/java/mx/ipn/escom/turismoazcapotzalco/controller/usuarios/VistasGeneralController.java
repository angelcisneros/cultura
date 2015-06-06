/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.usuarios;

import mx.ipn.escom.servicios.CategoriaTallerServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Lap_christo
 */

@Controller
public class VistasGeneralController {
    
    @Autowired
    CategoriaTallerServicio categoriaTallerServicio;
    
    @RequestMapping(value ="casas")
    public String casasController() {
        return "usuarios/casas";
    }
    
    @RequestMapping(value ="tallerprincipal")
    public String tallerController(Model model) {
        model.addAttribute("categoriasTaller", categoriaTallerServicio.buscarTodos());
        return "usuarios/taller";
    }
    
    @RequestMapping(value ="eventoprincipal")
    public String eventoController() {
        return "usuarios/evento";
    }
    
     @RequestMapping(value ="misionvision")
    public String misvisController() {
        return "usuarios/misionvision";
    }
     @RequestMapping(value ="contacto")
    public String contactoController() {
        return "usuarios/contacto";
    }
}

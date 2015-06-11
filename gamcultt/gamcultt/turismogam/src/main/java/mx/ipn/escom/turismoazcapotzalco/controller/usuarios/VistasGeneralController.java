/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.usuarios;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Lap_christo
 */
@Controller
public class VistasGeneralController {

   

    @RequestMapping(value = "eventoprincipal")
    public String eventoController() {
        return "usuarios/evento";
    }

    @RequestMapping(value = "misionvision")
    public String misvisController() {
        return "usuarios/misionvision";
    }

    @RequestMapping(value = "contacto")
    public String contactoController() {
        return "usuarios/contacto";
    }
    
    

}

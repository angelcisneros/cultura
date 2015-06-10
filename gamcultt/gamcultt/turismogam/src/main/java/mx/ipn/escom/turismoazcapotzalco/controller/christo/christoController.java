/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.christo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Lap_christo
 */
@Controller
public class christoController {
    
    @RequestMapping(value = "christo")
    public String christoController() {
        return "christo/pruebachristo";
    }
}

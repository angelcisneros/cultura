/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.usuarios;

import java.io.File;
import mx.ipn.escom.servicios.CasaServicio;
import static mx.ipn.escom.servicios.util.ManejadorArchivos.convierteArchivoToArregloBytes;
import static mx.ipn.escom.servicios.util.Rutas.CASAS;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import static org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder.controller;

/**
 *
 * @author Lap_christo
 */
@Controller
public class casausuarioController {
    @Autowired
    CasaServicio casaServicio;
    
    @RequestMapping(value = "casas")
    public String casasController(Model model) {
        model.addAttribute("casas",casaServicio.buscarTodos());
        return "usuarios/casas";
    }

  @ResponseBody
    @RequestMapping(value = "casasimagen/{idCasa}")
    public byte[] casas(@PathVariable Integer idCasa) {
        String path = CASAS + idCasa +"\\" + idCasa+ ".jpg";
        return convierteArchivoToArregloBytes(new File(path));
    }   
}

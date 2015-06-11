/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.usuarios;

import java.io.File;
import javax.servlet.http.HttpSession;
import mx.ipn.escom.entidades.Casa;
import mx.ipn.escom.servicios.CasaServicio;
import mx.ipn.escom.servicios.CategoriaTallerServicio;
import static mx.ipn.escom.servicios.util.ManejadorArchivos.convierteArchivoToArregloBytes;
import static mx.ipn.escom.servicios.util.Rutas.CATEGORIA_TALLER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Lap_christo
 */
@Controller
public class CategoriaTallerusuarioController {

    @Autowired
    CategoriaTallerServicio categoriaTallerServicio;
    
    @Autowired
    CasaServicio casaServicio;

    @RequestMapping(value = "tallerprincipal")
    public String tallerController(Model model) {
        model.addAttribute("categoriasTaller", categoriaTallerServicio.buscarTodos());
        return "usuarios/taller";
    } 
    
    @RequestMapping(value = "buscarPorCategoriaTaller/{idCategoria}")
    public String buscarPorCategoriaTaller(@PathVariable Integer idCategoria, Model model) {
        model.addAttribute("casasImparte", casaServicio.buscarPorCategoriaTaller(idCategoria));
        return "usuarios/casasImpartenTaller";
    }
    
    @ResponseBody
    @RequestMapping(value = "categoriaTaller/{idCategoria}")
    public byte[] categoriaTaller(@PathVariable Integer idCategoria) {
        String path = CATEGORIA_TALLER + "1.jpg";
        return convierteArchivoToArregloBytes(new File(path));
    }
    
}

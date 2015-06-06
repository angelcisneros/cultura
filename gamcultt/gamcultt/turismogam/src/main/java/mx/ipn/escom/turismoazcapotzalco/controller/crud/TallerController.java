/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.crud;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import mx.ipn.escom.entidades.Taller;
import mx.ipn.escom.servicios.CategoriaTallerServicio;
import mx.ipn.escom.servicios.TallerServicio;
import static mx.ipn.escom.servicios.util.MensajesCrud.ERROR_DATOS;
import static mx.ipn.escom.servicios.util.MensajesCrud.SESION_CADUCA;
import static mx.ipn.escom.servicios.util.Rutas.TALLERES;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

/**
 *
 * @author vcisneros
 */
@Controller
@RequestMapping("administrador/")
public class TallerController {

    @Autowired
    TallerServicio tallerServicio;

    @Autowired
    CategoriaTallerServicio categoriaTallerServicio;

    @RequestMapping(value = "tallers", method = RequestMethod.GET)
    public String alumnos(Model model, HttpSession session) {
        model.addAttribute("tallers", tallerServicio.buscarTodos());
        model.addAttribute("categorias", categoriaTallerServicio.buscarTodos());
        return "crud/taller";
    }

    @ResponseBody
    @RequestMapping(value = "agregarTaller", method = RequestMethod.POST)
    public String agregarTaller(@Valid @ModelAttribute("taller") Taller taller, BindingResult bindingResult, HttpSession session, Model model) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {
            return ERROR_DATOS;
        }
        return tallerServicio.agregar(taller);
    }

    @ResponseBody
    @RequestMapping(value = "editarTaller", method = RequestMethod.POST)
    public String editarTaller(@Valid @ModelAttribute("taller") Taller taller, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {
            return ERROR_DATOS;
        }
        return tallerServicio.actualizar(taller);
    }

    @ResponseBody
    @RequestMapping(value = "eliminarTaller", method = RequestMethod.POST)
    public String eliminarTaller(Taller taller, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        return tallerServicio.eliminar(taller);
    }

    @ResponseBody
    @RequestMapping(value = "subirGaleriaTaller/{id}", method = RequestMethod.POST)
    public String subirGaleriaTaller(MultipartHttpServletRequest request, @PathVariable Integer id, HttpSession session) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        Iterator<String> itr = request.getFileNames();
        
        while (itr.hasNext()) {
            MultipartFile mpf = request.getFile(itr.next());
            return tallerServicio.subirImagen(mpf, id);
        }
        return "-1";
    }
    
    @RequestMapping(value = "galeriaTaller/{id}/{i}", method = RequestMethod.GET)
    public void muestraPdf(@PathVariable Integer id,@PathVariable Integer i, HttpSession session, HttpServletRequest request, HttpServletResponse response){
        if (session.getAttribute("usuario") == null) {
            return;
        }
        response.setContentType("image/png");
        
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        File file = tallerServicio.regresaArchivo(id, i);
        try {
            InputStream in = new FileInputStream(file);
            byte[] data = new byte[in.available()];
            in.read(data);
            javax.servlet.ServletOutputStream servletoutputstream = response.getOutputStream();

            servletoutputstream.write(data);
            servletoutputstream.flush();
            servletoutputstream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
    }
    @ResponseBody
    @RequestMapping(value = "cuentaImagenes/{id}", method = RequestMethod.POST)
    public String cuentaImagenes(@PathVariable Integer id, HttpSession session) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        return tallerServicio.cuentaImagenes(id) + "";
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.crud;

import java.io.File;
import java.util.Iterator;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import mx.ipn.escom.entidades.Casa;
import mx.ipn.escom.servicios.CasaServicio;
import static mx.ipn.escom.servicios.util.Llave.USUARIO;
import static mx.ipn.escom.servicios.util.ManejadorArchivos.convierteArchivoToArregloBytes;
import static mx.ipn.escom.servicios.util.ManejadorArchivos.subirImagen;
import static mx.ipn.escom.servicios.util.MensajesCrud.ERROR_DATOS;
import static mx.ipn.escom.servicios.util.MensajesCrud.SESION_CADUCA;
import static mx.ipn.escom.servicios.util.Rutas.CASAS;
import static mx.ipn.escom.servicios.util.Validaciones.esEntero;
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
public class CasaController {

    @Autowired
    CasaServicio casaServicio;

    @RequestMapping(value = "casas", method = RequestMethod.GET)
    public String casas(Model model, HttpSession session) {
        if (session.getAttribute(USUARIO) == null) {
            return "templates/login";
        }
        model.addAttribute("casas", casaServicio.buscarTodos());
        return "crud/casa";
    }

    @ResponseBody
    @RequestMapping(value = "agregarCasa", method = RequestMethod.POST)
    public String agregarCasa(@Valid @ModelAttribute("casa") Casa casa, BindingResult bindingResult, HttpSession session) {
        
        System.out.println(casa.isEsCentro());
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {
            return ERROR_DATOS;
        }
        return casaServicio.agregar(casa);
    }

    @ResponseBody
    @RequestMapping(value = "editarCasa", method = RequestMethod.POST)
    public String editarCasa(@Valid @ModelAttribute("casa") Casa casa, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {
            return ERROR_DATOS;
        }
        return casaServicio.actualizar(casa);
    }

    @ResponseBody
    @RequestMapping(value = "eliminarCasa", method = RequestMethod.POST)
    public String eliminarCasa(Casa casa, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        return casaServicio.eliminar(casa);
    }

    @ResponseBody
    @RequestMapping(value = "muestraImagenCasa/{idCategoria}", produces = "image/png")
    public byte[] casaImagen(@PathVariable String idCategoria) {
        if (esEntero(idCategoria)) {
            String path = CASAS + idCategoria + "\\" + idCategoria + ".jpg";
            return convierteArchivoToArregloBytes(new File(path));
        }
        return null;
    }

    @RequestMapping(value = "verImagenCasa/{idCategoria}")
    public String muestraImagen(@PathVariable String idCategoria, Model model) {
        if (esEntero(idCategoria)) {
            model.addAttribute("vista", "administrador/muestraImagenCasa");
            model.addAttribute("imagen", idCategoria);
            return "templates/imagen";
        }
        return "templates/404";
    }

    @ResponseBody
    @RequestMapping(value = "subirImagenCasa/{id}", method = RequestMethod.POST)
    public String subirImagenCasa(MultipartHttpServletRequest request, @PathVariable String id, HttpSession session) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        if (esEntero(id)) {
            if (casaServicio.buscarPorId(Integer.parseInt(id)) != null) {
                Iterator<String> itr = request.getFileNames();
                while (itr.hasNext()) {
                    MultipartFile mpf = request.getFile(itr.next());
                    return subirImagen(mpf, CASAS + id + "\\" + id + ".jpg");
                }
            } else {
                return "La casa que quiere modificar no existe";
            }
        } else {
            return "Error...";
        }

        return "-1";
    }

}

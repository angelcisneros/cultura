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
import mx.ipn.escom.entidades.CategoriaEvento;
import mx.ipn.escom.entidades.CategoriaTaller;
import mx.ipn.escom.servicios.CategoriaEventoServicio;
import mx.ipn.escom.servicios.CategoriaTallerServicio;
import static mx.ipn.escom.servicios.util.Llave.USUARIO;
import static mx.ipn.escom.servicios.util.ManejadorArchivos.convierteArchivoToArregloBytes;
import static mx.ipn.escom.servicios.util.ManejadorArchivos.subirImagen;
import static mx.ipn.escom.servicios.util.MensajesCrud.ERROR_DATOS;
import static mx.ipn.escom.servicios.util.MensajesCrud.SESION_CADUCA;
import static mx.ipn.escom.servicios.util.Rutas.CASAS;
import static mx.ipn.escom.servicios.util.Rutas.CATEGORIA_EVENTO;
import static mx.ipn.escom.servicios.util.Rutas.CATEGORIA_TALLER;
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
 * @author angel
 */
@Controller
@RequestMapping("administrador/")
public class CategoriaTallerController {
    
    @Autowired
    CategoriaTallerServicio categoriaTallerServicio;
    
    @Autowired
    CategoriaEventoServicio categoriaEventoServicio;
    
    @RequestMapping(value = "categorias", method = RequestMethod.GET)
    public String categorias(HttpSession session, Model model){
        if (session.getAttribute(USUARIO) == null) {
            return "templates/login";
        }
        model.addAttribute("categoriasTaller", categoriaTallerServicio.buscarTodos());
        model.addAttribute("categoriasEvento", categoriaEventoServicio.buscarTodos());
        return "crud/categorias";
    }
    
    @ResponseBody
    @RequestMapping(value = "agregarCategoriaTaller", method = RequestMethod.POST)
    public String agregarCategoriaTaller(@Valid @ModelAttribute("categoriaTaller") CategoriaTaller categoriaTaller, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {
            return ERROR_DATOS;
        }
        return categoriaTallerServicio.agregar(categoriaTaller);
    }

    @ResponseBody
    @RequestMapping(value = "editarCategoriaTaller", method = RequestMethod.POST)
    public String editarCategoriaTaller(@Valid @ModelAttribute("categoriaTaller") CategoriaTaller categoriaTaller, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {
            return ERROR_DATOS;
        }
        return categoriaTallerServicio.actualizar(categoriaTaller);
    }

    @ResponseBody
    @RequestMapping(value = "eliminarCategoriaTaller", method = RequestMethod.POST)
    public String eliminarCategoriaTaller(CategoriaTaller categoriaTaller, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        return categoriaTallerServicio.eliminar(categoriaTaller);
    }

    
    @ResponseBody
    @RequestMapping(value = "agregarCategoriaEvento", method = RequestMethod.POST)
    public String agregarCategoriaEvento(@Valid @ModelAttribute("categoriaEvento") CategoriaEvento categoriaEvento, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {
            return ERROR_DATOS;
        }
        return categoriaEventoServicio.agregar(categoriaEvento);
    }

    @ResponseBody
    @RequestMapping(value = "editarCategoriaEvento", method = RequestMethod.POST)
    public String editarCategoriaEvento(@Valid @ModelAttribute("categoriaEvento") CategoriaEvento categoriaEvento, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {
            return ERROR_DATOS;
        }
        return categoriaEventoServicio.actualizar(categoriaEvento);
    }

    @ResponseBody
    @RequestMapping(value = "eliminarCategoriaEvento", method = RequestMethod.POST)
    public String eliminarCategoriaEvento(CategoriaEvento categoriaEvento, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        return categoriaEventoServicio.eliminar(categoriaEvento);
    }
    
    
    
    
    @ResponseBody
    @RequestMapping(value = "muestraImagenCategoriaTalle/{idCategoria}", produces = "image/png")
    public byte[] muestraImagen(@PathVariable String idCategoria) {
        if (esEntero(idCategoria)) {
            String path = CATEGORIA_TALLER + idCategoria + ".jpg";
            return convierteArchivoToArregloBytes(new File(path));
        }
        return null;
    }

    @RequestMapping(value = "verImagenCategoriaTaller/{idCategoria}")
    public String muestraImagen(@PathVariable String idCategoria, Model model) {
        if (esEntero(idCategoria)) {
            model.addAttribute("vista", "administrador/muestraImagenCategoriaTalle");
            model.addAttribute("imagen", idCategoria);
            return "templates/imagen";
        }
        return "templates/404";
    }

    @ResponseBody
    @RequestMapping(value = "subirImagenCategoriaTaller/{id}", method = RequestMethod.POST)
    public String subirImagenCasa(MultipartHttpServletRequest request, @PathVariable String id, HttpSession session) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        if (esEntero(id)) {
            if (categoriaTallerServicio.buscarPorId(Integer.parseInt(id)) != null) {
                Iterator<String> itr = request.getFileNames();
                while (itr.hasNext()) {
                    MultipartFile mpf = request.getFile(itr.next());
                    return subirImagen(mpf, CATEGORIA_TALLER + id + ".jpg");
                }
            } else {
                return "La casa que quiere modificar no existe";
            }
        } else {
            return "Error...";
        }

        return "-1";
    }

    
    @ResponseBody
    @RequestMapping(value = "muestraImagenCategoriaEvento/{idCategoria}", produces = "image/png")
    public byte[] muestraImagenEvento(@PathVariable String idCategoria) {
        if (esEntero(idCategoria)) {
            String path = CATEGORIA_EVENTO + idCategoria + ".jpg";
            return convierteArchivoToArregloBytes(new File(path));
        }
        return null;
    }

    @RequestMapping(value = "verImagenCategoriaEvento/{idCategoria}")
    public String muestraImagenEvento(@PathVariable String idCategoria, Model model) {
        if (esEntero(idCategoria)) {
            model.addAttribute("vista", "administrador/muestraImagenCategoriaEvento");
            model.addAttribute("imagen", idCategoria);
            return "templates/imagen";
        }
        return "templates/404";
    }

    @ResponseBody
    @RequestMapping(value = "subirImagenCategoriaEvento/{id}", method = RequestMethod.POST)
    public String subirImagenEvento(MultipartHttpServletRequest request, @PathVariable String id, HttpSession session) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        if (esEntero(id)) {
            if (categoriaEventoServicio.buscarPorId(Integer.parseInt(id)) != null) {
                Iterator<String> itr = request.getFileNames();
                while (itr.hasNext()) {
                    MultipartFile mpf = request.getFile(itr.next());
                    return subirImagen(mpf, CATEGORIA_EVENTO + id + ".jpg");
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

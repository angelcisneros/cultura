/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.servicios;

import java.util.List;
import mx.ipn.escom.entidades.Casa;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Lap_christo
 */
public interface CasaServicio {
    String agregar(Casa casa);
    String actualizar(Casa casa);
    String eliminar(Casa casa);
    String eliminar(Integer id);
    
    String agregarImagenPrincipal(Integer id, MultipartFile imagen);
    
    Casa buscarPorId(Integer id);
    List<Casa> buscarTodos();
    
    List<Casa> buscarPorCategoriaTaller(Integer categoriaTaller);
    List<Casa> buscarPorNombre (String nombre);
    List<Casa> buscarPorCasaCentro (String esCentro);
}

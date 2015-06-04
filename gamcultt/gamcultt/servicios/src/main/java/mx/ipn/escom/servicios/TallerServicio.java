/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.servicios;

import java.io.File;
import java.util.List;
import mx.ipn.escom.entidades.Taller;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Lap_christo
 */
public interface TallerServicio {
    String agregar(Taller taller);
    String actualizar(Taller taller);
    String eliminar(Taller taller);
    String eliminar(Integer id);
    
    Taller buscarPorId(Integer id);
    List<Taller> buscarTodos();
    
    String subirImagen(MultipartFile contenido, Integer id);
    Integer cuentaImagenes(Integer id);
    File regresaArchivo(Integer id, Integer i);
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mx.ipn.escom.servicios.util;

/**
 *
 * @author angel
 */
public class Rutas {
    //public static final String JASPER = "C:/Users/vcisneros/Documents/NetBeansProjects/Repositorio/Nomifast/src/main/webapp/WEB-INF/jasper/mainNomina.jasper";  ;
    public static final String SERVER = System.getProperty("user.dir") + "\\Cultura\\";
    public static final String TALLERES = SERVER + "talleres\\";
    public static final String EVENTOS = SERVER + "eventos\\";
    public static final String USUARIOS = SERVER + "usuarios\\";
    
    public static final String ASUNTO_MAIL_TIMBRADO = "Timbrado de Recibo de Nómina";
    public static final String MENSAJE_MAIL_TIMBRADO = "Estimado usuario, a continuación se anexan sus recibos de nómina (Representación Impresa y XML ), Gracias por utilizar nuestro servicio.";
    public static final String ASUNTO_MAIL_CANCELADO = "Cancelación de Recibo de Nómina";
    public static final String MENSAJE_MAIL_CANCELADO = "Estimado usuario, a continuación se anexa su recibo de cancelación (Archivo XML).";
    
    
    public static final String ACCESO_SISTEMA = "Credenciales del sistema Quadrum Contratos";
}

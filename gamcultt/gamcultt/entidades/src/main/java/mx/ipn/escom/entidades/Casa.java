package mx.ipn.escom.entidades;
// Generated 29/05/2015 09:21:20 AM by Hibernate Tools 3.6.0

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.URL;


/**
 * Casa generated by hbm2java
 */
@Entity
@Table(name = "casa", catalog = "gamcultt")
@AllArgsConstructor
@NoArgsConstructor
public @Data class Casa implements java.io.Serializable {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;

//    @Pattern(regexp = "^[a-zA-Záéíóúñ]{2,}$", message="Verifique el nombre")
    @Column(name = "nombre", nullable = false, length = 85)
    private String nombre;

    @NotBlank(message = "Debe Ingresar una Dirección")
//    @Column(name = "direccion", nullable = false, length = 105)
    private String direccion;

//    @Pattern(regexp = "^[1-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}$", message="Verifique el Teléfono")
    @Column(name = "telefono", nullable = false, length = 20)
    private String telefono;

    //ESTA PENDIENTE LA VALIDACION
    @Column(name = "horario", nullable = false, length = 45)
    private String horario;

//    @NotBlank(message = "Debe de Ingresar Información")
    @Column(name = "informacion", nullable = false, length = 65535)
    private String informacion;

//    @URL(message = "URL Invalida")
    @Column(name = "likn_maps", length = 100)
    private String liknMaps;
    
    @Column(name = "esCentro", nullable = false)
    private boolean esCentro;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "casa")
    private List<GaleriaCasa> galeriaCasas;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "casa")
    private List<Sala> salas;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "casa")
    private List<Usuario> usuarios;

    public Casa(String nombre, String direccion, String telefono, String horario, String informacion) {
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
        this.horario = horario;
        this.informacion = informacion;
    }
}

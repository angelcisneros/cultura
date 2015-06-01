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
import lombok.Getter;
import lombok.Setter;

/**
 * Casa generated by hbm2java
 */
@Entity
@Table(name = "casa", catalog = "gamcultt"
)
public class Casa implements java.io.Serializable {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    @Getter @Setter private Integer id;

    @Column(name = "nombre", nullable = false, length = 85)
    @Getter @Setter private String nombre;

    @Column(name = "direccion", nullable = false, length = 105)
    @Getter @Setter private String direccion;

    @Column(name = "telefono", nullable = false, length = 20)
    @Getter @Setter private String telefono;

    @Column(name = "horario", nullable = false, length = 45)
    @Getter @Setter private String horario;

    @Column(name = "informacion", nullable = false, length = 65535)
    @Getter @Setter private String informacion;

    @Column(name = "likn_maps", length = 100)
    @Getter @Setter private String liknMaps;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "casa")
    @Getter @Setter private List<GaleriaCasa> galeriaCasas;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "casa")
    @Getter @Setter private List<Sala> salas;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "casa")
    @Getter @Setter private List<Encargado> encargados;

    public Casa() {
    }

    public Casa(String nombre, String direccion, String telefono, String horario, String informacion) {
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
        this.horario = horario;
        this.informacion = informacion;
    }

    public Casa(String nombre, String direccion, String telefono, String horario, String informacion, String liknMaps, List<GaleriaCasa> galeriaCasas, List<Sala> salas, List<Encargado> encargados) {
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
        this.horario = horario;
        this.informacion = informacion;
        this.liknMaps = liknMaps;
        this.galeriaCasas = galeriaCasas;
        this.salas = salas;
        this.encargados = encargados;
    }

}

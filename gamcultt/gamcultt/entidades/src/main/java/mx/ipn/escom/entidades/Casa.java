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
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


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

    @Column(name = "nombre", nullable = false, length = 85)
    private String nombre;

    @Column(name = "direccion", nullable = false, length = 105)
    private String direccion;

    @Column(name = "telefono", nullable = false, length = 20)
    private String telefono;

    @Column(name = "horario", nullable = false, length = 45)
    private String horario;

    @Column(name = "informacion", nullable = false, length = 65535)
    private String informacion;

    @Column(name = "likn_maps", length = 100)
    private String liknMaps;

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

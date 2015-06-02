package mx.ipn.escom.entidades;
// Generated 29/05/2015 09:21:20 AM by Hibernate Tools 3.6.0

import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * Evento generated by hbm2java
 */
@Entity
@Table(name = "evento", catalog = "gamcultt")
@AllArgsConstructor
@NoArgsConstructor
public @Data class Evento implements java.io.Serializable {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "sala", nullable = false)
    private Sala sala;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "categoria_evento", nullable = false)
    private CategoriaEvento categoriaEvento;

    @Column(name = "nombre", nullable = false, length = 45)
    private String nombre;

    @Temporal(TemporalType.DATE)
    @Column(name = "fecha_inicio", nullable = false, length = 10)
    private Date fechaInicio;

    @Temporal(TemporalType.DATE)
    @Column(name = "fecha_fin", nullable = false, length = 10)
    private Date fechaFin;

    @Column(name = "informacion", nullable = false, length = 65535)
    private String informacion;

    @Column(name = "horario", nullable = false, length = 45)
    private String horario;

    @Column(name = "direccion", nullable = false, length = 105)
    private String direccion;

    @Column(name = "asistencia_estimada", nullable = false)
    private Integer asistenciaEstimada;

    @Column(name = "link_maps", nullable = false, length = 100)
    private String linkMaps;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "evento")
    private List<GaleriaEvento> galeriaEventos;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "evento")
    private List<VisitanteEvento> visitanteEventos;

    public Evento(Sala sala, CategoriaEvento categoriaEvento, String nombre, Date fechaInicio, Date fechaFin, String informacion, String horario, String direccion, Integer asistenciaEstimada, String linkMaps) {
        this.sala = sala;
        this.categoriaEvento = categoriaEvento;
        this.nombre = nombre;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.informacion = informacion;
        this.horario = horario;
        this.direccion = direccion;
        this.asistenciaEstimada = asistenciaEstimada;
        this.linkMaps = linkMaps;
    }

}

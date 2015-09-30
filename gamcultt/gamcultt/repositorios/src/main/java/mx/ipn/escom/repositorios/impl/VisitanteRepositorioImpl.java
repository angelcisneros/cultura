/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.repositorios.impl;

import java.util.List;
import mx.ipn.escom.entidades.Visitante;
import mx.ipn.escom.repositorios.VisitanteRepositorio;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Lap_christo
 */

@Transactional
@Repository
public class VisitanteRepositorioImpl implements VisitanteRepositorio{
    
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Boolean agregar(Visitante visitante) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().save(visitante);
            guardado = true;
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return guardado;
    }

    @Override
    public Boolean actualizar(Visitante visitante) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().update(visitante);
            guardado = true;
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return guardado;
    }

    @Override
    public Boolean eliminar(Visitante visitante) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().delete(visitante);
            guardado = true;
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return guardado;
    }

    @Override
    public Boolean eliminar(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Visitante buscarPorId(Integer id) {
        return (Visitante) sessionFactory.getCurrentSession().createCriteria(Visitante.class)
                .add(Restrictions.eq("id", id))
                .uniqueResult();
    }

    @Override
    public List<Visitante> buscarTodos() {
        return (List<Visitante>) sessionFactory.getCurrentSession().createCriteria(Visitante.class)
                .list();
    }

    @Override
    public List<Visitante> buscarPorCorreo(String correo) {
        return (List<Visitante>) sessionFactory.getCurrentSession().createCriteria(Visitante.class)
                .add(Restrictions.eq("correo", correo))
                .list();
    }

    @Override
    public List<Visitante> buscarPorNombre(String nombre, String apellidoPaterno , String apellidoMaterno) {
         return (List<Visitante>) sessionFactory.getCurrentSession().createCriteria(Visitante.class)
                .add(Restrictions.like("nombre", "%" + nombre + "%"))
                .add(Restrictions.like("apellidoPaterno", "%"+ apellidoPaterno + "%"))
                .add(Restrictions.like("apellidoMaterno","%" +apellidoMaterno +"%"))
                .list();
    }

    
    @Override
    public List<Visitante> buscarPorEdad(String edadmin, String edadmax) {
         return (List<Visitante>) sessionFactory.getCurrentSession().createCriteria(Visitante.class)
                .add(Restrictions.between("edad", edadmin, edadmax))
                .list();
    }

    @Override
    public List<Visitante> buscarPorSexo(String sexo) {
        return (List<Visitante>) sessionFactory.getCurrentSession().createCriteria(Visitante.class)
                .add(Restrictions.eq("sexo", sexo))
                .list();
    }
    
}

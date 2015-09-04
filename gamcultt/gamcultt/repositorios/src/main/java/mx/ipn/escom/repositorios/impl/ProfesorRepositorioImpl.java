/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.repositorios.impl;

import java.util.List;
import mx.ipn.escom.entidades.Profesor;
import mx.ipn.escom.repositorios.ProfesorRepositorio;
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
public class ProfesorRepositorioImpl implements ProfesorRepositorio{
    
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Boolean agregar(Profesor profesor) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().save(profesor);
            guardado = true;
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return guardado;
    }

    @Override
    public Boolean actualizar(Profesor profesor) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().update(profesor);
            guardado = true;
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return guardado;
    }

    @Override
    public Boolean eliminar(Profesor profesor) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().delete(profesor);
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
    public Profesor buscarPorId(Integer id) {
        return (Profesor) sessionFactory.getCurrentSession().createCriteria(Profesor.class)
                .add(Restrictions.eq("id", id))
                .uniqueResult();
    }

    @Override
    public List<Profesor> buscarTodos() {
        return (List<Profesor>) sessionFactory.getCurrentSession().createCriteria(Profesor.class)
                .list();
    }

    @Override
    public List<Profesor> buscarPorCorreo(String correo) {
        return (List<Profesor>) sessionFactory.getCurrentSession().createCriteria(Profesor.class)
                .add(Restrictions.eq("correo", correo))
                .list();
    }

    @Override
    public List<Profesor> buscarPorNombre(String nombre, String paterno, String materno) {
        return (List<Profesor>) sessionFactory.getCurrentSession().createCriteria(Profesor.class)
                .add(Restrictions.like("nombre", "%" + nombre + "%"))
                .add(Restrictions.like("paterno", "%"+ paterno + "%"))
                .add(Restrictions.like("materno","%" +materno +"%"))
                .list();
    }
 
    @Override
    public List<Profesor>  buscarPorEdad(String edad) {
         return (List<Profesor> ) sessionFactory.getCurrentSession().createCriteria(Profesor.class)
                 .add(Restrictions.eq("edad", edad))
                 .list();
    }
       
}




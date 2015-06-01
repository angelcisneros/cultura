/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mx.ipn.escom.repositorios.impl;

import java.util.List;
import mx.ipn.escom.entidades.CategoriaEvento;
import mx.ipn.escom.repositorios.CategoriaEventoRepositorio;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author angel
 */


@Transactional
@Repository
public class CategoriaEventoRepositorioImpl implements CategoriaEventoRepositorio{
    
    
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Boolean agregar(CategoriaEvento categoriaEvento) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().save(categoriaEvento);
            guardado = true;
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return guardado;
    }

    @Override
    public Boolean actualizar(CategoriaEvento categoriaEvento) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().update(categoriaEvento);
            guardado = true;
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return guardado;
    }

    @Override
    public Boolean eliminar(CategoriaEvento categoriaEvento) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().delete(categoriaEvento);
            guardado = true;
        } catch (HibernateException he) {
            he.printStackTrace();
            guardado = false;
        }
        return guardado;
    }

    @Override
    public Boolean eliminar(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public CategoriaEvento buscarPorId(Integer id) {
        return (CategoriaEvento) sessionFactory.getCurrentSession().createCriteria(CategoriaEvento.class)
                .add(Restrictions.eq("id", id))
                .uniqueResult();
    }

    @Override
    public List<CategoriaEvento> buscarTodos() {
        return (List<CategoriaEvento>) sessionFactory.getCurrentSession().createCriteria(CategoriaEvento.class)
                .list();
    }
}

package org.caihaolun.dao;

import org.caihaolun.model.Staffpost;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Administrator on 2017/3/9.
 * 先定义好增删改查方法
 */

@Repository
@Transactional
public class StaffPostDAO extends HibernateDaoSupport {
    @Resource
    public void setHibernateTemplate(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }

    public void save(Staffpost value) {
        this.getHibernateTemplate().saveOrUpdate(value);
    }

    public void delete(Staffpost value) {
        this.getHibernateTemplate().delete(value);
    }

    public Staffpost findByID(String key) {
        return this.getHibernateTemplate().get(Staffpost.class, key);
    }

    public List<Staffpost> findAll() {
        return this.getHibernateTemplate().loadAll(Staffpost.class);
    }

}

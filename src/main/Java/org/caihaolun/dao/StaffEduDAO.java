package org.caihaolun.dao;

import org.caihaolun.model.Staffedu;
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
public class StaffEduDAO extends HibernateDaoSupport {
    @Resource
    public void setHibernateTemplate(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }

    public void save(Staffedu value) {
        this.getHibernateTemplate().saveOrUpdate(value);
    }

    public void delete(Staffedu value) {
        this.getHibernateTemplate().delete(value);
    }

    public Staffedu findByID(String key) {
        return this.getHibernateTemplate().get(Staffedu.class, key);
    }

    public List<Staffedu> findAll() {
        return this.getHibernateTemplate().loadAll(Staffedu.class);
    }

}

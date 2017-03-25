package org.caihaolun.dao;

import org.caihaolun.model.Dept;
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
public class DeptDAO extends HibernateDaoSupport {
    @Resource
    public void setHibernateTemplate(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }

    public void save(Dept value) {
        this.getHibernateTemplate().saveOrUpdate(value);
    }

    public void delete(Dept value) {
        this.getHibernateTemplate().delete(value);
    }

    public Dept findByID(String key) {
        return this.getHibernateTemplate().get(Dept.class, key);
    }

    public List<Dept> findAll() {
        return this.getHibernateTemplate().loadAll(Dept.class);
    }

    public void deleteBatch() {
        this.getHibernateTemplate().deleteAll(this.getHibernateTemplate().loadAll(Dept.class));
    }

}

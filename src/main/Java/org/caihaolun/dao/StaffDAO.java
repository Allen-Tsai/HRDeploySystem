package org.caihaolun.dao;

import org.caihaolun.model.Staff;
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
public class StaffDAO extends HibernateDaoSupport {
    @Resource
    public void setHibernateTemplate(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }

    public void save(Staff value) {
        this.getHibernateTemplate().saveOrUpdate(value);
    }

    public void delete(Staff value) {
        this.getHibernateTemplate().delete(value);
    }

    public Staff findByID(String key) {
        return this.getHibernateTemplate().get(Staff.class, key);
    }

    public List<Staff> findAll() {
        return this.getHibernateTemplate().loadAll(Staff.class);
    }

    public void deleteBatch() {
        this.getHibernateTemplate().deleteAll(this.getHibernateTemplate().loadAll(Staff.class));
    }

}

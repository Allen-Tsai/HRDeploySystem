package org.caihaolun.dao;

import org.caihaolun.model.User;
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
public class UserDAO extends HibernateDaoSupport {
    @Resource
    public void setHibernateTemplate(SessionFactory sessionFactory) {
        super.setSessionFactory(sessionFactory);
    }

    public void save(User value) {
        this.getHibernateTemplate().saveOrUpdate(value);
    }

    public void delete(User value) {
        this.getHibernateTemplate().delete(value);
    }

    public User findByID(String key) {
        return this.getHibernateTemplate().get(User.class, key);
    }

    public List<User> findAll() {
        return this.getHibernateTemplate().loadAll(User.class);
    }

}

package org.caihaolun.test;

import org.caihaolun.dao.UserDAO;
import org.caihaolun.model.User;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Administrator on 2017/3/1.
 * 测试类
 */

@Component
public class TestUser {
    //    private UserService userDAO;
//
//    @Resource
//    public void setUserService(UserService userDAO) {
//        this.userDAO = userDAO;
//    }
//
    private static UserDAO userDAO = new UserDAO();

    static {
        ApplicationContext ctx =
                new ClassPathXmlApplicationContext("applicationContext.xml");//读取bean.xml中的内容
        userDAO = ctx.getBean("userDAO", UserDAO.class);//创建bean的引用对象
    }

    @Test
    //测试save
    public void testSave() throws Exception {
        User user = new User();
        user.setUsername("123");
        user.setPassword("456");
        user.setEmail("1234");
        userDAO.save(user);
    }

    @Test
    //测试update
    public void testUpdate() throws Exception {
        User user;
        if ((user = userDAO.findByID("123")) == null) {
            user = new User();
        }
        user.setUsername("1232");
        userDAO.save(user);
    }

    @Test
    public void testDelete() throws Exception {
        User user;
        if ((user = userDAO.findByID("123")) == null) {
            user = new User();
        }
        userDAO.delete(user);
    }

    @Test
    public void testGetAll() throws Exception {
        List<User> list = userDAO.findAll();
        for (User u : list) {
            System.out.println(u.getEmail() + " " + u.getPassword());
        }
    }
}




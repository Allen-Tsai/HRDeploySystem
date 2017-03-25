package org.caihaolun.controller;

import org.caihaolun.dao.UserDAO;
import org.caihaolun.model.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2017/3/9.
 * 简单的user控制层
 */
@Controller
public class UserController {
    private static UserDAO userDAO;

    static {
        ApplicationContext ctx =
                new ClassPathXmlApplicationContext("applicationContext.xml");//读取bean.xml中的内容
        userDAO = ctx.getBean("userDAO", UserDAO.class);//创建bean的引用对象
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "login";
    }

    /**
     * 我现在还不知道怎么往视图传输数据然后跳转页面 就先这样吧
     *
     * @return
     */
    @RequestMapping(value = "welcome", method = RequestMethod.POST)
    public String loginValidate(@ModelAttribute("user") User user, ModelMap modelMap) {
        try {
            User user_ = userDAO.findByID(user.getEmail());
            if (userDAO.findByID(user.getEmail()) == null) {
                //用户名输入错误或用户不存在
                return "error";
            } else if (user.getPassword().equals(user_.getPassword())) {
                //密码正确
                modelMap.addAttribute("user", user_);
                return "homePage/welcome";
            } else {
                //密码输入错误
                return "error";
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }


//    @RequestMapping(value = "users")
//    public String getUsers(ModelMap modelMap) {
//        // 查询user表中所有记录
//        try {
//            // 将所有记录传递给要返回的jsp页面，放在userList当中
//            modelMap.addAttribute("userList", userDAO.findAll());
//        } catch (Exception ex) {
//            ex.printStackTrace();
//        }
//        // 返回users.jsp页面
//        return "users";
//    }

    //添加用户，用于注册的时候
    @RequestMapping(value = "addUser", method = RequestMethod.POST)
    public String insertUser(@ModelAttribute("user") User user) {
        try {
            userDAO.save(user);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return "/login";
    }

//    // 删除用户
//    @RequestMapping(value = "users/delete/{email}", method = RequestMethod.GET)
//    public String deleteUser(@PathVariable("email") String email) {
//        try {
//            User user = userDAO.findByID(email);
//            if (user != null) {
//                userDAO.delete(user);
//            }
//        } catch (Exception ex) {
//            ex.printStackTrace();
//        }
//        // 立即刷新
//        return "redirect:users";
//    }

    @RequestMapping("/jsonSource")

//@RequestBody 将json对象转成java对象
//@ResponseBody 表示返回的是json对象

    public @ResponseBody User jsonSource(HttpServletRequest request) {
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User();
        user.setEmail(email);
        user.setUsername(username);
        user.setPassword(password);
        System.out.println(user.getEmail() + " " + user.getUsername());
        return user;
    }
}

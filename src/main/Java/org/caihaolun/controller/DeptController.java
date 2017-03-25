package org.caihaolun.controller;

import org.caihaolun.dao.DeptDAO;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/3/16.
 *
 */
@Controller
public class DeptController {
    private static DeptDAO deptDAO;

    static {
        ApplicationContext ctx =
                new ClassPathXmlApplicationContext("applicationContext.xml");//读取bean.xml中的内容
        deptDAO = ctx.getBean("deptDAO", DeptDAO.class);//创建bean的引用对象
    }

    @RequestMapping(value = "/homePage/features")
    public String getAllDept(ModelMap modelMap) throws Exception {
        // 查询表中所有记录
        // 将所有记录传递给要返回的jsp页面，放在staffList当中
        modelMap.addAttribute("deptList", deptDAO.findAll());
        // 返回原本jsp页面
        return "homePage/features";
    }
}

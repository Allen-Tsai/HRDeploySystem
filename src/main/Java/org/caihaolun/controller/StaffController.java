package org.caihaolun.controller;

import org.caihaolun.dao.StaffDAO;
import org.caihaolun.dao.StaffEduDAO;
import org.caihaolun.dao.StaffPostDAO;
import org.caihaolun.model.Staff;
import org.caihaolun.model.Staffpost;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

/**
 * Created by Administrator on 2017/3/9.
 * staff
 */
@Controller
public class StaffController {
    private static StaffDAO staffDAO;
    private static StaffEduDAO staffEduDAO;
    private static StaffPostDAO staffPostDAO;

    private static Staff privateStaff;

    static {
        ApplicationContext ctx =
                new ClassPathXmlApplicationContext("applicationContext.xml");//读取bean.xml中的内容
        staffDAO = ctx.getBean("staffDAO", StaffDAO.class);//创建bean的引用对象
        staffEduDAO = ctx.getBean("staffEduDAO", StaffEduDAO.class);//创建bean的引用对象
        staffPostDAO = ctx.getBean("staffPostDAO", StaffPostDAO.class);//创建bean的引用对象
    }

    @RequestMapping(value = "/welcome")
    public String toMainPage() {
        return "/homePage/welcome";
    }

    @RequestMapping(value = "/homePage/staffs")
    public String getAllStaff(ModelMap modelMap) throws Exception {
        // 查询表中所有记录
        // 将所有记录传递给要返回的jsp页面，放在staffList当中
        modelMap.addAttribute("staffList", staffDAO.findAll());
        // 返回原本jsp页面
        return "homePage/tables/staff";
    }

    @RequestMapping(value = "/homePage/staffEdu")
    public String getAllStaffEdu(ModelMap modelMap) throws Exception {
        // 查询表中所有记录
        // 将所有记录传递给要返回的jsp页面，放在staffList当中
        modelMap.addAttribute("staffEduList", staffEduDAO.findAll());
        // 返回原本jsp页面
        return "homePage/tables/staffEdu";
    }

    @RequestMapping(value = "/homePage/staffPost")
    public String getAllStaffPost(ModelMap modelMap) throws Exception {
        // 查询表中所有记录
        // 将所有记录传递给要返回的jsp页面，放在staffList当中
        modelMap.addAttribute("staffPostList", staffPostDAO.findAll());
        System.out.println(staffPostDAO.findAll());
        // 返回原本jsp页面
        return "homePage/tables/staffPost";
    }

    //增加
    @RequestMapping(value = "/homePage/tables/add", method = RequestMethod.POST)
    public String insertStaff(@RequestBody Staff staff) throws Exception {
        System.out.println("success");
        staffDAO.save(staff);
        return "homePage/success";
    }

    //增加
    @RequestMapping(value = "/addPost", method = RequestMethod.POST)
    public String insertStaffPost(@RequestBody Staffpost staffPost) throws Exception {
        staffPostDAO.save(staffPost);
        return "homePage/success";
    }


    //查询
    @RequestMapping(value = "/search")
    public
    @ResponseBody
    Staff findStaff(String id) throws Exception {
        Staff staff = staffDAO.findByID(id);
        if (staff == null) {
            return null;
        } else {
            privateStaff = staff;
            return staff;
        }
    }

    //到结果界面
    @RequestMapping(value = "/homePage/getResult")
    public String getResult(ModelMap modelMap){
        String id = privateStaff.getId();
        modelMap.addAttribute("staff",privateStaff);
        modelMap.addAttribute("staffEdu",staffEduDAO.findByID(id));
        modelMap.addAttribute("staffPost",staffPostDAO.findByID(id));
        return "homePage/getResult";
    }

    // 到更新信息页面
    @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
    public String update(@PathVariable("id") String id, ModelMap modelMap) throws Exception {
        Staff staff = staffDAO.findByID(id);
        modelMap.addAttribute("staff", staff);
        return "homePage/tables/updateStaff";
    }

    // 处理修改请求
    @RequestMapping(value = "/update/ud", method = RequestMethod.POST)
    public String updatePost(@ModelAttribute("staff") Staff staff) throws Exception {
        staffDAO.save(staff);
        return "homePage/success";
    }

    // 删除
    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String deleteStaff(@PathVariable("id") String id) {
        try {
            System.out.println(id);
            staffDAO.delete(staffDAO.findByID(id));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return "homePage/success";
    }

}

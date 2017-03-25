package org.caihaolun.controller;

import org.caihaolun.dao.StaffEduDAO;
import org.caihaolun.dao.StaffPostDAO;
import org.caihaolun.model.Staffedu;
import org.caihaolun.model.Staffpost;
import org.caihaolun.service.CalculateNewStaff;
import org.caihaolun.service.CalculateOldStaff;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * Created by Administrator on 2017/3/16.
 *
 */
@Controller
public class StaffPatternController {

    //智能匹配的四个参数（节点）
    private static String category, qual, major, graduate;

    private static Map<String, String> map;
    private static String id_, score1_, score2_, score3_;
    private static StaffEduDAO staffEduDAO;
    private static StaffPostDAO staffPostDAO;

    static {
        ApplicationContext ctx =
                new ClassPathXmlApplicationContext("applicationContext.xml");//读取bean.xml中的内容
        staffEduDAO = ctx.getBean("staffEduDAO", StaffEduDAO.class);//创建bean的引用对象
        staffPostDAO = ctx.getBean("staffPostDAO", StaffPostDAO.class);//创建bean的引用对象

    }

    //给新员工打分
    @RequestMapping(value = "/addEdu", method = RequestMethod.POST)
    public String insertStaffEdu(@RequestBody Staffedu staffedu) throws Exception {
        category = staffedu.getCategory();
        qual = staffedu.getQual();
        major = staffedu.getMajor();
        graduate = staffedu.getMajor();
        staffEduDAO.save(staffedu);
        //存储数据
        return "homePage/success";
    }

    //转到res.jsp页面
    @RequestMapping(value = "/getRes")
    public String getResPage(ModelMap modelMap) throws Exception {
        //进服务层
        Map<String, String> res;
        CalculateNewStaff cns = new CalculateNewStaff();
        res = cns.calcRes(category, qual, major, graduate);
        System.out.println(res.get("部门名称") + " " + res.get("级别"));
        modelMap.addAttribute("resMap", res);
        return "intellJPattern/res";
    }

    //增加老员工打分数据
    @RequestMapping(value = "/addOld1")
    public String insertScores1(String id, String score1) throws Exception {
        id_ = id;
        score1_ = score1;
        return "intellJPattern/abb";
    }

    @RequestMapping(value = "/addOld2")
    public String insertScores2(String score2) throws Exception {
        score2_ = score2;
        return "intellJPattern/pro";
    }

    @RequestMapping(value = "/addOld3")
    public String insertScores3(String score3) throws Exception {
        score3_ = score3;
        return "intellJPattern/res";
    }

    //转到res2.jsp页面
    @RequestMapping(value = "/getRes2")
    public String getRes2Page(ModelMap modelMap) throws Exception {
        //进服务层
        Staffpost staffpost = staffPostDAO.findByID(id_);
        System.out.println(staffpost.getId());
        map = new CalculateOldStaff().calcRes2(score1_, score2_, score3_, staffpost);
        System.out.println(map.get("部门名称") + " " + map.get("级别"));
        modelMap.addAttribute("resMap", map);
        return "intellJPattern/res";
    }

}

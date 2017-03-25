package org.caihaolun.service;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * Created by Administrator on 2017/3/22.
 * 构造决策树算法
 */

public class CalculateNewStaff {

    /**
     * 根据四个评价维度，得到DeptName、Level的值
     *
     * @param category 学历类别
     * @param qual     学历
     * @param major    专业
     * @param graduate 毕业院校
     * @return
     */
    public Map<String, String> calcRes(String category, String qual, String major, String graduate) {
        System.out.println(category+ " " +qual+ " " +major+ " " +graduate);
        String deptName;
        int level;
        switch (qual) {
            case "专科": {
                level = 1;
                break;
            }
            case "本科": {
                level = 2;
                break;
            }
            case "硕士": {
                level = 3;
                break;
            }
            case "博士": {
                level = 4;
                break;
            }
            default:
                level = 0;
                break;
        }

        switch (category) {
            case "理工类": {
                deptName = "研发部";
                break;
            }
            case "经济管理类": {
                int rand = new Random().nextInt(3);
                System.out.println(rand);
                switch (rand) {
                    case 0: {
                        deptName = "财务审计部";
                        break;
                    }
                    case 1: {
                        deptName = "市场营销部";
                        break;
                    }
                    case 2: {
                        deptName = "人力资源部";
                        break;
                    }
                    default:
                        deptName = "售后服务部";
                        break;
                }
                break;
            }
            default:
                deptName = "售后服务部";
                break;
        }

        if (major.equals("计算机科学")) {
            level++;
        }
        if(graduate.equals("清华大学")||graduate.equals("北京大学")){
            level++;
        }

        Map<String, String> res = new HashMap<>();
        res.put("部门名称", deptName);
        res.put("级别",String.valueOf(level));
        return res;
    }

}

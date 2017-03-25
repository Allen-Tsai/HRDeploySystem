package org.caihaolun.service;

import org.caihaolun.model.Staffpost;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/3/22.
 * 构造决策树算法
 */

@Service
public class CalculateOldStaff {

    public Map<String, String> calcRes2(String score1, String score2, String score3, Staffpost staffpost) {
        double weight1 = 0.4, weight2 = 0.3, weight3 = 0.3;//权重
        int level = 5;
        String deptName = "研发技术部";
        Map<String, String> res = new HashMap<>();
        res.put("部门名称", deptName);
        res.put("级别", String.valueOf(level));

        if (staffpost == null) {
            return res;
        } else {
            if (staffpost.getPost() != null && staffpost.getRank() != null) {
                deptName = staffpost.getPost();
                String str = staffpost.getRank();
                level = Integer.valueOf(str.substring(str.length()-1));
            }
            double totScore = weight1 * Integer.parseInt(score1) + weight2 * Integer.parseInt(score2) +
                    weight3 * Integer.parseInt(score3);
            if (totScore >= 1 && totScore <= 5) {
                level--;
            } else if (totScore > 5 && totScore <= 8) {
                level++;
            } else {
                level += 2;
            }
            res.clear();
            res.put("部门名称", deptName);
            res.put("级别", String.valueOf(level));
            return res;
        }

    }

}

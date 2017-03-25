package org.caihaolun.service;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

/**
 * Created by Administrator on 2017/3/26.
 * 假设题目是给年月日，判断是这一年的第几天
 */
public class Test {
    static boolean checkYear(int year) {
        return year % 4 == 0 && year % 100 != 0 || year % 400 == 0;
    }

    public static void main(String[] args) {
        int year, month, date;
        Scanner scanner = new Scanner(System.in);
        year = scanner.nextInt();
        month = scanner.nextInt();
        date = scanner.nextInt();
        if (checkYear(year)) {
            date++;
        }
        Map<Integer, Integer> monthDate = new HashMap<>();//月和日的键值对
        monthDate.put(0, 0);
        monthDate.put(1, 31);
        monthDate.put(2, 59);
        monthDate.put(3, 90);
        monthDate.put(4, 120);
        monthDate.put(5, 151);
        monthDate.put(6, 181);
        monthDate.put(7, 212);
        monthDate.put(8, 243);
        monthDate.put(9, 273);
        monthDate.put(10, 304);
        monthDate.put(11, 334);
        int result = monthDate.get(month-1) + date;

        System.out.println("最后的结果是：" + result);

    }
}

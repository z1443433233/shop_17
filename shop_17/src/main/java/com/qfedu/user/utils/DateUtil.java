package com.qfedu.user.utils;


import java.util.Calendar;
import java.util.Date;

/**
 * Created by CnZz on 2019/12/12 19:23
 */

public class DateUtil {

    //获取指定年的  今天
    public static Date addYear(int y) {
        //日历类  完成实例化
        Calendar calendar = Calendar.getInstance();
        //计算日期
        calendar.add(Calendar.YEAR, 3);
        return calendar.getTime();

    }
}

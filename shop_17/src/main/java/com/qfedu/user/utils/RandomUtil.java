package com.qfedu.user.utils;

import java.util.Random;

/**
 * Created by CnZz on 2019/12/11 17:07
 */

public class RandomUtil {
    public static int createNum(int len) {
        //随机生成几位验证码
        Random random = new Random();
        int Max = (int) (Math.pow(10, len) - Math.pow(10, len - 1));
        return random.nextInt(Max) + (int) Math.pow(10, len - 1);
    }
}

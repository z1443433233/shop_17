package com.qfedu.user.test;


import com.qfedu.user.utils.AliSmsUtil;
import com.qfedu.user.utils.RandomUtil;
import org.junit.Test;

/**
 * Created by CnZz on 2019/12/13 17:19
 */
public class Sms_Test {

    @Test
    public void sendCode() {
        AliSmsUtil.sendSmsCode(RandomUtil.createNum(4));
    }
}

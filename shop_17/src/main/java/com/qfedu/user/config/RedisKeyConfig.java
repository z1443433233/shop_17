package com.qfedu.user.config;

import org.springframework.context.annotation.Configuration;

/**
 * Created by CnZz on 2019/12/11 17:40
 */
@Configuration
public class RedisKeyConfig {
    //记录令牌
    public static final String TOKEN_KEY = "token:";//后面追加手机号
    public static final int TOKEN_TIME = 1800;//30分钟

    //记录短信验证码
    public static final String SMS_CODE = "sms:code";//后面加手机号
    public static final int SMSCODE_TIME = 600;//10分钟

}

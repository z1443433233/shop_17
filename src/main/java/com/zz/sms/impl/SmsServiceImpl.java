package com.zz.sms.impl;

import com.zz.common.vo.R;
import com.zz.config.RedisKeyConfig;
import com.zz.dto.PhoneCodeDto;
import com.zz.sms.SmsService;
import com.zz.utils.AliSmsUtil;
import com.zz.utils.JedisUtil;
import com.zz.utils.RandomUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Random;

/**
 * Created by CnZz on 2019/12/11 19:13
 */

@Service
public class SmsServiceImpl implements SmsService {


    @Autowired

    private JedisUtil jedisUtil;
    @Override
    public R sendSmsCode(String phone) {
        int code;
        //校验之前的验证码是否失效
        if(jedisUtil.checkKey(RedisKeyConfig.SMS_CODE + phone)) {
            //验证未失效
            //重新设置失效时间
            code = Integer.parseInt(jedisUtil.getStr(RedisKeyConfig.SMS_CODE + phone));
            jedisUtil.setExpire(RedisKeyConfig.SMS_CODE + phone, RedisKeyConfig.SMSCODE_TIME);
        } else {
            //生成验证码
            code = RandomUtil.createNum(4);
        }
        //发送短信
        AliSmsUtil.sendSmsCode(code);
        //把验证码记录到redis中
        jedisUtil.addStr(RedisKeyConfig.SMS_CODE + phone, code + "", RedisKeyConfig.SMSCODE_TIME);

        return R.ok();
    }

    @Override
    public R checkSmsCode(PhoneCodeDto codeDto) {
        //校验是否有效
        if(jedisUtil.checkKey(RedisKeyConfig.SMS_CODE + codeDto.getPhone())) {
            //校验是否正确
            if(codeDto.getCode() == Integer.parseInt(RedisKeyConfig.SMS_CODE + codeDto.getPhone())) {
                return R.ok();
            }

        }
        return R.fail("校验失败！");
    }
}

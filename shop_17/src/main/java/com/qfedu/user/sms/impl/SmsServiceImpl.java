package com.qfedu.user.sms.impl;

import com.qfedu.user.common.vo.R;
import com.qfedu.user.config.RedisKeyConfig;
import com.qfedu.user.dto.PhoneDto;
import com.qfedu.user.sms.SmsService;
import com.qfedu.user.utils.AliSmsUtil;
import com.qfedu.user.utils.JedisUtil;
import com.qfedu.user.utils.RandomUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by CnZz on 2019/12/13 18:55
 */

@Service
public class SmsServiceImpl implements SmsService {

    @Autowired
    private JedisUtil jedisUtil;
    @Override
    public R sendCode(String phone) {
        int code;
        //怕判断验证码是否失效
        if(jedisUtil.checkKey(RedisKeyConfig.SMS_CODE + phone)) {
            //验证未失效
            //重新设置时间
            code = Integer.parseInt(jedisUtil.getStr(RedisKeyConfig.SMS_CODE + phone));
            jedisUtil.setExpire(RedisKeyConfig.SMS_CODE + phone, RedisKeyConfig.SMSCODE_TIME);
        } else {
            //生成验证码
            code = RandomUtil.createNum(4);
        }
        //发短信
        AliSmsUtil.sendSmsCode(phone, code);
        //把验证码记录到Redis中
        jedisUtil.addStr(RedisKeyConfig.SMS_CODE + phone,code + "", RedisKeyConfig.SMSCODE_TIME);
        return R.ok();
    }

    @Override
    public R checkCode(PhoneDto phoneDto) {
        //校验是否失效
        if(jedisUtil.checkKey(RedisKeyConfig.SMS_CODE + phoneDto.getPhone())) {
            //校验是否正确
            if(phoneDto.getCode() == Integer.parseInt(jedisUtil.getStr(RedisKeyConfig.SMS_CODE + phoneDto.getPhone()))) {
                return R.ok();
            }
        }
        return R.fail("校验失败");
    }
}

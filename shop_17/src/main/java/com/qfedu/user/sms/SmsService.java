package com.qfedu.user.sms;

import com.qfedu.user.common.vo.R;
import com.qfedu.user.dto.PhoneDto;


/**
 * Created by CnZz on 2019/12/13 18:55
 */
public interface SmsService {

    //发送验证码
    R sendCode(String phone);
    //校验验证码
    R checkCode(PhoneDto phoneDto);
}

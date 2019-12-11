package com.zz.sms;

import com.zz.common.vo.R;
import com.zz.dto.PhoneCodeDto;

/**
 * Created by CnZz on 2019/12/11 19:12
 */
public interface SmsService {

    //发送验证码
    R sendSmsCode(String phone);
    //校验验证码
    R checkSmsCode(PhoneCodeDto codeDto);
}

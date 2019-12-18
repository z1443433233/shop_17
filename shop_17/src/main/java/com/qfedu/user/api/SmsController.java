package com.qfedu.user.api;

import com.qfedu.user.common.vo.R;
import com.qfedu.user.dto.PhoneDto;
import com.qfedu.user.sms.SmsService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by CnZz on 2019/12/13 19:44
 */
@Api(value = "短信验证码", tags = "短信验证码")
@RestController
public class SmsController {

    @Autowired
    private SmsService smsService;

    @ApiOperation(value = "发送验证码", notes = "发送验证码")
    @GetMapping("/api/shop/user/smssendcode.do")
    public R smsSendCode(@RequestBody String phone) {
        return smsService.sendCode(phone);
    }

    @ApiOperation(value = "校验验证码", notes = "校验验证码")
    @GetMapping("/api/shop/user/checkcode.do")
    public R smsSendCode(@RequestBody PhoneDto phoneDto) {
        return smsService.checkCode(phoneDto);
    }

}

package com.zz.api;


import com.zz.common.vo.R;
import com.zz.dto.PhoneCodeDto;
import com.zz.sms.SmsService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by CnZz on 2019/12/11 20:10
 */

@Api(value = "短信验证码", tags = "短信验证码")
@RestController
public class SmsController {

    @Autowired
    private SmsService smsService;

    //发送验证码
    @ApiOperation(value = "发送验证码", notes = "发送验证码")
    @GetMapping("/api/sms/sendcode.do")
    public R sendSmsCode(String phone) {
        return smsService.sendSmsCode(phone);
    }

    //校验验证码
    @ApiOperation(value = "校验验证码", notes = "校验验证码")
    @PostMapping("/api/sms/checksmscode.do")
    public R checkSmsCode(@RequestBody PhoneCodeDto codeDto) {
        return smsService.checkSmsCode(codeDto);
    }
}

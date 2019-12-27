package com.qfedu.user.user.controller;

import com.qfedu.user.common.vo.R;
import com.qfedu.user.user.entity.User;
import com.qfedu.user.user.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * Created by CnZz on 2019/12/13 17:01
 */
@Api(value = "登录、注册操作", tags = "登录、注册操作")
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @ApiOperation(value = "校验注册是否重复", notes = "校验注册是否重复")
    @GetMapping("/checkmsg.do")
    @ResponseBody
    public R checkMsg(String msg) {
        return userService.select(msg);
    }

    @ApiOperation(value = "实现会员的注册",notes = "实现会员的注册")
    @PostMapping("/register.do")
    @ResponseBody
    public R register(@RequestBody User user){
        return userService.register(user);
    }

    @ApiOperation(value = "实现会员的登录",notes = "实现会员的登录")
    @PostMapping("/login.do")
    public String login(String name, String password, Model model){
        R login = userService.login(name, password);
        if (login.getCode() == 200) {
            model.addAttribute("user",login);
            return "index";
        } else {
            model.addAttribute("msg","账号或密码错误");
            return "login";
        }
    }


}

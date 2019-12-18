package com.qfedu.user.user.service.impl;

import com.qfedu.user.common.result.ResultCode;
import com.qfedu.user.common.vo.R;
import com.qfedu.user.config.RedisKeyConfig;
import com.qfedu.user.user.dao.UserMapper;
import com.qfedu.user.user.entity.User;
import com.qfedu.user.user.service.UserService;
import com.qfedu.user.utils.JedisUtil;
import com.qfedu.user.utils.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by CnZz on 2019/12/13 16:13
 */
@Service
public class UserServiceImpl implements UserService {


    @Autowired
    private UserMapper userMapper;
    @Autowired
    private JedisUtil jedisUtil;

    @Override
    public R select(String msg) {
        User user = userMapper.selectByMsg(msg);
        //判断数据库是否存在
        if (user == null) {
            return R.ok();
        } else {
            return R.fail();
        }
    }

    @Override
    public R register(User user) {
        //校验是否存在
        if (select(user.getUsername()).getCode() == ResultCode.OK.getVal()) {
            int i = userMapper.insert(user);
            //注册成功
            if (i > 0) {
                return R.ok();
            } else {
                return R.fail();
            }
        } else {
            return R.fail("用户已经注册！");
        }
    }

    @Override
    public R login(String username, String password) {
        User user = userMapper.selectByMsg(username);
        //校验用户是否存在
        if (user != null) {
            if (user.getPassword().equals(password)) {
                //成功  生成令牌
                String token = JwtUtil.createJWT(user.getId() + "");
                //令牌  token 使用redis
                jedisUtil.addStr(RedisKeyConfig.TOKEN_KEY, token, RedisKeyConfig.TOKEN_TIME);
                return R.ok(token);
            }
        }
        return R.fail("用户名和密码错误！");
    }
}



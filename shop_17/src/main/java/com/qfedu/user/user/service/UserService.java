package com.qfedu.user.user.service;

import com.qfedu.user.common.vo.R;
import com.qfedu.user.user.entity.User;

/**
 * Created by CnZz on 2019/12/13 16:13
 */
public interface UserService {
    //注册时间要查询数据库看是不是重复
    R select(String msg);
    //注册
    R register(User user);
    //登录
    R login(String username, String password);
}

package com.qfedu.user.user.dao;


import com.qfedu.user.user.entity.User;
import org.springframework.stereotype.Repository;


@Repository
public interface UserMapper {
    //注册
    int insert(User user);

    User selectByMsg(String msg);


}
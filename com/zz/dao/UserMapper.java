package com.zz.dao;

import com.zz.pojo.User;
import com.zz.pojo.UserExample;
import java.util.List;

public interface UserMapper {
    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);
}
package com.zz.user.dao;


import com.zz.user.pojo.MemberCar;

import java.util.List;

public interface MemberCarMapper {
    int insert(MemberCar record);

    int insertSelective(MemberCar record);

}
package com.zz.user.dao;


import com.zz.user.pojo.MemberPoint;

import java.util.List;

public interface MemberPointMapper {
    int insert(MemberPoint record);

    int insertSelective(MemberPoint record);


}
package com.zz.user.dao;


import com.zz.user.pojo.MemberTag;

import java.util.List;

public interface MemberTagMapper {
    int insert(MemberTag record);

    int insertSelective(MemberTag record);


}
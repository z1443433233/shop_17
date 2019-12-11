package com.zz.user.dao;


import com.zz.user.pojo.MemberProfileLog;

import java.util.List;

public interface MemberProfileLogMapper {
    int insert(MemberProfileLog record);

    int insertSelective(MemberProfileLog record);


}
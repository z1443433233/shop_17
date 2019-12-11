package com.zz.user.dao;


import com.zz.user.pojo.MemberProfile;

import java.util.List;

public interface MemberProfileMapper {
    int insert(MemberProfile record);

    int insertSelective(MemberProfile record);


}
package com.zz.user.dao;


import com.zz.user.pojo.MemberFav;

import java.util.List;

public interface MemberFavMapper {
    int insert(MemberFav record);

    int insertSelective(MemberFav record);


}
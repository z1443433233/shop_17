package com.zz.dao;

import com.zz.pojo.Discuss;
import com.zz.pojo.DiscussExample;
import java.util.List;

public interface DiscussMapper {
    int insert(Discuss record);

    int insertSelective(Discuss record);

    List<Discuss> selectByExample(DiscussExample example);
}
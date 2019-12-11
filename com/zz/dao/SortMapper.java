package com.zz.dao;

import com.zz.pojo.Sort;
import com.zz.pojo.SortExample;
import java.util.List;

public interface SortMapper {
    int insert(Sort record);

    int insertSelective(Sort record);

    List<Sort> selectByExample(SortExample example);
}
package com.zz.dao;

import com.zz.pojo.Order;
import com.zz.pojo.OrderExample;
import java.util.List;

public interface OrderMapper {
    int insert(Order record);

    int insertSelective(Order record);

    List<Order> selectByExample(OrderExample example);
}
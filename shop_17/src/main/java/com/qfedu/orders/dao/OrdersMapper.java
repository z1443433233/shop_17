package com.qfedu.orders.dao;

import com.qfedu.orders.entity.Order;

public interface OrdersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    Order selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
}
package com.qfedu.orders.dao;

import com.qfedu.orders.entity.Order;
import com.qfedu.orders.vo.OrdersVo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    List<OrdersVo> selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
}
package com.qfedu.orders.service;

import com.qfedu.orders.entity.Order;
import com.qfedu.orders.vo.OrdersVo;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @author : Wzl
 * @version : 0.0.1
 * @date : 2019/12/21/20:23
 */
public interface OrderService {
    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    List<OrdersVo> selectByPrimaryKey(Integer id);
    List<OrdersVo> selectNoDiscuss(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
}

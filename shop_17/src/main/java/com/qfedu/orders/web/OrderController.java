package com.qfedu.orders.web;

import com.qfedu.orders.entity.Order;
import com.qfedu.orders.service.OrderService;
import com.qfedu.orders.vo.OrdersVo;
import com.qfedu.user.utils.JwtUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @author : Wzl
 * @version : 0.0.1
 * @date : 2019/12/21/20:32
 */
@RestController
@Api(value = "订单相关操作",tags = "订单相关操作")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @PostMapping("/showOrders")
    @ApiOperation(value = "实现查看会员的未评论订单查询",notes = "实现查看会员的未评论订单查询")
    public List<OrdersVo> showOrders(String token) {
        return orderService.selectByPrimaryKey(Integer.parseInt(JwtUtil.parseJWT(token)));
    }
    @PostMapping("/DiscussOrders")
    @ApiOperation(value = "实现查看会员的已评论订单查询",notes = "实现查看会员的已评论订单查询")
    public List<OrdersVo> showDiscussOrders(String token) {
        return orderService.selectNoDiscuss(Integer.parseInt(JwtUtil.parseJWT(token)));
    }
}

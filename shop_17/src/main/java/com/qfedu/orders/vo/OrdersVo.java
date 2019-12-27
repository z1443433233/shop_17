package com.qfedu.orders.vo;

import com.qfedu.adrress.entry.Address;
import com.qfedu.index.entity.Shop;
import com.qfedu.index.entity.Shop_info;
import com.qfedu.orders.entity.Order;
import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 *
 * @author : Wzl
 * @version : 0.0.1
 * @date : 2019/12/22/11:03
 */
@Data
public class OrdersVo {
    //商品照片url
    private String shopImg;
    //收件人姓名
    private String uName;
    //订单类对象
    private Order order;
    //收件人类对象
    private Address address;
}

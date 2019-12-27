package com.qfedu.adrress.entry;

import com.qfedu.orders.entity.Order;
import com.qfedu.orders.vo.OrdersVo;
import lombok.Data;

/**
 * Created with IntelliJ IDEA.
 *
 * @author : Wzl
 * @version : 0.0.1
 * @date : 2019/12/22/11:05
 */
@Data
public class Address {
    private Integer id;
    //用户id
    private Integer uid;
    //收件人名字
    private String gainname;
    //省份
    private String provice;
    //城市
    private String city;
    //电话
    private String tel;
    //订单的id
    private int oid;
    //详细地址
    private String desadd;
}

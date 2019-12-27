package com.qfedu.orders.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Date;

@Data
public class Order {
    private Integer id;

    /**用户id*/
    private Integer uid;
    /**商品id*/
    private Integer shoId;
    /**商品价格*/
    private Double oprice;
    /**购买时间*/
    private Date otime;
    /**订单状态*/
    private Byte ostatus;
    /**评论id*/
    private Integer discussId;
}

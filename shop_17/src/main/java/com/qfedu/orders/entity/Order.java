package com.qfedu.orders.entity;

import lombok.Data;
import java.util.Date;

@Data
public class Order {
    private Integer id;

    private Integer uid;

    private Integer shoId;

    private Double oprice;

    private Date otime;

    private Byte ostatus;

    private Integer discussId;
}
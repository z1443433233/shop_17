package com.qfedu.index.entity;

import lombok.Data;

@Data
public class Shop {
    // 商品ID
    private int id;

    // 商品名
    private String shopName;

    // 商品图片地址
    private String img;

    // 商品价格
    private double shopMoney;


}

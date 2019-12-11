package com.qfedu.index.entity;

import lombok.Data;

@Data
public class Shop_recommend {
    // 商品Id
    private int shop_id;

    // 商品名称
    private String shop_name;

    // 商品单价
    private double shop_money;

    // 商品图片
    private String shop_img;
}

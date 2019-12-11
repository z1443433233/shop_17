package com.qfedu.index.entity;

import lombok.Data;

@Data
public class Shop_info {
    // 商品ID
    private int shop_id;

    // 商品名称
    private String shop_name;

    // 商品标题
    private String shop_title;

    // 商品单价
    private double shop_money;

    // 商品详情
    private String shop_details;

    // 商品图片
    private String shop_img;

    // 商品种类ID
    private int shop_kind_id;

}

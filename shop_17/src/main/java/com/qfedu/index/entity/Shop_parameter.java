package com.qfedu.index.entity;

import lombok.Data;

/**
 * 商品参数实体类
 */

@Data
public class Shop_parameter {
    // 商品id
    private int shop_id;

    // 商品种类名
    private String shop_kind_name;

    // 商品原产地
    private String shop_origin;

    // 商品数量
    private int shop_number;
}

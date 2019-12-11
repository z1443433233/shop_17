package com.qfedu.index.dao;


import com.qfedu.index.entity.Shop_info;
import com.qfedu.index.entity.Shop_parameter;
import com.qfedu.index.entity.Shop_recommend;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IndexMapper {
    // 查询显示网站推荐商品
    List<Shop_recommend> recommendShop();

    // 根据商品类别ID查询所有该类别的商品
    List<Shop_info> findShopByKindId(int shop_kind_id);

    // 根据商品ID查询到该商品的信息
    Shop_info findShopById(int shop_id);

    // 根据商品ID查询到该商品的参数
    Shop_parameter findShopParameterById(int shop_id);
}

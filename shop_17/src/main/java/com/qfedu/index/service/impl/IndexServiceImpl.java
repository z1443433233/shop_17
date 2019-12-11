package com.qfedu.index.service.impl;

import com.qfedu.index.dao.IndexMapper;
import com.qfedu.index.entity.Shop_info;
import com.qfedu.index.entity.Shop_parameter;
import com.qfedu.index.entity.Shop_recommend;
import com.qfedu.index.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IndexServiceImpl implements IndexService {
    @Autowired
    private IndexMapper indexMapper;

    @Override
    public List<Shop_recommend> recommendShop() {
        return indexMapper.recommendShop();
    }

    @Override
    public List<Shop_info> findShopByKindId(int shop_kind_id) {
        return indexMapper.findShopByKindId(shop_kind_id);
    }

    @Override
    public Shop_info findShopById(int shop_id) {
        return indexMapper.findShopById(shop_id);
    }

    @Override
    public Shop_parameter findShopParameterById(int shop_id) {
        return indexMapper.findShopParameterById(shop_id);
    }
}

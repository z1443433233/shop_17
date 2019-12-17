package com.qfedu.index.service.impl;

import com.qfedu.index.dao.IndexMapper;
import com.qfedu.index.entity.Shop;
import com.qfedu.index.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IndexServiceImpl implements IndexService {
    @Autowired
    private IndexMapper indexMapper;

    @Override
    public Shop findShop() {
        return indexMapper.findShop();
    }
}

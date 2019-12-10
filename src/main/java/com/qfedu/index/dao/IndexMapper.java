package com.qfedu.index.dao;

import com.qfedu.index.entity.Shop;
import org.springframework.stereotype.Repository;

@Repository
public interface IndexMapper {
    Shop findShop();
}

package com.zz.dao;

import com.zz.pojo.Product;
import com.zz.pojo.ProductExample;
import java.util.List;

public interface ProductMapper {
    int insert(Product record);

    int insertSelective(Product record);

    List<Product> selectByExample(ProductExample example);
}
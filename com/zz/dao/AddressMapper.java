package com.zz.dao;

import com.zz.pojo.Address;
import com.zz.pojo.AddressExample;
import java.util.List;

public interface AddressMapper {
    int insert(Address record);

    int insertSelective(Address record);

    List<Address> selectByExample(AddressExample example);
}
package com.qfedu.discuss.dao;

import com.qfedu.discuss.entity.Discuss;
import com.qfedu.discuss.vo.OrderShopInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DiscussMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Discuss record);

    int insertSelective(Discuss record);

    List<Discuss> selectByPrimaryKey(Integer pid);

    int updateByPrimaryKeySelective(Discuss record);

    int updateByPrimaryKey(Discuss record);

    /**插入到评论表中并修改此订单的记录*/
    int addDiscuss(Discuss discuss);

    OrderShopInfo discussShopInfo(int id);

}
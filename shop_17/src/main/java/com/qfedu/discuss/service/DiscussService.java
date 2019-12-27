package com.qfedu.discuss.service;

import com.qfedu.discuss.entity.Discuss;
import com.qfedu.discuss.vo.OrderShopInfo;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @author : Wzl
 * @version : 0.0.1
 * @date : 2019/12/14/11:51
 */
public interface DiscussService {
     List<Discuss> selectByPrimaryKey(Integer pid);

     OrderShopInfo discussShopInfo(int id);

     int insert(Discuss record);
}

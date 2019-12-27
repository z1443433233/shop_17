package com.qfedu.discuss.service.impl;

import com.qfedu.discuss.dao.DiscussMapper;
import com.qfedu.discuss.entity.Discuss;
import com.qfedu.discuss.service.DiscussService;
import com.qfedu.discuss.vo.OrderShopInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @author : Wzl
 * @version : 0.0.1
 * @date : 2019/12/14/11:54
 */
@Service
public class DiscussServiceImpl implements DiscussService {
    @Autowired
    private DiscussMapper discussMapper;
    @Override
    public List<Discuss> selectByPrimaryKey(Integer pid) {
        List<Discuss> discusses = discussMapper.selectByPrimaryKey(pid);
        return discusses;
    }

    @Override
    public OrderShopInfo discussShopInfo(int id) {
        return discussMapper.discussShopInfo(id);
    }

    @Override
    public int insert(Discuss record) {
        discussMapper.insert(record);
        return discussMapper.updateStatus(record.getOid());
    }
}

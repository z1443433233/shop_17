package com.zz.user.service.impl;

import com.zz.common.result.ResultCode;
import com.zz.common.vo.PageBean;
import com.zz.common.vo.R;
import com.zz.config.RedisKeyConfig;
import com.zz.dto.MemberQueryDto;
import com.zz.user.dao.MemberMapper;
import com.zz.user.pojo.Member;
import com.zz.user.service.MemberService;
import com.zz.utils.JedisUtil;
import com.zz.utils.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by CnZz on 2019/12/10 17:29
 */

@Service
public class MemberServiceImpl implements MemberService {


    @Autowired
    private MemberMapper memberMapper;
    @Autowired
    private JedisUtil jedisUtil;

    @Override
    public R queryByMsg(String msg) {
        Member member = memberMapper.selectByMsg(msg);
        if(null == member) {
            //名称不存在，可用
            return R.ok();
        } else {
            return R.fail();
        }
    }

    @Override
    public R register(Member member) {
        //校验是否存在
        if(queryByMsg(member.getUsername()).getCode() == ResultCode.OK.getVal()) {
            //不存在，再新增
            int i = memberMapper.insert(member);

            if(i > 0) {
                //注册成功
                return R.ok();
            } else {
                return R.fail();
            }
        } else {
            return R.fail("用户名已注册");
        }
    }

    @Override
    public R login(String name, String password) {
        //查询用户信息
        Member member = memberMapper.selectByMsg(name);
        //校验用户是否存在
        if(null != member) {
            //校验密码是否正确
            if(member.getPassword().equals(password)) {
                //成功 生成令牌  存储当前会员Id信息
                String token = JwtUtil.createJWT(member.getId() + "");
                //令牌  token 有效期  使用Redis
                jedisUtil.addStr(RedisKeyConfig.TOKEN_KEY + name, token,  RedisKeyConfig.TOKEN_TIME);
                return R.ok(token);
            }
        }
        return R.fail("用户名或密码错误！");
    }

    @Override
    public R search(MemberQueryDto memberQueryDto) {
        //查询所有数据
        List<Member> members = memberMapper.selectPage(memberQueryDto.getPage(), memberQueryDto.getSize());
        //实例化分页
        PageBean<Member> pageBean = new PageBean<>();
        pageBean.setData(members);
        pageBean.setPage(memberQueryDto.getPage());
        pageBean.setSize(memberQueryDto.getSize());
        pageBean.setTotalPage(memberMapper.selectCount());
        //计算总页数
        pageBean.setTotalPage(pageBean.getTotal() % memberQueryDto.getSize() == 0 ?
                pageBean.getTotal()/pageBean.getSize() : pageBean.getTotal()/pageBean.getSize() + 1);
        return R.ok(pageBean);
    }
}

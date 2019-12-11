package com.zz.user.service;

import com.zz.common.vo.R;
import com.zz.dto.MemberQueryDto;
import com.zz.user.pojo.Member;

/**
 * Created by CnZz on 2019/12/10 17:29
 */
public interface MemberService {
    //查询
    R queryByMsg(String msg);
    //注册
    R register(Member member);
    //登录
    R login(String name, String password);
    //后台管理系统 搜索接口 分页
    R search(MemberQueryDto memberQueryDto);

}

package com.zz.filter;

import com.alibaba.fastjson.JSON;
import com.zz.common.vo.R;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by CnZz on 2019/12/11 18:53
 */
public class SmsFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //实现短信发送的频率校验
        HttpServletRequest  request = (HttpServletRequest) servletRequest;
        //校验当前是不是在发送短信
        if(request.getRequestURI().endsWith("/sms/sendcode.do")) {
            //频率校验
            boolean f = false;//不允许发短信
            //设置频率

            if(f) {
                filterChain.doFilter(servletRequest, servletResponse);
            } else {
                HttpServletResponse response = (HttpServletResponse) servletRequest;
                response.getWriter().println(JSON.toJSONString(R.fail("发送达到上限！")));
            }
        }

        filterChain.doFilter(servletRequest, servletResponse);
    }
}

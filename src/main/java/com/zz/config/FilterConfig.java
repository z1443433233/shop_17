package com.zz.config;

import com.zz.filter.SmsFilter;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Configuration;

/**
 * Created by CnZz on 2019/12/11 18:49
 */

@Configuration
public class FilterConfig {
    //springboot项目过滤器
    public FilterRegistrationBean createFR() {
        FilterRegistrationBean bean = new FilterRegistrationBean();
        bean.setFilter(new SmsFilter());
        bean.addUrlPatterns("/secndcode.do");
        return bean;
    }
}

package com.zz.config;

import com.zz.utils.JedisUtil;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Created by CnZz on 2019/12/11 17:55
 */

@Configuration
public class JedisConfig {
    @Bean
    public JedisUtil JU() {
        return new JedisUtil();
    }
}

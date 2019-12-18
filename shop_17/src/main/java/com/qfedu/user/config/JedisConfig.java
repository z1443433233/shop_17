package com.qfedu.user.config;

import com.qfedu.user.utils.JedisUtil;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Created by CnZz on 2019/12/13 16:47
 */

@Configuration
public class JedisConfig {

    @Bean
    public JedisUtil createJU() {
        return new JedisUtil();
    }
}

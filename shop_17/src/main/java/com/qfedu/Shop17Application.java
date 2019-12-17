package com.qfedu;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.qfedu.index.dao")
public class Shop17Application {

    public static void main(String[] args) {
        SpringApplication.run(Shop17Application.class, args);
    }

}

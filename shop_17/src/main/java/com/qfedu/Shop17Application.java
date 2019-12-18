package com.qfedu;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
@EnableSwagger2
@MapperScan("com.qfedu.**.dao")
public class Shop17Application {

    public static void main(String[] args) {
        SpringApplication.run(Shop17Application.class, args);
    }

}

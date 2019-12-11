package com.zz;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
@EnableSwagger2
@MapperScan("com.zz.user.dao")
public class CarSysApplication {

    public static void main(String[] args) {
        SpringApplication.run(CarSysApplication.class, args);
    }

}

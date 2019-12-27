package com.qfedu.discuss.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Timestamp;
import java.util.Date;

@Data
public class Discuss {
    private Integer id;

    //用户id
    private Integer uid;

    //商品id
    private Integer pid;

    //订单id
    private Integer oid;

    private String discuss;
    /**spring给出的  请求  string转成date时生效*/
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    /**jackson 给出的 date转换成String生效  响应*/
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date date;
    private String nickname;

}
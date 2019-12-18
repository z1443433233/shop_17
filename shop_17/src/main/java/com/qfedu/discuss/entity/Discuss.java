package com.qfedu.discuss.entity;

import lombok.Data;

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

    private String date;
    private String nickname;

}
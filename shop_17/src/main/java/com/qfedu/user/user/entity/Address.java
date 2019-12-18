package com.qfedu.user.user.entity;


import lombok.Data;

@Data
public class Address {
    private Integer id;
    //用户id
    private Integer uid;
    //收件人名字
    private String gainname;
    //省份
    private String provice;
    //城市
    private String city;
    //电话
    private String tel;
    //县
    private String county;
    //详细地址
    private String desadd;

}
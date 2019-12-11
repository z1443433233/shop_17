package com.zz.user.pojo;

import lombok.Data;

@Data
public class Member {
    private Long id;

    private String username;

    private String password;

    private Byte source;


}
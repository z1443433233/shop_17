package com.zz.user.pojo;


import lombok.Data;

@Data
public class MemberPoint {
    private Long id;

    private Long memberId;

    private Integer point;

    private Integer type;

    private String description;

    private String remark;

    private Integer createTime;


}
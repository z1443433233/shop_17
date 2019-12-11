package com.zz.user.pojo;


import lombok.Data;

@Data
public class MemberTag {
    private Long id;

    private Long memberId;

    private Integer tagId;

    private Integer createTime;


}
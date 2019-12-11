package com.zz.dto;

import lombok.Data;

/**
 * Created by CnZz on 2019/12/10 17:28
 */

@Data
public class MemberQueryDto {

    private int page;
    private int size;
    private String name;
    private int sex;
}

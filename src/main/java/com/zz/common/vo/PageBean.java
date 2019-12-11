package com.zz.common.vo;

import lombok.Data;

import java.util.List;

/**
 * Created by CnZz on 2019/12/10 17:22
 */

@Data
public class PageBean<T> {
    private int size;
    private int page;
    private int total;
    private long totalPage;
    private List<T> data;
}

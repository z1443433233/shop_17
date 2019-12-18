package com.qfedu.user.common.result;

/**
 * Created by CnZz on 2019/12/13 16:03
 */
//枚举
public enum  ResultCode {
    OK(200), ERROR(400), NOTFOUND(404);
    private int val;
    private ResultCode(int v) {
        val = v;
    }

    public int getVal() {
        return val;
    }
}

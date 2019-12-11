package com.zz.common.result;

/**
 * Created by CnZz on 2019/12/10 17:10
 */
public enum ResultCode {

    OK(200), ERROR(400), NOTFOUND(404);

    private ResultCode(int v) {

        val = v;
    }

    private int val;

    public int getVal() {
        return val;
    }
}

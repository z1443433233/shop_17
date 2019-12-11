package com.zz.common.vo;

import com.zz.common.result.ResultCode;
import lombok.Data;

/**
 * Created by CnZz on 2019/12/10 17:12
 */

@Data
public class R {
    //结果码
    private int code;
    //字符串信息
    private String msg;
    //携带的数据
    private Object data;


    public static R setR(int code, String msg, Object data) {
        R r = new R();
        r.setCode(code);
        r.setData(data);
        r.setData(data);
        return r;
    }

    public static R ok(Object data) {
        return setR(ResultCode.OK.getVal(), "ok", data);
    }

    public static R ok() {
        return setR(ResultCode.OK.getVal(), "OK", null);
    }

    public static R fail(String msg) {
        return setR(ResultCode.ERROR.getVal(), msg, null);
    }

    public static R fail() {
        return setR(ResultCode.ERROR.getVal(), "ERROR", null);
    }
}

package com.qfedu.user.common.vo;

import com.qfedu.user.common.result.ResultCode;
import lombok.Data;

/**
 * Created by CnZz on 2019/12/13 15:59
 */

@Data
public class R {

    private int code;
    private String msg;
    private Object data;

   public static R setR(int code, String msg, Object data) {
       R r = new R();
       r.setCode(code);
       r.setMsg(msg);
       r.setData(data);
       return r;
   }

   public static R ok(Object data) {
       return setR(ResultCode.OK.getVal(), "OK", data);
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

package com.qfedu.user.test;

import com.qfedu.user.utils.JwtUtil;
import org.junit.Test;

/**
 * Created by CnZz on 2019/12/13 17:19
 */
public class Jwt_Test {

    @Test
    public void t1() {
        String m = "admin";
        String jwt = JwtUtil.createJWT(1 + "", 30, m);
        System.out.println(jwt);
        System.out.println(JwtUtil.parseJWT(jwt));
    }

}

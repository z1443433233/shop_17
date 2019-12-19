package com.qfedu.orders.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created with IntelliJ IDEA.
 *
 * @author : Wzl
 * @version : 0.0.1
 * @date : 2019/12/19/17:57
 */
@Controller
public class OrderController {
    @GetMapping("/user/order/select.do")
    public String selectOrder(int id) {
        System.out.println("测试");
        return "";
    }
}

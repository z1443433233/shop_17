package com.qfedu.sys;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 *
 * @author : Wzl
 * @version : 0.0.1
 * @date : 2019/12/15/10:21
 */
@Controller
public class SysController {

    @RequestMapping("/loginPage")
    public String loginPage() {
        return "login";
    }
}

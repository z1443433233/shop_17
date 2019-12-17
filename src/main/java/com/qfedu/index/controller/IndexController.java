package com.qfedu.index.controller;

import com.qfedu.index.service.impl.IndexServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    @Autowired
    private IndexServiceImpl indexService;

    @RequestMapping("/index")
    public String index(Model model) {
        model.addAttribute("img", indexService.findShop());
        return "index";
    }
}

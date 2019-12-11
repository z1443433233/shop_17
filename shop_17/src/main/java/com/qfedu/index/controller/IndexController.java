package com.qfedu.index.controller;

import com.qfedu.index.entity.Shop_info;
import com.qfedu.index.entity.Shop_kind;
import com.qfedu.index.service.impl.IndexServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private IndexServiceImpl indexService;

    @RequestMapping("/index")
    public String index(Model model) {
        model.addAttribute("recommendShops", indexService.recommendShop());
        model.addAttribute("shops01", indexService.findShopByKindId(1));
        return "index";
    }

    @RequestMapping("/findShopByKindId")
    public String findShopByKindId(Shop_kind shopKind, Model model) {
        List<Shop_info> shops = indexService.findShopByKindId(shopKind.getShop_kind_id());

        model.addAttribute("shops", shops);
        return "product2";
    }

    @RequestMapping("/findShopById")
    public String findShopById(Shop_info shopInfo, Model model) {
        model.addAttribute("shop", indexService.findShopById(shopInfo.getShop_id()));

        return "proinfo";
    }
}

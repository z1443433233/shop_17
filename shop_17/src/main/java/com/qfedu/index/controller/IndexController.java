package com.qfedu.index.controller;

import com.qfedu.index.entity.Shop_info;
import com.qfedu.index.entity.Shop_kind;
import com.qfedu.index.service.impl.IndexServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
    public String findShopByKindId(int shopKind,Model model) {

        List<Shop_info> shops = indexService.findShopByKindId(shopKind);

        model.addAttribute("shops", shops);
        return "product2";
    }

    @RequestMapping("/findShopById")
    public String findShopById(int shopId, Model model) {

        model.addAttribute("shop", indexService.findShopById(shopId));
        model.addAttribute("parameter",indexService.findShopParameterById(shopId));

        return "proinfo";
    }

    @RequestMapping("/aa")
    public String aa() {
        return "aa";
    }

    @RequestMapping("/ab")
    @ResponseBody
    public Shop_kind ab(int id) {
        Shop_kind shop = new Shop_kind();
        shop.setShop_kind_id(id);
        shop.setShop_kind_name("张");
        return shop;
    }

    @RequestMapping("/product2")
    public String product2() {
        return "product2";
    }
}

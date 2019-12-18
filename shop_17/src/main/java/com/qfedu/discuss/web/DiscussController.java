package com.qfedu.discuss.web;

import com.qfedu.discuss.entity.Discuss;
import com.qfedu.discuss.service.DiscussService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @author : Wzl
 * @version : 0.0.1
 * @date : 2019/12/14/11:57
 */
@Api(value = "评价模块相关接口", tags = "评价模块相关接口")
@Controller
public class DiscussController {
    @Autowired
    private DiscussService discussService;

    @ApiOperation(value = "根据商品ID查询所有的评价",notes = "根据商品ID查询所有的评价")
    @GetMapping("/discuss/selectByPid.do")
    @ResponseBody
    public List<Discuss> selectByPrimaryKey( Integer shopId) {
        return discussService.selectByPrimaryKey(shopId);
    }

    @ApiOperation(value = "跳转评价界面", notes = "跳转评价界面")
    @GetMapping("/discussPage")
    public String discussPage(int id, Model model) {
        model.addAttribute("orderShopInfo",discussService.discussShopInfo(id));
        return "";
    }
}

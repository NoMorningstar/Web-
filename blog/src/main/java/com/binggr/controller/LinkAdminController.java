package com.binggr.controller;

import com.binggr.model.Link;
import com.binggr.service.LinkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author: bing
 * @date: 2020/9/20 17:28
 */
@Controller
@RequestMapping("/admin/link")
public class LinkAdminController {

    @Autowired
    LinkService linkService;

    /**
     * 查询友链列表
     * @param model
     * @return
     */
    @RequestMapping("/list")
    private String list(Model model){
      List<Link> links =  linkService.list();
      model.addAttribute("links",links);
      return "/admin/link-list";
    }

    /**
     * 保存一条友链
     * @param link
     * @return
     */
    @RequestMapping("/save")
    private String list(Link link){
        linkService.insert(link);
        return "redirect:/admin/link/list";
    }

    /**
     * 更新通过友链id
     * @param link
     * @return
     */
    @RequestMapping("/updateById")
    private String update(Link link){
        linkService.updateByPrimaryKeySelective(link);
        return "redirect:/admin/link/list";
    }

    /**
     * 删除通过友链id
     * @param id
     * @return
     */
    @RequestMapping("/deleteById")
    private String delete(int id){
        linkService.deleteByPrimaryKey(id);
        return "redirect:/admin/link/list";
    }
}

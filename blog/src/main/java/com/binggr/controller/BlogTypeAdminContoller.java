package com.binggr.controller;

import com.binggr.model.Blog;
import com.binggr.model.BlogType;
import com.binggr.service.BlogTypeService;
import com.binggr.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 博客类型相关
 * @author: bing
 * @date: 2020/9/15 20:43
 */
@Controller
@RequestMapping("/admin/blogType")
public class BlogTypeAdminContoller {

    @Autowired
    private BlogTypeService blogTypeService;

    /**
     * 博客类型列表
     * @param page 当前页
     * @param rows 当前页博客类型数量
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/list")
    public String list(@RequestParam(value="page",required = false) String page,
                                   @RequestParam(value="rows",required = false) String rows,
                                   Model model) throws Exception {
        Map<String,Object> map = new HashMap<String,Object>();
        try {
            PageBean pageBean = new PageBean(Integer.parseInt(page),Integer.parseInt(rows));
            map.put("start",pageBean.getStart());
            map.put("size",pageBean.getPageSize());
        }catch (Exception e){
//            e.printStackTrace();
        }
        //查询博客类型列表
        List<BlogType> blogTypeList = blogTypeService.list(map);
        //查询总共有多少条数据
        Long total = blogTypeService.getTotal(map);
        model.addAttribute("rows",blogTypeList);
        model.addAttribute("total",total);
        return "/admin/blogtype-list";
    }

    /**
     * 保存一条博客类型信息
     * @param blogType
     * @return
     */
    @RequestMapping("/save")
    public String save(BlogType blogType){
        blogTypeService.add(blogType);
        return "redirect:/admin/blogType/list";
    }

    /**
     * 通过博客类型id查询博客
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/selectById")
    public String selectById(int id,Model model){
        BlogType blogType = blogTypeService.selectByPrimaryKey(id);
        model.addAttribute("blogType",blogType);
        return "/admin/blogtype-edit";
    }

    /**
     * 通过id和博客类型信息动态更新博客类别
     * @param blogType
     * @return
     */
    @RequestMapping("/updateById")
    public String updateById(BlogType blogType){
        blogTypeService.updateByPrimaryKey(blogType);
        return "redirect:/admin/blogType/list";
    }

    /**
     * 通过id删除博客类别
     * @param id
     * @return
     */
    @RequestMapping("/deleteById")
    public String deleteById(int id){
        blogTypeService.deleteByPrimaryKey(id);
        return "redirect:/admin/blogType/list";
    }


}

package com.binggr.controller;

import com.binggr.lucene.BlogIndex;
import com.binggr.model.Blog;
import com.binggr.model.BlogType;
import com.binggr.service.BlogService;
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
 * 管理员对博客的一些操作
 * @author: bing
 * @date: 2020/9/16 22:22
 */
@Controller
@RequestMapping("/admin/blog")
public class BlogAdminController {
    @Autowired
    private BlogService blogService;

    /**
     * 使用lucene添加的博客索引
     */
    private BlogIndex blogIndex = new BlogIndex();

    @Autowired
    private BlogTypeService blogTypeService;

    /**
     * 保存一条博客
     */
    @RequestMapping("/save")
    public String save(Blog blog,Model model) throws Exception {
        blogService.add(blog);
        blogIndex.addIndex(blog);
        return "redirect:/admin/blog/toWrite";
    }

    /**
     * 转入写博客界面，并提供博客类型信息
     * @param model
     * @return
     */
    @RequestMapping("/toWrite")
    public String toWrite(Model model){
        List<BlogType> blogType = blogTypeService.countList();
        model.addAttribute("blogTypes",blogType);
        return "admin/blog-add";
    }

    /**
     * 查询出博客信息，转发页面至博客列表
     * @param page 当前页
     * @param rows 当前页博客数量
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
                e.printStackTrace();
            }

            //查询博客类型列表
            List<Blog> blogList = blogService.list(map);
            List<BlogType> blogType = blogTypeService.countList();
            //查询总共有多少条数据
            Long total = blogService.getTotal(map);
            model.addAttribute("rows",blogList);
            model.addAttribute("total",total);
            model.addAttribute("blogTypes",blogType);
            return "/admin/blog-list";
        }

    /**
     * 通过博客id查询信息
      * @param id 博客id
     * @return
     */
    @RequestMapping("/selectById")
    @ResponseBody
    public Map<String,Object> selectById(int id){
        Blog blog = blogService.selectByPrimaryKey(id);
        Map<String,Object> map = new HashMap<>();
        map.put("blog",blog);
        return map;
    }

    /**
     * 通过id+博客信息动态更新博客
     * @param blog
     * @return
     * @throws Exception
     */
    @RequestMapping("updateById")
    public String updateById(Blog blog) throws Exception {
        blogService.updateByPrimaryKey(blog);
        blogIndex.updateIndex(blog);
        return "redirect:/admin/blog/list";
    }

    /**
     * 通过博客id删除博客
     * @param id
     * @return
     * @throws Exception
     */
    @RequestMapping("deleteById")
    public String deleteById(int id) throws Exception {
        blogService.deleteByPrimaryKey(id);
        blogIndex.deleteIndex(Integer.toString(id));
        return "redirect:/admin/blog/list";
    }

    /**
     * 查询博客的总数、点击数、回复数、点赞数
     * @return
     */
    @RequestMapping("/sumList")
    @ResponseBody
    public Map<String,Object> sumList(){
        Map<String,Object> map = new HashMap<>();
        map = blogService.sumList();
        return map;
    }


}

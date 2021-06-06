package com.binggr.controller;

import com.binggr.model.Comment;
import com.binggr.service.CommentService;
import com.binggr.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 评论相关
 * @author: bing
 * @date: 2020/9/18 22:49
 */
@Controller
@RequestMapping("/admin/comment")
public class CommentAdminController {
    @Autowired
    CommentService commentService;

    /**
     * 评论信息列表
     * @param page 当前页
     * @param rows 当前页评论数量
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/list")
    private String list(@RequestParam(value="page",required = false) String page,
                        @RequestParam(value="rows",required = false) String rows,
                        Model model) throws Exception{
        Map<String,Object> map = new HashMap<String,Object>();
        try {
            PageBean pageBean = new PageBean(Integer.parseInt(page),Integer.parseInt(rows));
            map.put("start",pageBean.getStart());
            map.put("size",pageBean.getPageSize());
        }catch (Exception e){
//            e.printStackTrace();
        }
        //查询博客类型列表
        List<Comment> comments = commentService.list(map);
        //查询总共有多少条数据
        Long total = commentService.getTotal(map);
        model.addAttribute("rows",comments);
        model.addAttribute("total",total);
        return "/admin/comment-list";
    }

    /**
     * 通过id和评论信息动态更新评论 用于评论的审核
     * @param comment
     * @return
     */
    @RequestMapping("/updateById")
    public String UpdateById(Comment comment){
        commentService.updateByPrimaryKeySelective(comment);
        return "admin/comment-list";
    }


    @RequestMapping("/deleteById")
    public String DeleteById(int id){
        commentService.deleteByPrimaryKey(id);
        return "redirect:/admin/comment/list";
    }
}

package com.binggr.controller;

import com.binggr.lucene.BlogIndex;
import com.binggr.model.*;
import com.binggr.service.*;
import com.binggr.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 博客前台全部接口 返回数据全部使用json
 * @author: bing
 * @date: 2020/9/21 9:39
 */
@Controller
@RequestMapping("/home")
public class IndexController {

    @Autowired
    BloggerService bloggerService;

    @Autowired
    BlogService blogService;

    @Autowired
    BlogTypeService  blogTypeService;

    @Autowired
    CommentService commentService;

    @Autowired
    LinkService linkService;

    @Autowired
    TimeLineService timeLineService;

    BlogIndex blogIndex = new BlogIndex();

    /**
     * 查询博客列表 动态
     * @param page 当前页
     * @param rows 当前页博客数量
     * @param typeId 博客类型
     * @return
     * @throws Exception
     */
    @RequestMapping("/list")
    @ResponseBody
    public  Map<String,Object> list(@RequestParam(value="page",required = false) String page,
                                    @RequestParam(value="rows",required = false) String rows,
                                    @RequestParam(value="typeId",required = false)Integer typeId) throws Exception {
        Map<String,Object> map = new HashMap<String,Object>();
        Map<String,Object> result = new HashMap<String,Object>();
        try {
            PageBean pageBean = new PageBean(Integer.parseInt(page),Integer.parseInt(rows));
            map.put("start",pageBean.getStart());
            map.put("size",pageBean.getPageSize());
        }catch (Exception e){
           e.printStackTrace();
        }
        if(typeId!=null){
            map.put("typeid",typeId);
        }

        //查询博客类型列表
        List<Blog> blogList = blogService.list(map);
        //查询总共有多少条数据
        Long total = blogService.getTotal(map);
        result.put("rows",blogList);
        result.put("total",total);
        return result;
    }
    /**
     * 最新博客 限制8条
     * @return
     */
    @RequestMapping("/blogList-new")
    @ResponseBody
    public Map<String, Object> newList(){
        Map<String,Object> map = new HashMap<String,Object>();
        Map<String,Object> result = new HashMap<String,Object>();
        map.put("start",0);
        map.put("size",8);
        List<Blog> blogs = blogService.list(map);
        result.put("blogs",blogs);
       return result;
    }

    /**
     * 查询点击量最多的博客 8条
     */
    @RequestMapping("/blogList-hot")
    @ResponseBody
    public Map<String, Object> hotList(){
        Map<String,Object> map = new HashMap<String,Object>();
        Map<String,Object> result = new HashMap<String,Object>();
        map.put("start",0);
        map.put("size",8);
        List<Blog> blogs = blogService.hotList(map);
        result.put("blogs",blogs);
        return result;
    }


    /**
     *博客类型查询博客 限制8条
     * @param typeId
     * @return
     */
    @RequestMapping("/blogList-cate")
    @ResponseBody
    public Map<String,Object> cateList(int typeId){
        Map<String,Object> map = new HashMap<String,Object>();
        Map<String,Object> result = new HashMap<String,Object>();
        map.put("start",0);
        map.put("size",8);
        map.put("typeid",typeId);
        List<Blog> blogs = blogService.list(map);
        result.put("blogs",blogs);
       return result;
    }

    /**
     * 通过博客id查询一篇博客
     * @param id
     * @return
     */
    @RequestMapping("/selectBlogById")
    @ResponseBody
    public Map<String,Object> selectById(int id){
        Blog blog = blogService.selectByPrimaryKey(id);
        Map<String,Object> map = new HashMap<>();
        Map<String,Object> result = new HashMap<>();
        /**
         * 更新点击数
         */
        int clickhit =  blog.getClickhit();
        blog.setClickhit(clickhit+1);
        blogService.updateByPrimaryKey(blog);

        /**
         * 返回评论信息
         */
        map.put("blogId",blog.getId());
        map.put("state",1);
        List<Comment> comments = commentService.list(map);
        result.put("blog",blog);
        result.put("comments",comments);
        return result;
    }

    /**
     * 查询博客类型分类
     */
    @RequestMapping("/blogType-list")
    @ResponseBody
    public Map<String,Object> cate(){
        Map<String,Object> result = new HashMap<String,Object>();
        List<BlogType> blogTypes = blogTypeService.countList();
        result.put("blogTypes",blogTypes);
        return result;
    }

    /**
     * 提交评论
     */
    @RequestMapping("/commentSave")
    @ResponseBody
    public void commentSave(Comment comment, HttpServletRequest request){
        String userIp = request.getRemoteAddr();
        comment.setUserip(userIp);
        if(comment.getState() == null){
            comment.setState(0);
        }
        commentService.insert(comment);
        /**
         * 为博客评论数加一
         */
        Blog blog =blogService.selectByPrimaryKey(comment.getBlog().getId());
        blog.setReplyhit(blog.getReplyhit()+1);
        blogService.updateByPrimaryKey(blog);
    }

    /**
     * 查询评论信息 留言区
     */
    @RequestMapping("/selectCommentMain")
    @ResponseBody
    public List<Comment> selectCommentMain(){
        Map<String,Object> map = new HashMap<>();
        map.put("blogId",1);
        map.put("state",1);
        List<Comment> comments = commentService.list(map);
        return comments;
    }

    /**
     * 友链查询
     */
    @RequestMapping("linkList")
    @ResponseBody
    public List<Link> linkList(){
        List<Link> links = linkService.list();
        return links;
    }

    /**
     * 根据关键字查询博客信息
     */
    @RequestMapping("/keyWordSearch")
    @ResponseBody
    public List<Blog> keyWordSearch(@RequestParam(value="query",required = false) String query) throws Exception {
        List<Blog> blogList = blogIndex.searchBlog(query.trim());
        return blogList;
    }

    /**
     * 获取博主信息
     */
    @RequestMapping("/bloggerSelect")
    @ResponseBody
    public Blogger bloggerSelect(){
        Blogger blogger =bloggerService.selectByUserName("admin");
        return blogger;
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

    /**
     * 时间轴信息查询
     */
    @RequestMapping("/timeLineList")
    @ResponseBody
    public List<TimeLine> timeLineList(){
        List<TimeLine> list = timeLineService.list();
        return  list;
    }
}

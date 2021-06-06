package com.binggr.service;

import com.binggr.model.Blog;

import java.util.List;
import java.util.Map;

/**
 * @author: bing
 * @date: 2020/9/16 22:10
 */
public interface BlogService {
    /**
     * 无参查询所有博客列表
     * @return
     */
    List<Blog> countList();

    /**
     * 带参数查询博客列表
     * @return
     */
    List<Blog> list(Map<String,Object> map);

    /**
     * 查询热门博客
     * @return
     */
    List<Blog> hotList(Map<String,Object> map);
    /**
     * 带参数查询博客总数
     * @param map
     * @return
     */
    Long getTotal(Map<String,Object> map);

    /**
     * 增加一条博客
     * @param blog
     * @return
     */
    int add(Blog blog);

    /**
     * 根据博客主键查询一条博客信息
     * @param id
     * @return
     */
    Blog selectByPrimaryKey(Integer id);

    /**
     * 根据主键删除一条博客
     * @param id
     * @return
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * 修改一条博客，根据id
     * @param record
     * @return
     */
    int updateByPrimaryKey(Blog record);

    /**
     *统计数量
     * @return
     */
    Map<String,Object> sumList();
}

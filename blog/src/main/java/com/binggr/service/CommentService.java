package com.binggr.service;

import com.binggr.model.Comment;

import java.util.List;
import java.util.Map;

/**
 * @author: bing
 * @date: 2020/9/18 22:15
 */
public interface CommentService {

    /**
     * 删除一条评论通过id
     * @param id
     * @return
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * 增加一条评论
     * @param record
     * @return
     */
    int insert(Comment record);

    /**
     * 评论查询
     * @return
     */
    List<Comment> list(Map<String,Object> map);

    /**
     * 更新一条评论
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Comment record);

    /**
     * 评论数量
     */
    Long getTotal(Map<String,Object> map);
}

package com.binggr.service;

import com.binggr.model.Link;

import java.util.List;

/**
 * @author: bing
 * @date: 2020/9/20 17:17
 */
public interface LinkService {
    /**
     * 删除一条友链通过友链id
     * @param id
     * @return
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * 插入一条友链
     * @param record
     * @return
     */
    int insert(Link record);

    /**
     * 查询友链列表
     * @return
     */
    List<Link> list();

    /**
     * 更新友链通过友链id
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Link record);

}

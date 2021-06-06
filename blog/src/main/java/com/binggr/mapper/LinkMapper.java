package com.binggr.mapper;

import com.binggr.model.Link;

import java.util.List;

public interface LinkMapper {
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
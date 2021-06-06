package com.binggr.mapper;

import com.binggr.model.TimeLine;

import java.util.List;

public interface TimeLineMapper {
    /**
     * 删除友链通过id
     * @param id
     * @return
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * 增加一条友链
     * @param record
     * @return
     */
    int insert(TimeLine record);

    /**
     * 增加一条友链 动态
     * @param record
     * @return
     */
    int insertSelective(TimeLine record);

    /**
     * 查询所有友链
     * @return
     */
    List<TimeLine> list();

    /**
     * 更新友链 动态
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(TimeLine record);

    /**
     * 更新友链
     * @param record
     * @return
     */
    int updateByPrimaryKey(TimeLine record);
}
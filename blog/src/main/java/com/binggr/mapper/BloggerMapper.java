package com.binggr.mapper;

import com.binggr.model.Blogger;
import org.apache.ibatis.annotations.Param;

public interface BloggerMapper {

    /**
     * 通过用户名查询博主
     * @param userName
     * @return
     */
    Blogger selectByUserName(@Param("userName")String userName);

    /**
     * 通过博主id更新博主信息
     * @param blogger
     * @return
     */
    int updateByUserId(Blogger blogger);
}
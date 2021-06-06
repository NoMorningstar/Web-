package com.binggr.service;

import com.binggr.model.Blogger;
import org.apache.ibatis.annotations.Param;

/**
 * @author: bing
 * @date: 2020/9/15 17:39
 */
public interface BloggerService {

    /**
     * 通过用户名查询博主
     * @param userName
     * @return
     */
    Blogger selectByUserName(String userName);

    /**
     * 通过博主id更新博主信息
     * @param blogger
     * @return
     */
    int updateByUserId(Blogger blogger);
}

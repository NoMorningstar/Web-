package com.binggr.service.impl;

import com.binggr.mapper.BloggerMapper;
import com.binggr.model.Blogger;
import com.binggr.service.BloggerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author: bing
 * @date: 2020/9/15 17:41
 */

@Service
public class BloggerServiceImpl implements BloggerService {

    @Autowired
    private BloggerMapper bloggerMapper;

    @Override
    public Blogger selectByUserName(String userName) {
        return bloggerMapper.selectByUserName(userName);
    }

    @Override
    public int updateByUserId(Blogger blogger) {
        return bloggerMapper.updateByUserId(blogger);
    }
}

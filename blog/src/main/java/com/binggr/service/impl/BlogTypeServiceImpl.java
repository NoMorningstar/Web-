package com.binggr.service.impl;


import com.binggr.mapper.BlogTypeMapper;
import com.binggr.model.BlogType;
import com.binggr.service.BlogTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author: bing
 * @date: 2020/9/15 20:32
 */
@Service
public class BlogTypeServiceImpl implements BlogTypeService {

    @Autowired
    private BlogTypeMapper blogTypeMapper;

    @Override
    public List<BlogType> countList() {
        return blogTypeMapper.countList();
    }

    @Override
    public List<BlogType> list(Map<String, Object> map) {
        return blogTypeMapper.list(map);
    }

    @Override
    public Long getTotal(Map<String, Object> map) {
        return blogTypeMapper.getTotal(map);
    }

    @Override
    public BlogType selectByPrimaryKey(Integer id) {
        return blogTypeMapper.selectByPrimaryKey(id);
    }

    @Override
    public int add(BlogType blogType) {
        return blogTypeMapper.add(blogType);
    }

    @Override
    public int updateByPrimaryKey(BlogType record) {
        return blogTypeMapper.updateByPrimaryKey(record);
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return blogTypeMapper.deleteByPrimaryKey(id);
    }
}

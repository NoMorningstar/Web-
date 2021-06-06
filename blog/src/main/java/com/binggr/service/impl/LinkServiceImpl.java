package com.binggr.service.impl;

import com.binggr.mapper.LinkMapper;
import com.binggr.model.Link;
import com.binggr.service.LinkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: bing
 * @date: 2020/9/20 17:18
 */
@Service
public class LinkServiceImpl implements LinkService {

    @Autowired
    LinkMapper linkMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return linkMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(Link record) {
        return linkMapper.insert(record);
    }

    @Override
    public List<Link> list() {
        return linkMapper.list();
    }

    @Override
    public int updateByPrimaryKeySelective(Link record) {
        return linkMapper.updateByPrimaryKeySelective(record);
    }
}

package com.binggr.service.impl;

import com.binggr.mapper.TimeLineMapper;
import com.binggr.model.TimeLine;
import com.binggr.service.TimeLineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: bing
 * @date: 2020/9/27 11:18
 */
@Service
public class TimeLineServiceImpl implements TimeLineService {

    @Autowired
    TimeLineMapper timeLineMapper;

    @Override
    public List<TimeLine> list() {
        return timeLineMapper.list();
    }
}

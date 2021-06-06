package com.binggr.service;

import com.binggr.model.TimeLine;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: bing
 * @date: 2020/9/27 11:16
 */
public interface TimeLineService {
    /**
     * 查询所有友链
     * @return
     */
    List<TimeLine> list();
}

package com.binggr.model;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 时间轴实体类 序列化 id 发布时间 详情
 */

public class TimeLine implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private Date issuetime;

    private String detail;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIssuetime() {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return df.format(issuetime);
    }

    public void setIssuetime(Date issuetime) {
        this.issuetime = issuetime;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail == null ? null : detail.trim();
    }
}
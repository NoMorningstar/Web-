package com.binggr.model;

import java.io.Serializable;

/**
 * 友链实体类 序列化 id 友链名字 友链链接 友链图片地址
 */

public class Link implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private String linkname;

    private String linkurl;

    private String linkimage;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLinkname() {
        return linkname;
    }

    public void setLinkname(String linkname) {
        this.linkname = linkname == null ? null : linkname.trim();
    }

    public String getLinkurl() {
        return linkurl;
    }

    public void setLinkurl(String linkurl) {
        this.linkurl = linkurl == null ? null : linkurl.trim();
    }

    public String getLinkimage() {
        return linkimage;
    }

    public void setLinkimage(String linkimage) {
        this.linkimage = linkimage == null ? null : linkimage.trim();
    }
}
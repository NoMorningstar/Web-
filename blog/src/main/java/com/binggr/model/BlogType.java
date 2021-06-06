package com.binggr.model;

import java.io.Serializable;

/**
 * 博客类型实体类 序列化 id 类型名 排序
 */
public class BlogType implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private String typename;

    private Integer orderno;

    //博客类型总数
    private Integer blogCount;

    public Integer getBlogCount() {
        return blogCount;
    }

    public void setBlogCount(Integer blogCount) {
        this.blogCount = blogCount;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename == null ? null : typename.trim();
    }

    public Integer getOrderno() {
        return orderno;
    }

    public void setOrderno(Integer orderno) {
        this.orderno = orderno;
    }

    @Override
    public String toString() {
        return "BlogType{" +
                "id=" + id +
                ", typename='" + typename + '\'' +
                ", orderno=" + orderno +
                '}';
    }
}
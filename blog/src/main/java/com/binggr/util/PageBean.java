package com.binggr.util;

/**
 * 用于分页的小工具
 * @author: bing
 * @date: 2020/9/15 20:46
 */
public class PageBean {
    /**
     * 当前页数
     */
    private int page;
    /**
     * 当前页面数据数量
     */
    private int pageSize;
    /**
     * 从第几条数据开始查询
     */
    private int start;

    public PageBean(int page, int pageSize) {
        super();
        this.page = page;
        this.pageSize = pageSize;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getStart() {
        return (this.page - 1) * this.pageSize;
    }


}

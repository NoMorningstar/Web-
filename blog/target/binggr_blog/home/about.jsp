<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!-- 有些资源用不上，请自行斟酌 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/lib/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/lib/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/site.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/site-animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/site-media.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/animate.css/3.5.2/animate.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/blog-pace.css" />
    <script src="${pageContext.request.contextPath}/static/lib/jquery-3.4.1.js"></script>
    <script data-pace-options='{ "ajax": false ,"eventLag": false}' src="${pageContext.request.contextPath}/res/js/pace.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/lib/layui/layui.js"></script>
    <!-- 本页特有css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/about.css">
</head>

<body>
    <!-- 头部 -->
    <nav class="blog-nav layui-header">
        <div class="layui-container">
            <!-- 登陆后 -->
            <!-- <span class="blog-user">
                <a href="">
                    <img src="#" alt="" title="" />
                </a>
            </span> -->
            <!-- 未登陆 -->
            <a href="javacript:;" class="blog-user">
                <i class="fa fa-qq"></i>
            </a>
            <a class="blog-logo" href="home.jsp">博客网<b style="font-size: 16px;">-机会留给有准备的人更多！</b></a>
            <ul class="blog-nav-list" lay-filter="nav">
                <li class="layui-nav-item">
                    <a href="${pageContext.request.contextPath}/home/index.jsp"><i class="fa fa-home fa-fw"></i>&nbsp;首页</a>
                </li>
                <li class="layui-nav-item">
                    <a href="${pageContext.request.contextPath}/home/articlelist.jsp"><i class="fa fa-book fa-fw"></i>&nbsp;博客</a>
                </li>
                <li class="layui-nav-item">
                    <a href="${pageContext.request.contextPath}/home/timeline.jsp"><i class="fa fa-snowflake-o fa-fw"></i>&nbsp;日记</a>
                </li>
                <li class="layui-nav-item">
                    <a href="${pageContext.request.contextPath}/home/comment.jsp"><i class="fa fa-comments fa-fw"></i> 留言</a>
                </li>
                <li class="layui-nav-item layui-this">
                    <a href="${pageContext.request.contextPath}/home/about.jsp"><i class="fa fa-info fa-fw"></i>&nbsp;关于</a>
                </li>
            </ul>
            <a class="blog-navicon" href="javascript:;">
                <i class="fa fa-navicon"></i>
            </a>
        </div>
    </nav>
    <!-- 主体 -->
    <div class="blog-body">
        <!-- 页面主体内容 -->
        <div class="layui-container">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-xs12">
                    <blockquote class="layui-elem-quote sitemap shadow" style="margin-bottom:0px;">
                        <i class="layui-icon">&#xe715;</i>
                        <span class="layui-breadcrumb" lay-separator=">">
                            <a href="/">首页</a>
                            <a><cite>关于本站</cite></a>
                        </span>
                    </blockquote>
                </div>
                <div class="layui-col-xs12">
                    <div class="blog-about-container">
                        <span id="author" class="anchor"></span>
                        <div class="section" style="padding-left: 50px;padding-right: 50px;padding-top: 50px">
                            <div class="section-title">
                                <span class="layui-badge">关于作者</span>
                            </div>
                            <div class="section-content">
                                <div class="text-content" style="margin-top: 20px">
                                    <p>初学Web应用的一名菜鸟</p>
<%--                                    <p style="text-align:right;padding-right:5px;font-size:24px;font-family:Cambria">——--%>
<%--                                        By Binggr</p>--%>
                                </div>
                            </div>
                        </div>
                        <span id="site" class="anchor"></span>
                        <div class="section" style="padding-left: 50px;padding-right: 50px">
                            <div class="section-title">
                                <span class="layui-badge">关于网站</span>
                            </div>
                            <div class="section-content">
                                <div class="text-content" style="margin-top: 20px">
                                    <p>本网站纯用于老师练手使用</p>
                                    <br />
                                    <p>网站前端模板来自于部落格，使用jsp，ajax，js，json进行交互</p>
                                    <br />
                                    <p>网站后端由ssm+lucene+shiro+log4j+Tomcat8.5+MySQL8.11完成</p>
                                </div>
                            </div>
                        </div>
                        <span id="friend" class="anchor"></span>
                        <div class="section" style="padding-left: 50px;padding-right: 300px">
                            <div class="section-title">
                                <span class="layui-badge">友情链接</span>
                            </div>
                            <div class="section-content" style="padding-top: 20px">
<%--                                <div class="author-bg">--%>
<%--                                    <div class="author-intro">--%>
<%--                                        <img src="${pageContext.request.contextPath}/res/images/global/handshake.png" alt="友链互换" />--%>
                                        <h2>&nbsp; &nbsp; &nbsp; 友链互换</h2>
                                        <h4>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                                            <i class="fa fa-close"></i>经常宕机&nbsp;
                                            <i class="fa fa-close"></i>不合法规&nbsp;
                                            <span class="layui-hide-xs"><i class="fa fa-close"></i>插边球站&nbsp;</span>
                                            <span class="layui-hide-xs"><i class="fa fa-close"></i>红标报毒&nbsp;</span>
                                            <i class="fa fa-check"></i>原创优先&nbsp;
                                            <i class="fa fa-check"></i>技术优先
                                        </h4>
<%--                                    </div>--%>
<%--                                </div>--%>
                                <div class="layui-row layui-col-space15" style="margin-top:5px;margin-bottom: 30px">
                                    <div class="layui-col-lg3 layui-col-md4 layui-col-sm6" style="padding-left: 40px">
                                        <a href="https://www.github.com" target="_blank" class="friendlink-item">
                                            <img src="https://www.github.com" alt="github" />
                                            <h2>github</h2>
                                            <p>github.com</p>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 底部 -->
    <footer class="blog-footer" style="margin-top: 80px">
        <p><a href="javascript:layer.msg('正在制作')">文章归档</a><a href="javascript:layer.msg('正在制作')">网站地图</a><a href=""
                target="_blank">联系老师</a><a href="javascript:layer.msg('正在制作')">小额赞赏</a></p>
        <p><span>Powered by .NET Core 3.0</span><span>&copy;2021</span><a
                href="https://www.baidu.com">baidu.com</a><span>版权所有</span><a href="http://www.baidu.com/"
                target="_blank">七星剑</a></p>
    </footer>
    <!-- 移动端侧边导航 -->
    <ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
        <li class="layui-nav-item ">
            <a href="${pageContext.request.contextPath}/home/index.jsp"><i class="fa fa-home fa-fw"></i>&nbsp;首页</a>
        </li>
        <li class="layui-nav-item">
            <a href="${pageContext.request.contextPath}/home/articlelist.jsp"><i class="fa fa-book fa-fw"></i>&nbsp;博客</a>
        </li>
        <li class="layui-nav-item">
            <a href="${pageContext.request.contextPath}/home/timeline.jsp"><i class="fa fa-snowflake-o fa-fw"></i>&nbsp;时间轴</a>
        </li>
        <li class="layui-nav-item">
            <a href="${pageContext.request.contextPath}/home/comment.jsp"><i class="fa fa-comments fa-fw"></i> 留言</a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="${pageContext.request.contextPath}/home/about.jsp"><i class="fa fa-info fa-fw"></i>&nbsp;关于网站</a>
        </li>
    </ul>
    <!-- 侧边导航遮罩 -->
    <div class="blog-mask animated layui-hide"></div>

    <script src="https://cdn.bootcss.com/scrollReveal.js/3.3.6/scrollreveal.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/site.js"></script>
    <!-- 本页特有js -->
    <script src="${pageContext.request.contextPath}/res/js/jquery.nav.js"></script>
    <script>
        layui.use(['jquery'], function () {
            var $ = layui.$;

            $('.blog-nav-follow').onePageNav({
                scrollThreshold: 0.1
            });

            $(window).scroll(function () {
                if ($(window).scrollTop() > 65) {
                    $('.blog-nav').addClass('layui-hide');
                } else {
                    $('.blog-nav').removeClass('layui-hide');
                }
                if ($(window).scrollTop() > 65) {
                    $('.blog-nav-follow').addClass('fixed');
                } else {
                    $('.blog-nav-follow').removeClass('fixed');
                }
            });
        });
    </script>
</body>

</html>
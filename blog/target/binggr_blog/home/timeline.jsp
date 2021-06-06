<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="../res/lib/layui/css/layui.css">
    <link rel="stylesheet" href="../res/lib/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="../res/css/site.css">
    <link rel="stylesheet" href="../res/css/site-animate.css">
    <link rel="stylesheet" href="../res/css/site-media.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/animate.css/3.5.2/animate.min.css" />
    <link rel="stylesheet" href="../res/css/blog-pace.css" />
    <script src="${pageContext.request.contextPath}/static/lib/jquery-3.4.1.js"></script>
    <script data-pace-options='{ "ajax": false ,"eventLag": false}' src="../res/js/pace.min.js"></script>
    <script src="../res/lib/layui/layui.js"></script>
    <!-- 本页特有css -->
    <link href="${pageContext.request.contextPath}/res/css/timeline1.css" rel="stylesheet" />
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
                <li class="layui-nav-item layui-this">
                    <a href="${pageContext.request.contextPath}/home/timeline.jsp"><i class="fa fa-snowflake-o fa-fw"></i>&nbsp;日记</a>
                </li>
                <li class="layui-nav-item">
                    <a href="${pageContext.request.contextPath}/home/comment.jsp"><i class="fa fa-comments fa-fw"></i> 留言</a>
                </li>
                <li class="layui-nav-item">
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
            <blockquote class="layui-elem-quote sitemap shadow">
                <i class="layui-icon">&#xe715;</i>
                <span class="layui-breadcrumb" lay-separator=">">
                    <a href="home.jsp">首页</a>
                    <a><cite>轻言细语</cite></a>
                </span>
            </blockquote>
            <div class="blog-nav-two shadow">
                <div class="layui-breadcrumb" lay-separator="|">
                    <a href="timeline.jsp" class="selected"><span>轻言细语</span></a>
                    <a href="#"><span>文章归档</span></a>
<%--                    <a href="record.jsp"><span>文章归档</span></a>--%>
                </div>
            </div>
            <div class="timeline-box shadow">
                <div class="timeline-main">
                    <h1><i class="fa fa-clock-o"></i>时光轴</h1>
                    <div class="timeline-line"></div>
                    <div class="timeline-year">
                        <h2><a class="yearToggle" style="color: #5fb88e" href="javascript:;">2021年</a><i style="color: #5fb88e" class="fa fa-caret-down fa-fw"></i></h2>
                        <div class="timeline-month">
                            <ul id="timeline-add">

                            </ul>
                        </div>
                    </div>
                    <h1 style="padding-top:4px;padding-bottom:2px;margin-top:40px;"><i class="fa fa-hourglass-end"></i>我们之间的故事未完待续，</p>下学期接着上</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- 底部 -->
    <footer class="blog-footer">
        <p><a href="javascript:layer.msg('正在制作')">文章归档</a><a href="javascript:layer.msg('正在制作')">网站地图</a><a href=""
                target="_blank">联系老师</a><a href="javascript:layer.msg('正在制作')">小额赞赏</a></p>
        <p><span>Powered by .NET Core 3.0</span><span>&copy;2021</span><a
                href="https://www.baidu.com">baidu.com</a><span>版权所有</span><a href="http://www.baidu.com/"
                target="_blank">乾坤大挪移</a></p>
    </footer>
    <!-- 移动端侧边导航 -->
    <ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
        <li class="layui-nav-item">
            <a href="home.jsp"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
        </li>
        <li class="layui-nav-item">
            <a href="articlelist.jsp"><i class="fa fa-book fa-fw"></i>&nbsp;学海无涯</a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="timeline.jsp"><i class="fa fa-snowflake-o fa-fw"></i>&nbsp;点点滴滴</a>
        </li>
        <li class="layui-nav-item">
            <a href="production.jsp"><i class="fa fa-th-large fa-fw"></i>&nbsp;个人作品</a>
        </li>
        <li class="layui-nav-item">
            <a href="comment.jsp"><i class="fa fa-comments fa-fw"></i>&nbsp;留言交流</a>
        </li>
        <li class="layui-nav-item">
            <a href="about.jsp"><i class="fa fa-info fa-fw"></i>&nbsp;关于本站</a>
        </li>
    </ul>
    <!-- 侧边导航遮罩 -->
    <div class="blog-mask animated layui-hide"></div>

    <script src="https://cdn.bootcss.com/scrollReveal.js/3.3.6/scrollreveal.js"></script>
    <script src="../res/js/site.js"></script>
    <!-- 本页特有js -->
    <script>
        layui.use('jquery', function () {
            var $ = layui.jquery;
            $(function () {
                var $timeline_block = $('.cd-timeline-block');
                $timeline_block.each(function () {
                    if ($(this).offset().top > $(window).scrollTop() + $(window).height() *
                        0.75) {
                        $(this).find('.cd-timeline-img, .cd-timeline-content').addClass(
                            'is-hidden');
                    }
                });
                //时光轴根据滚动条动画展示
                $(window).on('scroll', function () {
                    $timeline_block.each(function () {
                        if ($(this).offset().top <= $(window).scrollTop() + $(window)
                            .height() * 0.75 && $(this).find('.cd-timeline-img')
                            .hasClass('is-hidden')) {
                            $(this).find('.cd-timeline-img, .cd-timeline-content')
                                .removeClass('is-hidden').addClass('bounce-in');
                        }
                    });
                });
            });
        });

        $(function(){
            timeline_build()

            function timeline_build() {
                var temp =''
                $.getJSON("${pageContext.request.contextPath}/home/timeLineList", function(res){
                    console.log(res)
                    var timeline = res
                    $.each(timeline,function (index,obj) {
                        temp+='<li class=" ">\n' +
                            '     <div class="h4  animated fadeInLeft">\n' +
                            '           <p class="date">'+obj.issuetime+'</p>\n' +
                            '     </div>\n' +
                            '      <p class="dot-circle animated "><i class="fa fa-dot-circle-o"></i></p>\n' +
                            '      <div class="content animated fadeInRight">'+obj.detail+'</div>\n' +
                            '       <div class="clear"></div>\n' +
                            '  </li>'
                    })
                    $("#timeline-add").append(temp)
                })
            }

        })
    </script>
</body>

</html>
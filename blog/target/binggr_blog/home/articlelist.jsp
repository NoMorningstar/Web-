<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
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
    <style>
        @media (max-width: 768px) {
            .layui-hide-xs {
                display: none !important;
            }
        }
    </style>
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
                <li class="layui-nav-item ">
                    <a href="${pageContext.request.contextPath}/home/index.jsp"><i class="fa fa-home fa-fw"></i>&nbsp;首页</a>
                </li>
                <li class="layui-nav-item layui-this">
                    <a href="${pageContext.request.contextPath}/home/articlelist.jsp"><i class="fa fa-book fa-fw"></i>&nbsp;博客</a>
                </li>
                <li class="layui-nav-item">
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
                <i class="layui-icon"></i>
                <span class="layui-breadcrumb" lay-separator=">" style="visibility: visible;">
                    <a href="/">首页</a><span lay-separator="">&gt;</span>
                    <a><cite>学海无涯</cite></a>
                </span>
            </blockquote>
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md8">
                    <div class="left-box" id="left-blog">
                        <p class="left-box-title shadow"><i class="fa fa-cog fa-spin fa-fw" aria-hidden="true"></i>全部文章
                        </p>
                    </div>
                    <div class="blog-pagebox" id="page-number-parent">
                        <div class="laypage-main" id="page-number">

                        </div>
                    </div>

                </div>
                <div class="layui-col-md4">
                    <div class="layui-row layui-col-space10">
                        <div class="layui-col-sm6 layui-col-md12 ">
                            <div class="blog-search">
                                <form class="layui-form" action="">
                                    <div class="layui-form-item">
                                        <div class="search-keywords  shadow">
                                            <input type="search" id="blog-keyword-search" lay-verify="required" placeholder="输入关键词搜索" autocomplete="off" class="layui-input">
                                        </div>
                                        <div class="search-submit  shadow">
                                            <button class="search-btn"  id="submit-keyword">
                                                <i class="fa fa-search"></i></button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="layui-col-sm6 layui-col-md12 padding0">
                            <div class="article-category shadow" id="right-blogType">
                                <div class="article-category-title">分类导航</div>
                            </div>
                        </div>
                        <div class="layui-col-sm6 layui-col-md12">
                            <div class="blog-card shadow sr-rightmodule">
                                <div class="blog-card-title">
                                    <span class="icon"><i class="layui-icon" aria-hidden="true"></i></span>
                                    <span class="text">最新博客</span>
                                </div>
                                <ul class="blog-card-ul" id="right-blog-new">
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--右边悬浮 平板或手机设备显示-->
                    <div class="category-toggle"><i class="fa fa-chevron-left"></i></div>
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
                target="_blank">九阳神功</a></p>
    </footer>
    <!-- 移动端侧边导航 -->
    <ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
        <li class="layui-nav-item">
            <a href="home.jsp"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="articlelist.jsp"><i class="fa fa-book fa-fw"></i>&nbsp;学海无涯</a>
        </li>
        <li class="layui-nav-item">
            <a href="timeline.jsp"><i class="fa fa-snowflake-o fa-fw "></i>&nbsp;点点滴滴</a>
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
    <script src="${pageContext.request.contextPath}/res/js/site.js"></script>
    <script>

        var href = location.href
        var typeId = ''
        var size = 6
        var start = 1
        if(href.indexOf('?') != -1){
            var arr = href.substr(href.lastIndexOf('?')+1).split('&')
            typeId=arr[0]
            if(href.indexOf('&') != -1){
                size=arr[1]
                start=arr[2]
            }
        }

        $(function(){
            build_left_blog()
            build_right_blogType()
            build_right_blog_new()

            function build_left_blog(){

                $.getJSON("${pageContext.request.contextPath}/home/list?typeId="+typeId+"&&rows="+size+"&&page="+start, function(res){
                    var blog = res.rows;
                    var total = res.total;
                    var pageTotal = Math.ceil(total/size)+1
                    var pageTemp = ''
                    var temp = ''
                    $.each(blog,function (index,obj) {
                        temp += '<div class="article shadow clearfix sr-listshow">' +
                            '                            <div class="article-left">' +
                            '                                <img src="'+obj.image+'"  />' +
                            '                            </div>\n' +
                            '                            <div class="article-right">' +
                            '                                <div class="article-title">' +
                            '                                    <a href="detail.jsp?id='+obj.id+'">'+obj.title+'</a>' +
                            '                                </div>' +
                            '                                <div class="article-abstract">'+obj.summary+'' +
                            '                                </div>' +
                            '                                <div class="article-footer">' +
                            '                                    <span class="layui-hide-xs"><i class="fa fa-tag" aria-hidden="true"></i>&nbsp;<a' +
                            '                                            style="color:#009688" href="">'+obj.blogType.typename+'' +
                            '                                            </a></span>' +
                            '                                    <span><i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;'+obj.releasedate+'</span>' +
                            '                                    <span class="article-viewinfo">'+obj.clickhit+'阅读</span>' +
                            '                                    <span class="article-viewinfo">'+obj.replyhit+'评论</span>' +
                            '                                    <span class="article-viewinfo">'+obj.agreehit+'赞</span>' +
                            '                                    <a class="read layui-btn layui-btn-xs layui-btn-normal layui-hide-xs"' +
                            '                                        href="detail.jsp?id='+obj.id+'" title="'+obj.title+'">阅读全文</a>' +
                            '                                </div>' +
                            '                            </div>' +
                            '                        </div>'
                    })

                    //左边博客建造
                    $("#left-blog").append(temp)
                    //翻页建造
                    var pagehref = location.href
                    for(var i=1;i<pageTotal;i++){
                       if(i==start){
                           pageTemp += ' <a id="page-color" class="laypage-curr"  href="${pageContext.request.contextPath}/home/articlelist.jsp?'+typeId+'&'+size+'&'+i+'">'+i+'</a>'
                       }else{
                           pageTemp += ' <a id="page-color"  href="${pageContext.request.contextPath}/home/articlelist.jsp?'+typeId+'&'+size+'&'+i+'">'+i+'</a>'
                       }
                    }
                    var next =parseInt(start)+1
                    if(next > (pageTotal-1)){
                        next = pageTotal-1
                    }
                    pageTemp += '<a id="page-color" href="${pageContext.request.contextPath}/home/articlelist.jsp?'+typeId+'&'+size+'&'+next+'" class="laypage-next">下一页</a>'
                    $("#page-number").append(pageTemp)
                });
            }

            function build_right_blogType(){
                $.getJSON("${pageContext.request.contextPath}/home/blogType-list", function(res){
                    // $.ajaxSettings.async = false;
                    var blogTypes = res.blogTypes;
                    var temp = ''
                    for(var i=0;i<blogTypes.length;i++){
                        temp += '<a href="${pageContext.request.contextPath}/home/articlelist.jsp?'+blogTypes[i].id+'">'+blogTypes[i].typename+'</a>'
                    }
                    $("#right-blogType").append(temp).append('<div class="clear"></div>')
                });
            }

            function build_right_blog_new(){
                $.getJSON("${pageContext.request.contextPath}/home/blogList-new", function(res){
                    var blog_new = res.blogs;
                    var temp = ''
                    for(var i=0;i<3;i++){
                        var number = i+1
                        temp += '<li>\n' +
                            ' <span class="layui-badge">'+number+'</span><a href="${pageContext.request.contextPath}/home/detail.jsp?id='+blog_new[i].id+'"\n' +
                            ' title="'+blog_new[i].title+'">'+blog_new[i].title+'</a>\n' +
                            '   </li>  '
                    }
                    for(var j=3;j<blog_new.length;j++){
                        var number1 = j+1
                        temp+= '<li>\n' +
                            '<span class="layui-badge layui-bg-blue">'+number1+'</span><a href="${pageContext.request.contextPath}/home/detail.jsp?id='+blog_new[i].id+'"\n' +
                            '  title="'+blog_new[j].title+'">'+blog_new[j].title+'</a>\n' +
                            '     </li> '
                    }
                    $("#right-blog-new").append(temp)
                });
            }
        })

        $("#submit-keyword").click(function () {
            $("#left-blog").empty()
            $("#page-number-parent").remove()
            var query = $("#blog-keyword-search").val()
            var temp = ''
            $.getJSON("${pageContext.request.contextPath}/home/keyWordSearch?query="+query, function(res){
                if(res.length > 0){
                    $.each(res,function(index,obj){
                        temp += '<div class="article shadow clearfix sr-listshow">' +
                            '                                <div class="article-title">' +
                            '                                    <a href="detail.jsp?id='+obj.id+'" target="_blank">'+obj.title+'</a>' +
                            '                                </div>' +
                            '                                <div class="article-abstract">'+obj.content+'' +
                            '                                </div>' +
                            '                                <div class="article-footer">' +
                            '                                    <span><i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;'+obj.releasedate+'</span>' +
                            '                                    <span class="article-viewinfo">关键字：'+obj.keyword+'</span>' +
                            '                                    <a class="read layui-btn layui-btn-xs layui-btn-normal layui-hide-xs"' +
                            '                                        href="detail.jsp?id='+obj.id+'" title="'+obj.title+'" target="_blank">阅读全文</a>' +
                            '                                </div>' +
                            '                            </div>'
                    })
                }else {
                    temp += '<div align="center" style="padding-top: 10px;padding-bottom: 10px;background-color: white">未查询到关键字<span style="color: red">'+query+'</span>，换个字段试试</div>'
                }
                $("#left-blog").append(temp)
            });
            return false
        })


    </script>
</body>

</html>
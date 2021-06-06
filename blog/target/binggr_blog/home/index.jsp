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
    <script data-pace-options='{ "ajax": false ,"eventLag": false}' src="${pageContext.request.contextPath}/res/js/pace.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/lib/layui/layui.js"></script>
    <style>
        .remark-list {
            min-height: 445px;
        }

        .remark-list li {
            position: relative;
            min-height: 50px;
            margin: 5px 0;
        }

        .remark-list li .user-avator {
            padding: 2px;
            border: 1px solid #ddd;
            position: absolute;
        }

        .remark-list li .remark-content {
            margin-left: 60px;
            border: 1px solid #efefef;
            height: 46px;
            padding: 5px 8px;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            font-size: 12px;
            overflow: hidden;
            line-height: 18px;
            background-color: #efefef;
            color: #666;
        }

        .remark-list li .remark-content::after {
            content: "";
            border: 10px solid rgba(255, 255, 255, 0.00);
            border-bottom: 8px solid rgba(255, 255, 255, 0.00);
            border-top: 8px solid rgba(255, 255, 255, 0.00);
            border-right-color: #efefef;
            position: absolute;
            top: 12px;
            left: 42px;
            display: block;
        }
    </style>
</head>

<body>
<!-- 头部 -->
<nav class="blog-nav layui-header" >
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
        <a class="blog-logo" href="index.jsp">博客网<b style="font-size: 16px;">-机会留给有准备的人更多！</b></a>
        <ul class="blog-nav-list" lay-filter="nav">
            <li class="layui-nav-item layui-this">
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
    <!-- 首页内容 -->
    <div class="layui-container">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md12">
                <div class="home-tips shadow">
                    <i style="float:left;line-height:17px;" class="fa fa-volume-up"></i>
                    <div class="home-tips-container">
                        <span style="color: red">欢迎来到新建的博客网站</span>
                    </div>
                </div>
            </div>
            <!--左边文章列表-->
            <div class="layui-col-md8">
                <div class="left-box shadow" style="padding:5px;background-color:#fff;">
                    <!-- 此处Banner宽度需要根据Banner数量来动态设置，容器宽度为100*数量（%），Banner宽度为1/数量*100（%） -->
                    <div class="carousel-box" style="position:relative;background-color: #fff;overflow:hidden">
                        <div style="width:200%" class="banner">
                            <ul>
                                <li style="width:50%">
                                    <a href="#">
                                        <img src="https://pixabay.com/get/gfd1fd8e1680447878a3e678272cac5503c6a8a591ae92f5c66b942e7250688dcce5a1ca5f2e7c68723298fc7eed5f1e058d1d5bb582a821898764b43e5f53779_1920.jpg?x-oss-process=style/w_870-h_870" />
                                        <p>博客准备上线</p>
                                    </a>
                                </li>
                                <li style="width:50%">
                                    <a href="#">
                                        <img src="https://pixabay.com/get/g8146a50399c3b9743b1ad5984a8e0e3f9f097a321b68b432bcfcd463f70f4c41efec054aa711217ae392c9d43216678813a633178fb382df4b939753a93456e5_640.jpg" />
                                        <p>博客准备上线</p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
<%--                <div class="left-box">--%>
<%--                    <p class="left-box-title shadow"><i class="fa fa-diamond fa-fw" aria-hidden="true"></i>置顶博文</p>--%>
<%--                    <!-- 没有数据 -->--%>
<%--                    <!-- <div class="emptybox shadow">--%>
<%--                            <p><i style="font-size:50px;color:#5fb878" class="layui-icon">&#xe69c;</i></p>--%>
<%--                            <p>暂时没有任何数据</p>--%>
<%--                    </div> -->--%>
<%--                    <div class="article shadow clearfix sr-listshow">--%>
<%--                        <div class="article-left">--%>
<%--                            <img src="${pageContext.request.contextPath}/res/images/cover/201708252044567037.jpg" alt=".NET Core 3.0正式版发布" />--%>
<%--                        </div>--%>
<%--                        <div class="article-right">--%>
<%--                            <div class="article-title">--%>
<%--                                <a href="detail.jsp">.NET Core 3.0正式版发布</a>--%>
<%--                            </div>--%>
<%--                            <div class="article-abstract">--%>
<%--                                今天凌晨微软在.NET Conf上正式发布了.NET Core 3.0，2018年12月4日，微软推出首个预览版.NET Core 3.0--%>
<%--                                Preview1，时至今日，.NET Core 3.0正式版终于发布！--%>
<%--                            </div>--%>
<%--                            <div class="article-footer">--%>
<%--                                    <span class="layui-hide-xs"><i class="fa fa-tag" aria-hidden="true"></i>&nbsp;<a--%>
<%--                                            style="color:#009688" href="">.NET--%>
<%--                                            Core</a></span>--%>
<%--                                <span><i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;2019-9-24</span>--%>
<%--                                <span class="article-viewinfo">99阅读</span>--%>
<%--                                <span class="article-viewinfo">66评论</span>--%>
<%--                                <span class="article-viewinfo">8赞</span>--%>
<%--                                <a class="read layui-btn layui-btn-xs layui-btn-normal layui-hide-xs"--%>
<%--                                   href="detail.jsp" title="阅读全文：.NET Core 3.0正式版发布">阅读全文</a>--%>
<%--                            </div>--%>
<%--                            <div class="flag flag-left">推荐</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="article shadow clearfix sr-listshow">--%>
<%--                        <div class="article-left">--%>
<%--                            <img src="${pageContext.request.contextPath}/res/images/cover/201708252044567037.jpg" alt=".NET Core 3.0正式版发布" />--%>
<%--                        </div>--%>
<%--                        <div class="article-right">--%>
<%--                            <div class="article-title">--%>
<%--                                <a href="detail.jsp">.NET Core 3.0正式版发布</a>--%>
<%--                            </div>--%>
<%--                            <div class="article-abstract">--%>
<%--                                今天凌晨微软在.NET Conf上正式发布了.NET Core 3.0，2018年12月4日，微软推出首个预览版.NET Core 3.0--%>
<%--                                Preview1，时至今日，.NET Core 3.0正式版终于发布！--%>
<%--                            </div>--%>
<%--                            <div class="article-footer">--%>
<%--                                    <span class="layui-hide-xs"><i class="fa fa-tag" aria-hidden="true"></i>&nbsp;<a--%>
<%--                                            style="color:#009688" href="">.NET--%>
<%--                                            Core</a></span>--%>
<%--                                <span><i class="fa fa-clock-o" aria-hidden="true"></i>&nbsp;2019-9-24</span>--%>
<%--                                <span class="article-viewinfo">99阅读</span>--%>
<%--                                <span class="article-viewinfo">66评论</span>--%>
<%--                                <span class="article-viewinfo">8赞</span>--%>
<%--                                <a class="read layui-btn layui-btn-xs layui-btn-normal layui-hide-xs"--%>
<%--                                   href="detail.jsp" title="阅读全文：.NET Core 3.0正式版发布">阅读全文</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <div class="left-box" id="left-blog">
                    <p class="left-box-title shadow sr-listshow"><i class="fa fa-signal fa-fw"
                                                                    aria-hidden="true"></i>最新博文
                    </p>
                    <!-- 没有数据 -->
                    <!-- <div class="emptybox shadow">
                            <p><i style="font-size:50px;color:#5fb878" class="layui-icon">&#xe69c;</i></p>
                            <p>暂时没有任何数据</p>
                    </div> -->

                </div>
            </div>
            <!--右边小栏目-->
            <div class="layui-col-md4">
                <div class="layui-row layui-col-space10">
                    <div class="layui-col-sm12 layui-col-md12">
                        <div class="blogerinfo shadow">
                            <div class="blogerinfo-figure" id="blogger-image">
                            </div>
                            <div class="blogerinfo-info">
                                <p class="blogerinfo-nickname" id="blogger-nickname"></p>
                                <p class="blogerinfo-introduce" id="blogger-sign"></p>
                                <p class="blogerinfo-location"><i class="fa fa-location-arrow"></i>&nbsp;广东 - 清远</p>
                            </div>
                            <div class="blogerinfo-contact">
                                <a target="_blank" title="主页"
                                   href="${pageContext.request.contextPath}"><i
                                        class="fa fa-home fa-2x"></i></a>
                                <a target="_blank" title="QQ交流"
                                href="tencent://message/?uin=1345020210&Site=Sambow&Menu=yes"><i
                                    class="fa fa-qq fa-2x"></i></a>
                                <a target="_blank" title="给我写信"
                                   href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=459662500@qq.com"
                                   style="text-decoration:none;"><i class="fa fa-envelope fa-2x"></i></a>
                                <a target="_blank" title="GitHub" href="https://github.com/NoMorningstar"><i
                                        class="fa fa-github fa-2x"></i></a>
                            </div>
                            <div class="bloginfo-statistics">
                                <div class="item">
                                    <span id="blog-sum"></span>
                                    <p>知识点</p>
                                </div>
                                <div class="item">
                                    <span id="click-sum"></span>
                                    <p>点击</p>
                                </div>
                                <div class="item">
                                    <span id="reply-sum"></span>
                                    <p>留言</p>
                                </div>
                                <div class="item">
                                    <span id="agree-sum"></span>
                                    <p>点赞</p>
                                </div>
                            </div>
                            <div class="bloginfo-runtime">博客已运行<span style="margin-left:4px;"></span>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-sm6 layui-col-md12">
                        <div class="blog-card shadow">
                            <div class="blog-card-title">
                                <span class="icon"><i class="layui-icon" aria-hidden="true">&#xe756;</i></span>
                                <span class="text">热文排行</span>
                            </div>
                            <ul class="blog-card-ul" id="right-blog-1">
                            </ul>
                        </div>
                    </div>

                    <div class="layui-col-sm6 layui-col-md12">
                        <div class="blog-card shadow sr-rightmodule" data-scroll-reveal>
                            <div class="blog-card-title">
                                <span class="icon"><i class="layui-icon" aria-hidden="true">&#xe64c;</i></span>
                                <span class="text">友情链接</span>
                            </div>
                            <ul class="blogroll" id="link-list">
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 底部 -->
<footer class="blog-footer">
    <p><a href="javascript:layer.msg('正在制作')">文章归档</a><a href="javascript:layer.msg('正在制作')">网站地图</a><a href=""
                                                                                                        target="_blank">联系老师</a><a href="javascript:layer.msg('正在制作')">小额赞赏</a></p>
    <p><span>Powered by .NET Core 3.0</span><span>&copy;2021</span><a
            href="https://www.github.com">love.com</a><span>版权所有</span><a href="http://www.github/NoMorningstar/"
                                                                          target="_blank">吸星大法</a></p>
</footer>
<!-- 移动端侧边导航 -->
<ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
    <li class="layui-nav-item layui-this">
        <a href="index.jsp"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
    </li>
    <li class="layui-nav-item">
        <a href="articlelist.jsp"><i class="fa fa-book fa-fw"></i>&nbsp;学海无涯</a>
    </li>
    <li class="layui-nav-item">
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
<script src="${pageContext.request.contextPath}/res/js/site.js"></script>
<script src="${pageContext.request.contextPath}/res/js/unslider.js"></script>
<script src="${pageContext.request.contextPath}/res/js/homepage.js"></script>
<script src="${pageContext.request.contextPath}/static/lib/jquery-3.4.1.js"></script>
<script>
    $(function(){
        build_blogger_info()
        build_left_blog()
        build_right_blog_1()
        build_link()

        function build_blogger_info() {
            $.getJSON("${pageContext.request.contextPath}/home/bloggerSelect", function(res){
                $("#blogger-image").append('<img src="'+res.imagename+'"  />')
                $("#blogger-nickname").append(res.nickname)
                $("#blogger-sign").append(res.sign)
            })
            $.getJSON("${pageContext.request.contextPath}/home/sumList", function(res){
                $("#blog-sum").append(res.countlist)
                $("#click-sum").append(res.clickTotal)
                $("#reply-sum").append(res.replyTotal)
                $("#agree-sum").append(res.agreeTotal)
            })
        }

        function build_left_blog(){
            $.getJSON("${pageContext.request.contextPath}/home/blogList-new", function(res){
                var blog_new = res.blogs;
                var temp = ''
                $.each(blog_new,function (index,obj) {
                    temp += '<div class="article shadow clearfix sr-listshow">' +
                        '                            <div class="article-left">' +
                        '                                <img src="'+obj.image+'"  />' +
                        '                            </div>\n' +
                        '                            <div class="article-right">' +
                        '                                <div class="article-title">' +
                        '                                    <a href="${pageContext.request.contextPath}/home/detail.jsp?id='+obj.id+'">'+obj.title+'</a>' +
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
                        '                                        href="${pageContext.request.contextPath}/home/detail.jsp?id='+obj.id+'" title="'+obj.title+'">阅读全文</a>' +
                        '                                </div>' +
                        '                            </div>' +
                        '                        </div>'
                })
                $("#left-blog").append(temp)
            });
        }

        function build_right_blog_1(){
            $.getJSON("${pageContext.request.contextPath}/home/blogList-hot", function(res){
                var blog_hot = res.blogs;
                var temp = ''
                for(var i=0;i<3;i++){
                    var number = i+1
                    temp += '<li>\n' +
                        ' <span class="layui-badge ">'+number+'</span><a href="${pageContext.request.contextPath}/home/detail.jsp?id='+blog_hot[i].id+'"\n' +
                        ' title="'+blog_hot[i].title+'">'+blog_hot[i].title+'</a>\n' +
                        '   </li>  '
                }
                for(var j=3;j<blog_hot.length;j++){
                    var number1 = j+1
                    temp+= '<li>\n' +
                        '<span class="layui-badge layui-bg-blue">'+number1+'</span><a href="${pageContext.request.contextPath}/home/detail.jsp?id='+blog_hot[i].id+'"\n' +
                        '  title="'+blog_hot[j].title+'">'+blog_hot[j].title+'</a>\n' +
                        '     </li> '
                }
                $("#right-blog-1").append(temp)
            });
        }

        function build_link(){
            $.getJSON("${pageContext.request.contextPath}/home/linkList", function(res){
                var links = res;
                var temp = ''
                $.each(links,function (index,obj) {
                    temp +='<li><a target="_blank" href="'+obj.linkurl+'">'+obj.linkname+'</a></li>'
                })
                $("#link-list").append(temp)
            });
        }
    })
</script>
</body>

</html>
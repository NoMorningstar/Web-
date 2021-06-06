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
    <!-- 本也特有css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/article-record.css">
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
                    <a><cite>文章归档</cite></a>
                </span>
            </blockquote>
            <div class="blog-nav-two shadow">
                <div class="layui-breadcrumb" lay-separator="|">
                    <a href="timeline.jsp"><span>轻言细语</span></a>
                    <a href="record.jsp" class="selected"><span>文章归档</span></a>
                </div>
            </div>
            <div class="blog-panel">
                <div class="layui-row">
                    <!-- 左侧导航：此处时间跨度大的话，会出现溢出，请自行修复或等待下个版本 -->
                    <div class="layui-hide-xs layui-col-md2" style="margin:10px 0">
                        <ul class="article-record-title">
                            <li class="selected"><a href="#201910">2019年10月</a></li>
                            <li class=""><a href="#20199">2019年9月</a></li>
                            <li class=""><a href="#20195">2019年5月</a></li>
                            <li class=""><a href="#20194">2019年4月</a></li>
                            <li class=""><a href="#201810">2018年10月</a></li>
                            <li class=""><a href="#20185">2018年5月</a></li>
                            <li class=""><a href="#20184">2018年4月</a></li>
                            <li class=""><a href="#20183">2018年3月</a></li>
                        </ul>
                    </div>
                    <!-- 左侧导航END -->
                    <!-- 右侧文章 -->
                    <div class="layui-col-xs12 layui-col-md10">
                        <div class="article-record-content">
                            <div class="article-record-item layui-show">
                                <h4><a class="datenav" id="201910">2021年6月</a></h4>
                                <ul>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">6月08日</span><a href="detail.jsp">Visual
                                            Studio Code（VS Code）设置为中文</a></li>
                                </ul>
                            </div>
                            <div class="article-record-item ">
                                <h4><a class="datenav" id="20199">2021年6月</a></h4>
                                <ul>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">05月30日</span><a
                                            href="detail.jsp">博客升级到.NET Core 3.0的变化和问题</a></li>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">05月27日</span><a href="detail.jsp">EF
                                            Core进阶之加载关联数据</a></li>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">05月24日</span><a href="detail.jsp">.NET
                                            Core 3.0正式版发布</a></li>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">05月17日</span><a
                                            href="detail.jsp">JS动画效果之妙用Animate.css</a></li>
                                </ul>
                            </div>
                            <div class="article-record-item ">
                                <h4><a class="datenav" id="20195">2021年5月</a></h4>
                                <ul>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">05月01日</span><a
                                            href="detail.jsp">Xamarin.Forms移动开发系列5 ：XAML标记扩展</a></li>
                                </ul>
                            </div>
                            <div class="article-record-item ">
                                <h4><a class="datenav" id="20194">2021年4月</a></h4>
                                <ul>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">04月22日</span><a
                                            href="detail.jsp">Xamarin.Forms移动开发系列4 ：XAML基础</a></li>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">04月21日</span><a
                                            href="detail.jsp">Xamarin.Forms移动开发系列 ：目录</a></li>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">04月20日</span><a
                                            href="detail.jsp">Xamarin.Forms移动开发系列3：项目剖析</a></li>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">04月20日</span><a
                                            href="detail.jsp">Xamarin.Forms移动开发系列2：创建和调试</a></li>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">04月19日</span><a
                                            href="detail.jsp">Xamarin.Forms移动开发系列1：介绍和安装</a></li>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">04月10日</span><a
                                            href="detail.jsp">使用ASP.NET Core SignalR搭建聊天室（本站聊天室）</a></li>
                                </ul>
                            </div>
                            <div class="article-record-item ">
                                <h4><a class="datenav" id="201810">2020年10月</a></h4>
                                <ul>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">10月29日</span><a
                                            href="detail.jsp">小程序黑科技之获取手机号码、通讯地址、地理位置</a></li>
                                </ul>
                            </div>
                            <div class="article-record-item ">
                                <h4><a class="datenav" id="20185">2020年5月</a></h4>
                                <ul>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">05月09日</span><a
                                            href="detail.jsp">Blocksit+Layui实现响应式瀑布流加载</a></li>
                                </ul>
                            </div>
                            <div class="article-record-item ">
                                <h4><a class="datenav" id="20184">2020年4月</a></h4>
                                <ul>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">04月10日</span><a
                                            href="detail.jsp">纯CSS实现文章左上角Flag标签</a></li>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">04月09日</span><a href="detail.jsp">新功能上线 -
                                            博文打赏（网站分享组件推荐）</a></li>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">04月07日</span><a href="detail.jsp">新功能上线 -
                                            博文配乐（网页音乐播放器推荐）</a></li>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">04月03日</span><a href="detail.jsp">邮我组件 -
                                            用户点击即可发送邮件</a></li>
                                </ul>
                            </div>
                            <div class="article-record-item ">
                                <h4><a class="datenav" id="20183">2020年3月</a></h4>
                                <ul>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">03月24日</span><a
                                            href="detail.jsp">后台可以管理文章了，接下来开始做博客前台。</a></li>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">03月21日</span><a href="detail.jsp">ASP.NET
                                            Core第三方认证之QQ登录</a></li>
                                    <li><span class="layui-badge layui-bg-black"
                                            style="margin-right:8px;">03月18日</span><a
                                            href="detail.jsp">WangEditor集成到后台，发个文章压压惊。</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- 右侧文章END -->
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
                target="_blank">一阳指</a></p>
    </footer>
    <!-- 移动端侧边导航 -->
    <ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
        <li class="layui-nav-item layui-this">
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
    <script src="${pageContext.request.contextPath}/res/js/site.js"></script>
    <!-- 本页特有js -->
    <script>
        layui.use('jquery', function () {
            var $ = layui.jquery;
            var i, t;
            $(function () {
                $('.article-record-title li').on('click', function () {
                    var self = this;
                    $(self).addClass('selected').siblings().removeClass('selected');
                    clearTimeout(t);
                    clearInterval(i);
                    $('.datenav').removeClass('highlight');
                    highlight(self);
                    i = setInterval(function () {
                        highlight(self);
                    }, 600);
                    t = setTimeout(function () {
                        clearInterval(i);
                    }, 1200);

                    $("html, body").animate({
                        scrollTop: $($(self).children().attr("href")).offset().top + -
                            100 + "px"
                    }, {
                        duration: 400,
                        easing: "swing"
                    });
                });

                function highlight(elem) {
                    var target = $(elem).children().text().replace('年', '').replace('月', '');
                    $('#' + target).addClass('highlight');
                    setTimeout(function () {
                        $('#' + target).removeClass('highlight');
                    }, 300);
                }
            });
        });
    </script>
</body>

</html>
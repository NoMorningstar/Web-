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
    <script data-pace-options='{ "ajax": false ,"eventLag": false}' src="${pageContext.request.contextPath}/res/js/pace.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/lib/layui/layui.js"></script>
    <!-- 本页特有css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/comment.css">
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
                <li class="layui-nav-item">
                    <a href="${pageContext.request.contextPath}/home/timeline.jsp"><i class="fa fa-snowflake-o fa-fw"></i>&nbsp;日记</a>
                </li>
                <li class="layui-nav-item layui-this">
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
                    <a><cite>留言交流</cite></a>
                </span>
            </blockquote>
            <div class="layui-row layui-col-space15">
                <!-- 左边 -->
                <div class="layui-col-md12">
                    <div class="layui-row layui-col-space10">
                        <div class="layui-col-md12">
                            <div class="topdiv">
                                <div class="topdiv-figure">
                                    <img src="${pageContext.request.contextPath}/res/images/messagewall.png" />
                                </div>
                                <p class="topdiv-nickname">留言板</p>
                                <p class="topdiv-introduce">可留言、可吐槽、可提问。欢迎灌水，杜绝广告！</p>
                            </div>
                        </div>
                        <div class="layui-col-md12">
                            <div class="comment-editor sr-bottom">
                                <form class="layui-form blog-editor">
                                    <div class="layui-form-item">
                                        <textarea name="content" lay-verify="content" id="blog-content"
                                            placeholder="请输入内容" class="layui-textarea layui-hide"></textarea>
                                    </div>
                                    <div class="layui-form-item">
                                        <button class="layui-btn layui-btn-normal layui-btn-sm" lay-submit
                                            lay-filter="formComment" id="comment-submit">提交留言</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="layui-col-md12">
                            <div class="layui-row layui-col-space8 commentlist" id="comment-main">

                            </div>
                        </div>
                    </div>
                </div>
                <!-- 左边END -->
            </div>
        </div>
    </div>
    <!-- 底部 -->
    <footer class="blog-footer">
        <p><a href="javascript:layer.msg('正在制作')">文章归档</a><a href="javascript:layer.msg('正在制作')">网站地图</a><a href=""
                target="_blank">联系老师</a><a href="javascript:layer.msg('正在制作')">小额赞赏</a></p>
        <p><span>Powered by .NET Core 3.0</span><span>&copy;2021</span><a
                href="https://www.baidu.com">baidu.com</a><span>版权所有</span><a href="http://www.baidu.com/"
                target="_blank">六脉神剑</a></p>
    </footer>
    <!-- 移动端侧边导航 -->
    <ul class="layui-nav layui-nav-tree layui-nav-side blog-nav-left layui-hide" lay-filter="nav">
        <li class="layui-nav-item">
            <a href="home.jsp"><i class="fa fa-home fa-fw"></i>&nbsp;网站首页</a>
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
        <li class="layui-nav-item layui-this">
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
    <!-- 本页特有 -->

    <script src="${pageContext.request.contextPath}/static/lib/jquery-3.4.1.js"></script>

    <script>
        $(function(){
            build_comment()

            function build_comment(){
                var temp =''
                $.getJSON("${pageContext.request.contextPath}/home/selectCommentMain", function(res){
                    var comments = res;
                    $.each(comments,function(index,obj){
                        temp += '<div class="layui-col-md12">\n' +
                            '         <div class="comment-item sr-bottom" id="comment-parent">\n' +
                            '          <div class="comment-item-left">\n' +
                            '          <div class="useravator" >\n' +
                            '           <img src="${pageContext.request.contextPath}/res/images/sl.jpg"  />\n' +
                            '          </div>\n' +
                            '          </div>\n' +
                            '          <div class="comment-item-right">\n' +
                            '             <div class="content">'+obj.content+'</div>\n' +
                            '               <p class="createtime">— 来自<span\n' +
                            '                  style="padding:0 3px;padding-right:10px;color:#0094ff">'+obj.userip+'</span>'+obj.commentdate+'\n' +
                            '                </p>\n' +
                            '         </div>\n' +
                            '         </div>\n' +
                            '          </div>'
                    })
                    $("#comment-main").append(temp)
                })
            }
        })

        var index
        var layedit
        layui.use('layedit', function(){
            layedit = layui.layedit;
            index = layedit.build('blog-content',{
                tool: ['face', 'left', 'center', 'right', 'link']
                ,height: 150
            }); //建立编辑器
        });

        $("#comment-submit").click(function(){
            layedit.sync(index)
            var content = $("#blog-content").val();
            $.ajax({
                type: "get",
                url: "${pageContext.request.contextPath}/home/commentSave",
                data: {'content':content,'blog.id':1,'state':1},
                success: function(result){
                    window.location.href = "${pageContext.request.contextPath}/home/comment.jsp"
                }
            })
            return false
        })



    </script>
</body>

</html>
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
    <!-- 本页特有的css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/article-detail.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/wangEditor.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/prettify.css">
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
                <i class="layui-icon">&#xe715;</i>
                <span class="layui-breadcrumb" lay-separator=">" style="visibility: visible;">
                    <a href="index.jsp">首页</a>
                    <span lay-separator="">&gt;</span>
                    <a href="articlelist.jsp">学海无涯</a>
                    <span lay-separator="">&gt;</span>
                    <a><cite id="blog-title1"></cite></a>
                </span>
            </blockquote>
            <div class="layui-row layui-col-space15 clearfix">
                <div class="layui-col-md8 left">
                    <div data-fontsize="14" class="article-detail shadow">
                        <div class="article-tool">
                            <div style="float:left;">
                                <button class="layui-btn layui-btn-primary layui-btn-xs"
                                    title="发布日期" id="blog_releasedate"></button>
                                <div class="layui-btn-group">
                                    <button class="layui-btn layui-btn-primary layui-btn-xs" title="浏览">
                                        <i class="fa fa-eye fa-fw"></i><span style="margin-left:3px;" id="blog_clickhit"></span>
                                    </button>
                                    <button class="layui-btn layui-btn-primary layui-btn-xs" title="评论">
                                        <i class="fa fa-comments fa-fw"></i><span style="margin-left:3px;" id="blog_replyhit"></span>
                                    </button>
                                </div>
                            </div>
                            <div class="tool-box">
                                <div class="layui-btn-group">
                                    <button class="layui-btn layui-btn-primary layui-btn-xs" title="静音">
                                        <i class="fa fa-volume-up fa-fw"></i>
                                    </button>
                                </div>
                                <div class="layui-btn-group layui-hide-xs">
                                    <button class="layui-btn layui-btn-primary layui-btn-xs" title="字体缩小">
                                        <i class="fa fa-minus fa-fw"></i>
                                    </button>
                                    <button class="layui-btn layui-btn-primary layui-btn-xs" title="字体还原">
                                        <i class="fa fa-undo fa-fw"></i>
                                    </button>
                                    <button class="layui-btn layui-btn-primary layui-btn-xs" title="字体放大">
                                        <i class="fa fa-plus fa-fw"></i>
                                    </button>
                                </div>
                                <div class="layui-btn-group layui-hide-xs">
                                    <button class="layui-btn layui-btn-primary layui-btn-xs" title="展开阅读">
                                        <i class="fa fa-arrows-h fa-fw"></i>
                                    </button>
                                    <button class="layui-btn layui-btn-primary layui-btn-xs" title="全屏阅读">
                                        <i class="fa fa-arrows-alt fa-fw"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="article-detail-title" id="blog_title"></div>
                        <div class="article-detail-abstract">
                            <span class="layui-badge">摘要</span>
                            <span id="blog_summary"></span>
                        </div>
                        <div class="article-detail-content w-e-text" id="blog_content">

                        </div>
                    </div>
                    <div class="article-component">
                        <div class="component-box">
                            <a href="javascript:;" class="praise" blog-event="praise"><i
                                    class="fa fa-thumbs-up fa-fw"></i>点赞（<span id="blog_agreehit"></span>）</a>
                            <a href="javascript:;" class="reword" blog-event="reword">赏</a>
                            <a href="javascript:;" class="share" blog-event="share"><i
                                    class="fa fa-share-alt fa-fw"></i>分享（<span id="shareCnt">0</span>）</a>
                        </div>
                    </div>
                    <div class="blog-card blog-card-padding shadow">
                        <fieldset class="layui-elem-field layui-field-title" style="margin-bottom:0">
                            <legend>来说两句吧</legend>
                            <div class="layui-field-box">
                                <form class="layui-form blog-editor" action="" >
                                    <div class="layui-form-item">
                                        <textarea  lay-verify="content" id="blog-content"
                                                  placeholder="请输入内容" class="layui-textarea "></textarea>
                                        <!-- 禁止评论 -->
                                        <!-- <div style="border:1px solid #f2f2f2;" class="emptybox">
                                            <p><i style="font-size:50px;color:#5fb878" class="layui-icon">&#x1007;</i>
                                            </p>
                                            <p>该文章已禁止评论</p>
                                        </div> -->
                                    </div>
                                    <div class="layui-form-item">
                                        <button class="layui-btn" lay-submit="formRemark"
                                            lay-filter="formRemark" id="comment-submit">提交评论</button>
                                    </div>
                                </form>
                            </div>
                        </fieldset>
                        <div class="blog-card-title">最新评论</div>
                        <ul class="blog-comment" id="comment-build">
                        </ul>
                        <!-- 没有评论 -->
                        <!-- <div class="emptybox">
                            <p><i style="font-size:50px;color:#5fb878" class="layui-icon"></i></p>
                            <p>暂无评论，大侠不妨来一发？</p>
                        </div> -->
                    </div>
                </div>
                <div class="layui-col-md4 right">
                    <div class="layui-row layui-col-space10">
                        <div class="layui-col-sm6 layui-col-md12 padding0">
                            <div class="article-category shadow categoryOut" id="right-blogType">
                                <div class="article-category-title">分类导航</div>
                            </div>
                        </div>
                        <div class="layui-col-sm6 layui-col-md12">
                            <div class="blog-card shadow" >
                                <div class="blog-card-title">相似文章</div>
                                <ul class="blog-card-ul" id="right-blog-like">
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--右侧悬浮分类导航 平板或手机设备显示-->
                    <div class="category-toggle"><i class="fa fa-chevron-left"></i></div>
                </div>
            </div>
        </div>
    </div>
    <!-- 底部 -->
    <footer class="blog-footer">
        <p><a href="javascript:layer.msg('正在制作')">文章归档</a><a href="javascript:layer.msg('正在制作')">网站地图</a><a href=""
                target="_blank">联系作者</a><a href="javascript:layer.msg('正在制作')">小额赞赏</a></p>
        <p><span>Powered by .NET Core 3.0</span><span>&copy;2021</span><a
                href="https://www.baidu.com">baidu.com</a><span>版权所有</span><a href="http://www.baidu.com/"
                target="_blank">蜀山少侠</a></p>
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
    <!-- 本页特有js -->
    <script src="${pageContext.request.contextPath}/res/js/prettify.js"></script>
    <script type="text/javascript">
        var sharehome, $;
    
        prettyPrint(); //渲染文章中的代码
    
        layui.use(['layer', 'form'], function () {
            $ = layui.$;
            var form = layui.form
                , device = layui.device();

    
            //文章顶部工具栏按钮点击事件
            $('.tool-box button').on('click', function () {
                var title = $(this).attr('title');
                switch (title) {
                    case '全屏阅读':
                        var content = $('.article-detail').prop("outerHTML");
                        layer.open({
                            title: false,
                            type: 1,
                            content: content,
                            closeBtn: 0,
                            scrollbar: false,
                            area: ['100vw', '100vh'],
                            success: function (layero, home) {
                                $(layero).find('.article-tool').jsp('<div class="tool-box"><div class="layui-btn-group"><button class="layui-btn layui-btn-primary layui-btn-xs" title="关闭全屏"><i class="fa fa-compress fa-fw"></i></button></div></div>');
                                $(layero).find('.article-tool button').on('click', function () {
                                    layer.close(home);
                                });
                            }
                        });
                        break;
                    case '展开阅读':
                        $('.right').hide();
                        $('.left').css({
                            'width': '100%'
                        });
                        $(this).attr('title', '收缩阅读');
                        $(this).jsp('<i class="fa fa-compress fa-fw"></i>');
                        break;
                    case '收缩阅读':
                        $('.right').show();
                        $('.left').css('width', '');
                        $(this).attr('title', '展开阅读');
                        $(this).jsp('<i class="fa fa-arrows-h fa-fw"></i>');
                        break;
                    case '字体缩小':
                        var fontsize = Number($('.article-detail').data('fontsize'));
                        fontsize = fontsize - 1;
                        if (fontsize < 12) fontsize = 12;
                        $('.article-detail').data('fontsize', fontsize);
                        $('.article-detail-abstract,.article-detail-content').css('font-size', fontsize + 'px');
                        break;
                    case '字体还原':
                        $('.article-detail').data('fontsize', 14);
                        $('.article-detail-abstract,.article-detail-content').css('font-size', '');
                        break;
                    case '字体放大':
                        var fontsize = Number($('.article-detail').data('fontsize'));
                        fontsize = fontsize + 1;
                        if (fontsize > 20) fontsize = 20;
                        $('.article-detail').data('fontsize', fontsize);
                        $('.article-detail-abstract,.article-detail-content').css('font-size', fontsize + 'px');
                        break;
                    case '静音':
                        $(this).attr('title', '开启');
                        $(this).jsp('<i class="fa fa-volume-off fa-fw"></i>');
                        ap.volume(0, false);
                        break;
                    case '开启':
                        $(this).attr('title', '静音');
                        $(this).jsp('<i class="fa fa-volume-up fa-fw"></i>');
                        ap.volume(0.5, false);
                        break;
                    default:
                }
            });
    

            var events = {
                //分享
                share: function () {
                    layer.msg('使用的百度分享组件');
                }

            };
    
            $('*[blog-event]').on('click', function () {
                var eventName = $(this).attr('blog-event');
                events[eventName] && events[eventName].call(this);
            });
    
            $('*[blog-event="reword"]').on('mouseover', function () {
                layer.tips('一元足以感动我 ^_^', this, { tips: 1, time: 2000 });
            });
        });
    </script>
    <script>

        var href = location.href
        var tol = href.length
        var pos = href.indexOf("=")
        var id = decodeURI(href.substr(pos+1,tol-pos))

        $(function () {
            article_comment_build()
            build_right_blogType()
            build_right_blog_like()

           function article_comment_build(){
               var temp = ''
               $.getJSON("${pageContext.request.contextPath}/home/selectBlogById/?id="+id, function(res){
                   var blog = res.blog
                   var comments = res.comments
                   $("#blog_clickhit").append(blog.clickhit)
                   $("#blog_replyhit").append(blog.replyhit)
                   $("#blog_summary").append(blog.summary)
                   $("#blog_content").append(blog.content)
                   $("#blog_agreehit").append(blog.agreehit)
                   $("#blog_title").append(blog.title)
                   $("#blog-title1").append(blog.title)
                   $("#blog_releasedate").append(blog.releasedate)
                   $.each(comments,function (index,obj){
                       temp += '<li>\n' +
                           '    <div class="comment-parent">\n' +
                           '        <img src="${pageContext.request.contextPath}/res/images/sl.jpg" alt="" />\n' +
                           '    <div class="info">\n' +
                           '        <span class="username">'+obj.userip+'</span>\n' +
                           '    </div>\n' +
                           '    <div class="content">'+obj.content+'</div>\n' +
                           '    <p class="info info-footer"><span class="time">'+obj.commentdate+'</span><a href="javascript:;" class="btn-reply" data-targetname="sl">回复</a></p>\n' +
                           '    </div>\n' +
                           '    </li>'
                   })
                   $("#comment-build").append(temp)
               })
           }

            function build_right_blogType(){
                $.getJSON("${pageContext.request.contextPath}/home/blogType-list", function(res){
                    $.ajaxSettings.async = false;
                    var blogTypes = res.blogTypes;
                    var temp = ''
                    for(var i=0;i<blogTypes.length;i++){
                        temp += '<a href="${pageContext.request.contextPath}/home/articlelist.jsp?typeId='+blogTypes[i].id+'">'+blogTypes[i].typename+'</a>'
                    }
                    $("#right-blogType").append(temp).append('<div class="clear"></div>')
                });
            }

            function build_right_blog_like(){
                $.getJSON("${pageContext.request.contextPath}/home/blogList-new", function(res){
                    var blog_like = res.blogs;
                    var temp = ''
                    for(var i=0;i<3;i++){
                        var number = i+1
                        temp += '<li>\n' +
                            ' <span class="layui-badge">'+number+'</span><a href="${pageContext.request.contextPath}/home/detail.jsp?id='+blog_like[i].id+'"\n' +
                            ' title="'+blog_like[i].title+'">'+blog_like[i].title+'</a>\n' +
                            '   </li>  '
                    }
                    for(var j=3;j<blog_like.length;j++){
                        var number1 = j+1
                        temp+= '<li>\n' +
                            '<span class="layui-badge layui-bg-blue">'+number1+'</span><a href="${pageContext.request.contextPath}/home/detail.jsp?id='+blog_like[i].id+'"\n' +
                            '  title="'+blog_like[j].title+'">'+blog_like[j].title+'</a>\n' +
                            '     </li> '
                    }
                    $("#right-blog-like").append(temp)
                });
            }
        })

        var index
        var layedit
        layui.use('layedit', function(){
            layedit = layui.layedit;
            index = layedit.build('blog-content',{
                tool: ['face', 'left', 'center', 'right', 'link']
                ,height: 100
            }); //建立编辑器
        });

        $("#comment-submit").click(function(){
            layedit.sync(index)
            var content = $("#blog-content").val();
            $.ajax({
                type: "get",
                url: "${pageContext.request.contextPath}/home/commentSave",
                data: {'content':content,'blog.id':id},
                success: function(result){
                    alert("评论成功，等待审核通过!")
                    alert(id)
                    window.location.href = "${pageContext.request.contextPath}/home/detail.jsp?id="+id
                }
            })
            return false
        })

    </script>
</body>

</html>
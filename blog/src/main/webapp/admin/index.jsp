<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>后台登录-X-admin2.2</title>
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/xadmin.css">
        <script src="${pageContext.request.contextPath}/static/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
        <script>
            // 是否开启刷新记忆tab功能
            // var is_remember = false;
        </script>
    </head>
    <body class="index">
        <!-- 顶部开始 -->
        <div class="container">
            <div class="logo">
                <a href="index.jsp">加油啊！everybody！</a></div>
            <div class="left_open">
                <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
            </div>
            <ul class="layui-nav left fast-add" lay-filter="">
                <li class="layui-nav-item">
                    <a href="javascript:;">+新增</a>
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd>
                            <a onclick="xadmin.open('最大化','http://www.baidu.com','','',true)">
                                <i class="iconfont">&#xe6a2;</i>弹出最大化</a></dd>
                        <dd>
                            <a onclick="xadmin.open('弹出自动宽高','http://www.baidu.com')">
                                <i class="iconfont">&#xe6a8;</i>弹出自动宽高</a></dd>
                        <dd>
                            <a onclick="xadmin.open('弹出指定宽高','http://www.baidu.com',500,300)">
                                <i class="iconfont">&#xe6a8;</i>弹出指定宽高</a></dd>
                        <dd>
                            <a onclick="xadmin.add_tab('在tab打开','member-list.html')">
                                <i class="iconfont">&#xe6b8;</i>在tab打开</a></dd>
                        <dd>
                            <a onclick="xadmin.add_tab('在tab打开刷新','member-del.html',true)">
                                <i class="iconfont">&#xe6b8;</i>在tab打开刷新</a></dd>
                    </dl>
                </li>
            </ul>
            <ul class="layui-nav right" lay-filter="">
                <li class="layui-nav-item">
                    <a href="javascript:;">admin</a>
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd>
                            <a onclick="xadmin.open('个人信息','${pageContext.request.contextPath}/blogger/selectByUserName?userName=admin')">个人信息</a></dd>
<%--                        <dd>--%>
<%--                            <a onclick="xadmin.open('切换帐号','http://www.baidu.com')">切换帐号</a></dd>--%>
                        <dd>
                            <a href="${pageContext.request.contextPath}/blogger/logout">退出</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item to-index">
                    <a href="${pageContext.request.contextPath}" target="_blank">前台首页</a></li>
            </ul>
        </div>
        <!-- 顶部结束 -->
        <!-- 中部开始 -->
        <!-- 左侧菜单开始 -->
        <div class="left-nav">
            <div id="side-nav">
                <ul id="nav">
                	<li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="博客管理">&#xe723;</i>
                            <cite>博客管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                        	<li>
                                <a onclick="xadmin.add_tab('博客列表','${pageContext.request.contextPath}/admin/blog/list')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>博客信息管理</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('写博客','${pageContext.request.contextPath}/admin/blog/toWrite')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>写博客</cite></a>
                            </li>                      
                        </ul>
                    </li>                
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="分类管理">&#xe6fa;</i>
                            <cite>类别信息</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('博客分类','${pageContext.request.contextPath}/admin/blogType/list')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>博客分类</cite></a>
                            </li>
                        </ul>
                    </li> 
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="个人信息">&#xe6b8;</i>
                            <cite>个人信息</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('个人信息','${pageContext.request.contextPath}/blogger/selectByUserName?userName=admin')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>个人信息</cite></a>
                            </li>                           
                        </ul>
                    </li>
                   	<li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="评论管理">&#xe842;</i>
                            <cite>评论管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('评论列表','${pageContext.request.contextPath}/admin/comment/list')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>评论审核</cite></a>
                            </li>                    
<%--                            <li>--%>
<%--                                <a onclick="xadmin.add_tab('评论删除','${pageContext.request.contextPath}/admin/comment-del.jsp')">--%>
<%--                                    <i class="iconfont">&#xe6a7;</i>--%>
<%--                                    <cite>评论删除</cite></a>--%>
<%--                            </li>--%>
                            
                        </ul>
                    </li>   
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="系统应用">&#xe6b4;</i>
                            <cite>系统应用</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                         <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('友链管理','${pageContext.request.contextPath}/admin/link/list')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>友链管理</cite></a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/blogger/logout">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>安全退出</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="其它页面">&#xe6c0;</i>
                            <cite>其它页面</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('登录界面','${pageContext.request.contextPath}/login.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>登录页面</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('错误页面','${pageContext.request.contextPath}/admin/error.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>错误页面</cite></a>
                            </li>                      
                        </ul>
                    </li>
                   
                </ul>
            </div>
        </div>
        <!-- <div class="x-slide_left"></div> -->
        <!-- 左侧菜单结束 -->
        <!-- 右侧主体开始 -->
        <div class="page-content">
            <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
                <ul class="layui-tab-title">
                    <li class="home">
                        <i class="layui-icon">&#xe68e;</i>我的桌面</li></ul>
                <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
                    <dl>
                        <dd data-type="this">关闭当前</dd>
                        <dd data-type="other">关闭其它</dd>
                        <dd data-type="all">关闭全部</dd></dl>
                </div>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <iframe src='${pageContext.request.contextPath}/admin/welcome.jsp' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
                    </div>
                </div>
                <div id="tab_show"></div>
            </div>
        </div>
        <div class="page-content-bg"></div>
        <style id="theme_style"></style>
        <!-- 右侧主体结束 -->
        <!-- 中部结束 -->
        <script>//百度统计可去掉
            var _hmt = _hmt || []; (function() {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();</script>
    </body>

</html>
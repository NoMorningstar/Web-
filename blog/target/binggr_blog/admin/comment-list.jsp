<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>欢迎页面-X-admin2.2</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/xadmin.css">
        <script  src="${pageContext.request.contextPath}/static/lib/jquery-3.4.1.js"></script>
        <script src="${pageContext.request.contextPath}/static/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
<%--        <!--[if lt IE 9]>--%>
<%--          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>--%>
<%--          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>--%>
<%--        <![endif]-->--%>
    </head>
    <body>
        <div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">演示</a>
            <a>
              <cite>导航元素</cite></a>
          </span>
          <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
            <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <form class="layui-form layui-col-space5">
                                <div class="layui-inline layui-show-xs-block">
                                    <input class="layui-input"  autocomplete="off" placeholder="开始日" name="start" id="start">
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                    <input class="layui-input"  autocomplete="off" placeholder="截止日" name="end" id="end">
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                    <input type="text" name="username"  placeholder="请输入用户名" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                    <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                                </div>
                            </form>
                        </div>
                        <div class="layui-card-body layui-table-body layui-table-main">
                            <table class="layui-table layui-form">
                                <thead>
                                  <tr>
                                    <th>
                                      <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
                                    </th>
                                    <th>ID</th>
                                    <th>用户Ip</th>
                                    <th>博客标题</th>
                                    <th>评论</th>
                                    <th>评论时间</th>
                                    <th>状态</th>
                                    <th>操作</th></tr>
                                </thead>
                                <tbody>
                                  <c:forEach items="${rows}" var="row">
                                  <tr>
                                    <td>
                                      <input type="checkbox" name="id" value="1"   lay-skin="primary"> 
                                    </td>
                                    <td>${row.id}</td>
                                    <td>${row.userip}</td>
                                    <td>${row.blog.title}</td>
                                    <td>${row.content}</td>
                                    <td>${row.commentdate}</td>
                                    <td class="td-status">
                                      <c:if test="${row.state == 0}">
                                          <span class="layui-btn layui-btn-normal layui-btn-mini layui-btn-disabled" >未审核</span></td>
                                      </c:if>
                                      <c:if test="${row.state == 1}">
                                          <span class="layui-btn layui-btn-normal layui-btn-mini" >审核通过</span></td>
                                      </c:if>
                                    <td class="td-manage">
                                      <a onclick="member_stop(this,'10001')" href="javascript:;" cid="${row.id}"  state="${row.state}">
                                        <i class="layui-icon">&#xe601;</i>
                                      </a>                                    
                                      <a title="删除" id="comment_del" cid="${row.id}" style="text-decoration: none;color: black">
                                        <i class="layui-icon">&#xe640;</i>
                                      </a>
                                    </td>
                                  </tr>
                                  </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="layui-card-body ">
                            <div class="page">
                                <div>
                                  <a class="prev" href="">&lt;&lt;</a>
                                  <a class="num" href="">1</a>
                                  <span class="current">2</span>
                                  <a class="num" href="">3</a>
                                  <a class="num" href="">489</a>
                                  <a class="next" href="">&gt;&gt;</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </body>
    <script>
      layui.use(['laydate','form'], function(){
        var laydate = layui.laydate;
        var  form = layui.form;
      });

       /*用户-停用*/
      function member_stop(obj,id){
          layer.confirm('确认修改吗？',function(index){
             var id = $(obj).attr('cid')
              if($(obj).attr('state')==1){
                $.ajax({
                    type:"get",
                    url:"${pageContext.request.contextPath}/admin/comment/updateById?id="+id+"&&state=0",
                    async:false,
                    success:function (res) {
                        //发异步把用户状态进行更改
                        $(obj).attr('state',0)
                        $(obj).find('i').html('&#xe62f;');

                        $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('未审核');
                        layer.msg('未审核!',{icon: 5,time:1000});
                    }
                })
              }else{
                  $.ajax({
                      type:"get",
                      url:"${pageContext.request.contextPath}/admin/comment/updateById?id="+id+"&&state=1",
                      async:false,
                      success:function (res) {
                          $(obj).attr('state',1)
                          $(obj).find('i').html('&#xe601;');
                          $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('审核通过');
                          layer.msg('审核通过!',{icon: 5,time:1000});
                      }
                  })
              }
              
          });
      }

      $(document).on("click","#comment_del",function (){
          var id = $(this).attr("cid")
          $.ajax({
              type:"get",
              async:false,
              url:"${pageContext.request.contextPath}/admin/comment/deleteById?id="+id,
              success:function () {
                  alert("删除成功！")
                  location.reload()
              }
          })
      })

    </script>
</html>
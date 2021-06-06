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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/lib/bootstrap/bootstrap.min.css">
        <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/static/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/bootstrap/bootstrap.js"></script>
        <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
        <!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
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
                <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
            </a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <form class="layui-form layui-col-space5" action="${pageContext.request.contextPath}/admin/blogType/save" method="post">
                                <div class="layui-input-inline layui-show-xs-block">
                                    <input class="layui-input" placeholder="博客类别名称" name="typename" required></div>
                                <div class="layui-input-inline layui-show-xs-block">
                                    <input class="layui-input" placeholder="排序" name="orderno" required></div>
                                <div class="layui-input-inline layui-show-xs-block">
                                    <button class="layui-btn"  type="submit"><i class="layui-icon"></i>增加</button>
                                </div>
                            </form>
                        </div>
                        <div class="layui-card-body ">
                            <table class="layui-table layui-form">
                              <thead>
                                <tr>
                                  <th width="20">
                                    <input type="checkbox" name="" lay-skin="primary" >
                                  </th>
                                  <th width="70">ID</th>
                                  <th>博客类别名称</th>
                                  <th>排序</th>
                                  <th width="300">操作</th>                       
                              </thead>
                              <tbody class="x-cate">
                              <c:forEach items="${rows}" var="row" >
                                  <tr cate-id='1' fid='0' >
                                      <td>
                                          <input type="checkbox" name="" lay-skin="primary">
                                      </td>
                                      <td>${row.id}</td>
                                      <td>${row.typename}</td>
                                      <td>${row.orderno}</td>
                                      <td class="td-manage">
                                          <button class="layui-btn layui-btn layui-btn-xs" id="blogtype_edit" btypename="${row.typename}" borderno="${row.orderno}" bid="${row.id}"><i class="layui-icon">&#xe642;</i>编辑</button>
                                          <button class="layui-btn-danger layui-btn layui-btn-xs" id="blogtype_del" bid="${row.id}"><i class="layui-icon">&#xe640;</i>删除</button>
                                      </td>
                                  </tr>
                              </c:forEach>
                              </tbody>
                            </table>
                        </div>  
                    </div>
                </div>
            </div>
        </div>

        <%-- 博客类型修改模态框--%>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="width:400px;height:300px;position: absolute;top: 50%;left: 50%;transform: translate(-50%,-50%);">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">编辑</div>
                    <form class="layui-form"  method="post" action="${pageContext.request.contextPath}/admin/blogType/updateById" style="margin-top: 20px">
                        <div class="layui-form-item">
                            <label  class="layui-form-label" style="width:130px">博客类别名称</label>
                            <div class="layui-input-inline">
                                <input type="hidden" id="id" name="id">
                                <input type="text"  id="typename" required  class="layui-input" name="typename"  ></div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label" style="width:130px">博客类别排序</label>
                            <div class="layui-input-inline">
                                <input type="text" id="orderno" required  class="layui-input" name="orderno" ></div>
                        </div>

                        <div class="layui-form-item" style="margin-left: 110px">
                            <label  class="layui-form-label"></label>
                            <button  class="layui-btn" type="submit">修改</button>
                            <button data-dismiss="modal" class="layui-btn">关闭</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <script>
          layui.use(['form'], function(){
            form = layui.form;
            
          });

          $(document).on("click","#blogtype_edit",function (){
              $("#id").val($(this).attr("bid"));
              $("#typename").val($(this).attr("btypename"));
              $("#orderno").val($(this).attr("borderno"));
              $("#myModal").modal({
                  backdrop:"static"
              })
          })

          $(document).on("click","#blogtype_del",function (){
              var id = $(this).attr("bid")
              $.ajax({
                  type:"get",
                  async:false,
                  url:"${pageContext.request.contextPath}/admin/blogType/deleteById?id="+id,
                  success:function () {
                      alert("删除成功！")
                      location.reload()
                  }
              })
          })

        </script>
    </body>
</html>

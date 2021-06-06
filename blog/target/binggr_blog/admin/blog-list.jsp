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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/lib/layui/css/layui.css" />
        <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/static/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/bootstrap/bootstrap.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/layui/layui.js"></script>
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
            <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-header">
                            <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>                  
                        </div>
                        <div class="layui-card-body layui-table-body layui-table-main">
                            <table class="layui-table layui-form">
                                <thead>
                                  <tr>
                                    <th>
                                      <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
                                    </th>
                                    <th>ID</th>
                                    <th>标题</th>
                                    <th>摘要</th>
                                    <th>发布时间</th>
                                    <th>点击量</th>
                                    <th>评论数</th>
                                    <th>分类</th>
                                    <th>关键字</th>
                                    <th>操作</th>
                                  </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${rows}" var="row">
                                  <tr>
                                    <td>
                                      <input type="checkbox" name="id" value="1"   lay-skin="primary"> 
                                    </td>
                                    <td>${row.id}</td>
                                    <td>${row.title}</td>
                                    <td>${row.summary}</td>
                                    <td>${row.releasedate}</td>
                                    <td>${row.clickhit}</td>
                                    <td>${row.replyhit}</td>
                                    <td>${row.blogType.typename}</td>
                                    <td>${row.keyword}</td>
                                    <td class="td-manage">
                                      <a title="编辑" id="blog_edit" bid="${row.id}" style="text-decoration: none;color: black">
                                        <i class="layui-icon">&#xe642;</i>
                                      </a>
                                      <a title="删除" id="blog_del" bid="${row.id}" style="text-decoration: none;color: black">
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

        <%-- 博客修改模态框--%>
        <div class="modal fade " id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document"  style="width:1000px;height:600px;position: absolute;top: 50%;left: 50%;transform: translate(-50%,-50%);">
                <div class="modal-content">
                    <div class="modal-header">编辑</div>
                    <form class="layui-form"  method="post" action="${pageContext.request.contextPath}/admin/blog/updateById" style="margin-top: 20px">
                        <input type="hidden" name="id" id="id">
                        <div class="layui-form-item">
                            <label class="layui-form-label" style="width: 100px"> <span class="x-red">*</span>博客标题</label>
                            <div class="layui-input-inline">
                                <input type="text" id="title" name="title" required="" lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label  class="layui-form-label" style="width: 100px"> <span class="x-red">*</span>博客分类</label>
                            <div class="layui-input-inline">
                                <select name="blogType.id" class="valid" id="typeid">
                                    <c:forEach items="${blogTypes}" var="blogType">
                                        <option  value="${blogType.id}">${blogType.typename}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label  class="layui-form-label" style="width: 100px"> <span class="x-red">*</span>博客摘要</label>
                            <div class="layui-input-inline" style="width: 500px;" >
                                <textarea name="summary" id="summary" required lay-verify="required" placeholder="请输入" class="layui-textarea"></textarea>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label  class="layui-form-label" style="width: 100px"> <span class="x-red">*</span>博客关键字</label>
                            <div class="layui-input-inline" style="width: 500px;">
                                <input type="text" name="keyword" id="keyword" required lay-verify="required" placeholder="请输入" class="layui-input"/>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label  class="layui-form-label" style="width: 100px"> <span class="x-red">*</span>博客图片</label>
                            <button type="button" class="layui-btn" id="test1">
                                <i class="layui-icon">&#xe67c;</i>上传图片
                            </button>
                        </div>
                        <div class="layui-form-item" id="photoview">
                            <label  class="layui-form-label" style="width: 100px"> <span class="x-red">*</span>图片显示</label>

                        </div>
                        <div class="layui-form-item" style="width: 90%;margin-left: 40px;">
                            <h2>博客 <small>主体内容</small></h2>
                            <textarea  id="editor" name="content" rows="5" style="display: none;"></textarea>
                        </div>
                        <div class="layui-form-item" style="margin-left: 110px">
                            <label  class="layui-form-label"></label>
                            <button id="submit" class="layui-btn" type="submit">修改</button>
                            <button data-dismiss="modal" class="layui-btn">关闭</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>

    <script src="${pageContext.request.contextPath}/static/handyeditor/HandyEditor.min.js"></script>
    <script>
        layui.use(['laydate','form'], function(){
        var laydate = layui.laydate;
        var  form = layui.form;
      });

    </script>

    <script>
        var he = HE.getEditor('editor',{
            autoHeight : true,
            autoFloat : false,
            topOffset : 0,
            uploadPhoto : true,
            uploadPhotoHandler : '${pageContext.request.contextPath}/file/up',
            uploadPhotoSize : 10000,
            uploadPhotoType : 'gif,png,jpg,jpeg',
            uploadPhotoSizeError : '不能上传大于10000KB的图片',
            uploadPhotoTypeError : '只能上传gif,png,jpg,jpeg格式的图片',
            lang : 'zh-jian',
            skin : 'HandyEditor',
            externalSkin : '',
            item : ['bold','italic','strike','underline','fontSize','fontName','paragraph','color','backColor','|','center','left','right','full','indent','outdent','|','link','unlink','textBlock','code','selectAll','removeFormat','trash','|','image','expression','subscript','superscript','horizontal','orderedList','unorderedList','|','undo','redo','|','html','|','about']
        });
        $(document).on("click","#blog_edit",function (){
            $("#img-blog").remove();
            var id = ($(this).attr("bid"));
            $.ajax({
                type:"get",
                url:"${pageContext.request.contextPath}/admin/blog/selectById?id="+id,
                async:false,
                success:function (res) {
                    var blog = res.blog;$("#id").val(blog.id);
                    $("#id").empty();
                    $("#title").empty();
                    $("#summary").empty();
                    $("#keyword").empty();
                    $("#editor").empty();
                    $("#id").val(blog.id);
                    $("#title").val(blog.title);
                    $("#summary").val(blog.summary);
                    $("#typeid").val(blog.blogType.id).prop('checked',true);
                    $("#keyword").val(blog.keyword);
                    $("#photoview").append('<img src="'+blog.image+'" style="width: 100px" id="img-blog"/>')
                    $("#photoview").append('<input type="hidden" name="image" value="'+blog.image+'" id="img-input"/>')
                    $("#editor").val(blog.content);
                    layui.form.render();
                }
            })
            he.show();
            $("#myModal").modal({
                backdrop:"static"
            })
            return false;
        })
    </script>
    <script>
        layui.use('upload', function(){
            var upload = layui.upload;

            //执行实例
            var uploadInst = upload.render({
                elem: '#test1' //绑定元素
                ,url: '${pageContext.request.contextPath}/file/up1' //上传接口
                ,done: function(res){
                    $("#img-blog").remove();
                    $("#img-input").remove();
                    $("#photoview").append('<img style="width: 100px;" name="image" id="img-blog"src="'+res.addr+'"/>')
                    $("#photoview").append('<input type="hidden" name="image" value="'+res.addr+'" id="img-input"/>')
                }
            });

        });

        $(document).on("click","#blog_del",function (){
            var id = $(this).attr("bid")
            $.ajax({
                type:"get",
                async:false,
                url:"${pageContext.request.contextPath}/admin/blog/deleteById?id="+id,
                success:function () {
                    alert("删除成功！")
                    location.reload()
                }
            })
        })
    </script>
    <script>
        $("#submit").click(function(){
            he.sync();
        });
    </script>

</html>
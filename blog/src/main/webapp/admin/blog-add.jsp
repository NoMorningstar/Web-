<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
    	<meta charset="UTF-8">
        <title>欢迎页面-X-admin2.2</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/font.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/xadmin.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/lib/layui/css/layui.css" />
        <script  src="${pageContext.request.contextPath}/static/lib/jquery-3.4.1.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/layui/layui.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/xadmin.js"></script>
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
        <div class="layui-fluid" style="margin-top: 20px;">	
        	<form style="background-color: white;padding-top: 20px;" class="layui-form" action="${pageContext.request.contextPath}/admin/blog/save">
	            <div class="layui-form-item">
	                <label class="layui-form-label"> <span class="x-red">*</span>博客标题</label>
	                <div class="layui-input-inline">
	                    <input type="text" id="title" name="title" required="" lay-verify="required" autocomplete="off" class="layui-input">
	                </div>
	            </div>
	           	<div class="layui-form-item">
	                <label  class="layui-form-label"> <span class="x-red">*</span>博客分类</label>
	                <div class="layui-input-inline">
                        <select name="blogType.id" class="valid" id="select-option">
                            <c:forEach items="${blogTypes}" var="blogType">
                                <option  value="${blogType.id}">${blogType.typename}</option>
                            </c:forEach>

                        </select>
                    </div>  
	            </div>
	            <div class="layui-form-item">
	                <label  class="layui-form-label"> <span class="x-red">*</span>博客摘要</label>
	                <div class="layui-input-inline" style="width: 500px;">
	                   <textarea name="summary" required lay-verify="required" placeholder="请输入" class="layui-textarea"></textarea>
	                </div>  
	            </div>
                <div class="layui-form-item">
                    <label  class="layui-form-label"> <span class="x-red">*</span>博客关键字</label>
                    <div class="layui-input-inline" style="width: 500px;">
                        <input type="text" name="keyword" required lay-verify="required" placeholder="请输入" class="layui-input"/>
                    </div>
                </div>
	            <div class="layui-form-item">
	            	<label  class="layui-form-label"> <span class="x-red">*</span>博客图片</label>
		                <button type="button" class="layui-btn" id="test1">
	  					<i class="layui-icon">&#xe67c;</i>上传图片
						</button>		
	            </div>
	            <div class="layui-form-item" id="photoview">
	            	<label  class="layui-form-label"> <span class="x-red">*</span>图片显示</label>
	            </div>	          
	            <div class="layui-form-item" style="width: 90%;margin-left: 40px;">
                   	 <h2>博客 <small>主体内容</small></h2>
   					 <textarea  id="editor" name="content" rows="5" style="display: none;"></textarea>
               </div>    
                <div class="layui-form-item" style="margin-left: 40px;padding-bottom: 20px;padding-left: 50px;">
	            	<button type="submit" class="layui-btn" id="submit"><i class="layui-icon">&#xe605;</i>提交</button>
	            </div>
        	</form>  
        </div> 
    </body>
    <script src="${pageContext.request.contextPath}/static/handyeditor/HandyEditor.min.js"></script>
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
    </script> 
    <script>
        layui.use(['form', 'layer'],
            function() {
                $ = layui.jquery;
                var form = layui.form,
                layer = layui.layer;
            });
    </script>
    <script>
        layui.use('upload', function(){
            var upload = layui.upload;

            //执行实例
            var uploadInst = upload.render({
                elem: '#test1' //绑定元素
                ,url: '${pageContext.request.contextPath}/file/up1' //上传接口
                ,done: function(res){
                    $("#img-blog").remove()
                    $("#image-input").remove()
                    $("#photoview").append('<img style="width: 100px;height: 100px" src="'+res.addr+'" id="img-blog"/>')
                    $("#photoview").append('<input type="hidden" name="image" value="'+res.addr+'" id="img-input"/>')
                }
            });

        });
    </script>
    <script>
        $("#submit").click(function(){
            he.sync();
        });
    </script>
</html>
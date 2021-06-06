<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<table width="1004" border="0" align="center" cellpadding="15"
	cellspacing="0" background="images/nzcms/end_bg.gif" bgcolor="#FFFFFF">
	<tr>
		<td align="center" valign="top" class="end"><br />
			<a
						href="https://baike.baidu.com/item/%E6%99%BA%E8%83%BD%E5%8C%BB%E7%96%97/650745?fr=aladdin" target="_blank"><font
							color="#FF6600">【智能医疗】</font> </a> <br />
			<table border="0" cellpadding="3" cellspacing="0">
				<tr>
					<td align="center">&nbsp;</td>
					<td width="100" align="center"><a
						href="<%=basePath%>admin/index.jsp" target="_blank"><font
							color="#FF6600">管理员入口</font> </a><br /></td>
				</tr>
			</table></td>
	</tr>
</table>


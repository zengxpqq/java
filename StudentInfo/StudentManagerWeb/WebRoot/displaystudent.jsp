<%@ page language="java" import="java.util.*,com.dw.model.Student"
	pageEncoding="utf-8"%>
<%@ page import="com.dw.dao.impl.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="cc" %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>显示用户信息</title>

     <style type="text/css">
       input[type="text"]{
              height: auto;
	          margin-bottom: 15px;
	          padding: 3px 9px;
            }
     </style>
	</head>

	<body>

        <form action="searchById" method="post">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        学号：<input type="text" name="searchId" placeholder="学生学号...">
         <i class="icon-search"></i>&nbsp;<button type="submit" class="btn btn-inverse"> 查找</button>
        </form>
		<table  class="table table-hover table-condensed">
		    <tr>
		    	<td align="center">
					<strong>序号</strong>
				</td>
				<td align="center">
					<strong>学号</strong>
				</td>
				<td align="center">
					<strong>姓名</strong>
				</td>
				<td align="center">
					<strong>性别</strong>
				</td>
				<td align="center">
					<strong>年龄</strong>
				</td>
				<td align="center">
					<strong>电话</strong>
				</td>
				<td align="center">
					<strong>学院</strong>
				</td>
				<td align="center">
					<strong>地址</strong>
				</td>
				<td align="center" >
					<strong>执行操作</strong>
				</td>
			</tr>
			<c:forEach items="${list}" var="student" varStatus="num">
				<tr>
					<td>
						<c:out value="${num.count} " />
					</td>
					<td>
						<c:out value="${student.stId}" />
					</td>
					<td>
						<c:out value="${student.stName}" />
					</td>
					<td>
						<c:out value="${student.stSex}" />
					</td>
					<td>
						<c:out value="${student.stAge}" />
					</td>
					<td>
						<c:out value="${student.stTel}" />
					</td>
					<td>
						<c:out value="${student.stDept}" />
					</td>
					<td>
						<c:out value="${student.stAddress}" />
					</td>
					<td>
						<a href="stdelete?id=${student.stId}" class="btn btn-danger">删除</a>
						<a href="pre?method=updateStudent&id=${student.stId}" class="btn btn-primary">更新</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		
		<p>
	<cc:if test="${param.cur == 1}">
		<a>首页</a>
		<a>上一页</a>
	</cc:if>
	
	<cc:if test="${param.cur != 1}">
		<a href="showAllStudents?cur=1">首页</a>
		<a href="showAllStudents?cur=${param.cur - 1}">上一页</a>
	</cc:if>
	
	<cc:if test="${param.cur == requestScope.totalPage}">
		<a>下一页</a>
		<a>尾页</a>
	</cc:if>
	
	<cc:if test="${param.cur != requestScope.totalPage}">
		<a href="showAllStudents?cur=${param.cur + 1}">下一页</a>
		<a href="showAllStudents?cur=${requestScope.totalPage}">尾页</a>
	</cc:if>
		当前第${param.cur}页       总共${requestScope.totalPage}页
	</p>
	
		<hr>
		<a href="main.jsp" class="btn btn-success">返回主菜单</a>
		<hr>


	</body>
</html>

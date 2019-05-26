<%--
  Created by IntelliJ IDEA.
  User: Alexander
  Date: 2019/4/28
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="java.util.*,com.vo.*,com.db.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("gbk");
    StudentsDB6 db6 = new StudentsDB6();
    String studentId = request.getParameter("studentId");
    int flag=0;
    flag=db6.deleteStudents(studentId);
    if(flag!=0)
    {
%>
<h2>成功删除学号为：<%=studentId%>的学生记录</h2>
<%} else { %>
<h2>删除不成功！<a href="deleteStudents.jsp">返回 </a></h2>
<%} %>
<a href="showStudents.jsp" style="text-align: center">返回主页</a>
</body>
</html>

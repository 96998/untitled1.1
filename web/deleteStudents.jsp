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
<h2>�ɹ�ɾ��ѧ��Ϊ��<%=studentId%>��ѧ����¼</h2>
<%} else { %>
<h2>ɾ�����ɹ���<a href="deleteStudents.jsp">���� </a></h2>
<%} %>
<a href="showStudents.jsp" style="text-align: center">������ҳ</a>
</body>
</html>

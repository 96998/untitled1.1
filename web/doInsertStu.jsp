<%@ page language="java" import="java.util.*" pageEncoding="gbk" %>
<%@ page import="com.vo.Students,com.db.StudentsDB6" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>doInsertStu.jsp</title>
</head>

<body>
<%
    request.setCharacterEncoding("gbk");
    String studentId = request.getParameter("studentId");
    String studentName = request.getParameter("studentName");
    String studentPwd = request.getParameter("studentPwd");
    String sex = request.getParameter("sex");
    int classId = Integer.parseInt(request.getParameter("classId"));
    Students stu = new Students(studentId, studentName, studentPwd, sex, classId);
    // System.out.println(stu);
    int flag = 0;
    StudentsDB6 db6 = new StudentsDB6();
    flag = db6.insertStudents(stu);
    if (flag == 1) {
%>
<h2>�ɹ���������Ϊ��<%=stu.getStudentName()%>��ѧ����¼</h2>
<%} else { %>
<h2>����������ɹ���<a href="insertStudents.jsp">���� </a></h2>
<%} %>
<a href="showStudents.jsp" style="text-align: center">������ҳ</a>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Alexander
  Date: 2019/4/28
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="java.util.*,com.vo.*,com.db.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="2" align="center" align="70">
    <caption>��ʾ����������ѧ����Ϣ</caption>
    <tr>
        <th>ѧ��</th>
        <th>����</th>
        <th>����</th>
        <th>�Ա�</th>
        <th>�༶��</th>
        <th>�޸�</th>
        <th>ɾ��</th>
    </tr>
    <%
        request.setCharacterEncoding("gbk");
        String str = request.getParameter("context");
//        System.out.println(str);
//        out.print(str);
        List<Students> all = new ArrayList<Students>();
        StudentsDB6 db6 = new StudentsDB6();
        all = db6.queryStudents(str);
//        out.print(all.size());
        if (all.size() != 0) {
            for (int i = 0; i < all.size(); i++) {
                Students stu = (Students) all.get(i);
    %>
    <tr>
        <td><%=stu.getStudentId() %>
        </td>
        <td><%=stu.getStudentName() %>
        </td>
        <td><%=stu.getStudentPwd() %>
        </td>
        <td><%=stu.getSex() %>
        </td>
        <td><%=stu.getClassId() %>
        </td>
        <td><a href="updateStudents.jsp?studentId=<%=stu.getStudentId() %>">�޸�</a></td>
        <td><a href="deleteStudents.jsp?studentId=<%=stu.getStudentId() %>">ɾ��</a></td>
    </tr>
    <%
            } //end for
        }//end if
    %>
</table>
<a href="showStudents.jsp" style="text-align: center">����</a>
</body>
</html>

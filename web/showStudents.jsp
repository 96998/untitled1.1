<%@ page language="java" pageEncoding="gbk" %>
<%@ page import="java.util.*,com.vo.*,com.db.*" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>��ʾ����ѧ����Ϣ</title>
</head>

<body>

<table border="2" align="center" align="70">
    <caption>��ʾ����ѧ����Ϣ</caption>
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
        List<Students> all = new ArrayList<Students>();
        StudentsDB6 db6 = new StudentsDB6();
        all = db6.getAllStudents();
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
<p style="text-align: center "><a href="insertStudents.jsp">����</a></p>
<form action="queryStudents.jsp" method="post">
    �������ѯ����:<input type="text" name="context">;
    <input type="submit" value="��ѯ">
</form>
</body>
</html>

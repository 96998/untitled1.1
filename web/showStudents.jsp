<%@ page language="java" pageEncoding="gbk" %>
<%@ page import="java.util.*,com.vo.*,com.db.*" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>显示所有学生信息</title>
</head>

<body>

<table border="2" align="center" align="70">
    <caption>显示所有学生信息</caption>
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>密码</th>
        <th>性别</th>
        <th>班级号</th>
        <th>修改</th>
        <th>删除</th>
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
        <td><a href="updateStudents.jsp?studentId=<%=stu.getStudentId() %>">修改</a></td>
        <td><a href="deleteStudents.jsp?studentId=<%=stu.getStudentId() %>">删除</a></td>
    </tr>
    <%
            } //end for
        }//end if
    %>
</table>
<p style="text-align: center "><a href="insertStudents.jsp">插入</a></p>
<form action="queryStudents.jsp" method="post">
    请输入查询内容:<input type="text" name="context">;
    <input type="submit" value="查询">
</form>
</body>
</html>

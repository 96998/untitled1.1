<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="gbk" %>
<%@ page import="com.db.ClassesDB,com.vo.Classes" %>
<html>
<head>
    <title>����һ��ѧ����¼</title>
</head>

<body>
<form action="doInsertStu.jsp" method="post">
    <table border="2" align="center" width="70%">
        <caption>����һ��ѧ����¼</caption>
        <tr>
            <th>ѧ�ţ�</th>
            <td><input type="text" name="studentId"/></td>
        </tr>
        <tr>
            <th>������</th>
            <td><input type="text" name="studentName"/></td>
        </tr>
        <tr>
            <th>���룺</th>
            <td><input type="password" name="studentPwd"/></td>
        </tr>
        <tr>
            <th>�Ա�:</th>
            <td>
                <input type="radio" name="sex" value="��"/>��
                <input type="radio" name="sex" value="Ů"/>Ů
            </td>
        </tr>
        <tr>
            <th>�༶:</th>
            <td>

                <select name="classId">
                    <option>=��ѡ��=</option>
                    <option>1711</option>
                    <option selected>1712</option>
                    <option>1713</option>
                    <option>1714</option>
                    <%--         <%--%>
                    <%--		  ClassesDB cdb=new ClassesDB();--%>
                    <%--		  List<Classes> all=cdb.getAllClasses();--%>
                    <%--		  for(int i=0;i<all.size();i++){--%>
                    <%--		     Classes cla=(Classes)all.get(i);--%>
                    <%--         --%>
                    <%--        %>--%>
                    <%--         <option value="<%=cla.getClassId()%>"><%=cla.getClassName()%></option>--%>
                    <%--         <%} %>--%>
                </select>
            </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="�ύ"/></td>
        </tr>
    </table>
</form>
</body>
</html>

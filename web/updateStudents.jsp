<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ page import="java.util.*,com.vo.*,com.db.StudentsDB6,com.db.ClassesDB" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>ѧ����Ϣ�޸�ҳ</title>
</head>
<body>
<%
  String studentId=request.getParameter("studentId");
  StudentsDB6 db6=new StudentsDB6();
  Students stu=db6.getStuById(studentId);
 %>
<form action="doUpdateStu.jsp" method="post">
<table border="2" width="70%" algin="center">
<caption>ѧ����Ϣ�޸�ҳ</caption>
<tr>
      <th>ѧ�ţ�</th>
      <td><%=stu.getStudentId() %>
      <input type="hidden" name="studentId" value="<%=stu.getStudentId() %>"/></td>
    </tr>
    
    <tr>
      <th>������</th><td><input type="text" name="studentName" value="<%=stu.getStudentName() %>"/></td>
    </tr>
    <tr>
      <th>���룺</th><td><input type="password" name="studentPwd" value="<%=stu.getStudentPwd()%>"/></td>
    </tr>
    <tr>
      <th>�Ա�:</th>
      <td>
         <input type="radio" name="sex" value="��" checked/>��
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
    <td><input type="submit" value="ȷ���޸�"/></td>
    </tr>
</table>
</form>
</body>
</html>
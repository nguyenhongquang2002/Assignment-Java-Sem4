<%@ page import="com.example.ASM.entity.Student" %><%
    Student student =(Student)request.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-container">
    <div class="w3-panel w3-blue">
        <h2 style="text-shadow:1px 1px 0 #444">Register success</h2>
    </div>
    <div>Username: <%=student.getUsername()%> </div>
    <div>FullName: <%=student.getFullName()%> </div>
    <div>Email: <%=student.getEmail()%></div>
    <div>Phone: <%=student.getPhone()%></div>
    <div>Birthday: <%=student.getBirthday()%> </div>
</div>
</body>
</html>

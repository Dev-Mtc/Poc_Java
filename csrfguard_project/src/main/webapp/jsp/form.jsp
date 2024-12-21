<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>CSRFGuard Form</title>
</head>
<body>
    <form action="myServlet" method="post">
        <input type="text" name="name" placeholder="Enter your name" required />
        <input type="hidden" name="OWASP_CSRFTOKEN" value="<%= session.getAttribute("OWASP_CSRFTOKEN") %>" />
        <button type="submit">Submit</button>
    </form>
</body>
</html>

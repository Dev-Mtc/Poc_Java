<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="https://owasp.org/www-project-csrfguard/Owasp.CsrfGuard.tld" prefix="csrf" %>
<%-- <%@ taglib uri="http://www.owasp.org/index.php/Category:OWASP_CSRFGuard_Project/Owasp.CsrfGuard.tld" prefix="csrf" %> --%>

<!DOCTYPE html>
<html>
    <title>CSRFGuard Test</title>
</head>
<body>
	<h1>Formulaire Protégé par CSRFGuard</h1>
    <csrf:form method="POST" action="processForm">
        <label for="username">Nom d'utilisateur :</label>
        <input type="text" id="username" name="username" required>
        <br>
        <label for="email">Email :</label>
        <input type="email" id="email" name="email" required>
        <br>
        <button type="submit">Envoyer</button>
    </csrf:form>
</body>
</html>

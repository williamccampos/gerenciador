<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List, br.com.piloto.gerenciador.servlet.Empresa"%>
<%@page import="java.util.List, br.com.piloto.gerenciador.servlet.RemoveEmpresaServlet"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE hmtl>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Empresas Cadastradas</title>
</head>
<body>
	
	<c:if test="${not empty empresa}">
		Empresa ${empresa} cadastrada com sucesso!<br><br>
	</c:if>
	
    Lista de empresas:

    <ul>
        <c:forEach items="${empresas}" var="empresa">
            <li>
                ${empresa.nome } - <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/> 
                <a href="/gerenciador/removeEmpresa?id=${empresa.id}">remove</a>
            </li>
        </c:forEach>
    </ul>

</body>
</html>
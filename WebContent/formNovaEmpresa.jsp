<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Empresas</title>
</head>
<body>

	<form action="${linkServletNovaEmpresa}" method="post">

		<p>Nome Empresa: <input type="text" name="nome" /></p>
		Data Abertura: <input type="text" name="data" /> <button type="submit">Enviar</button>
		
	</form>
</body>
</html>
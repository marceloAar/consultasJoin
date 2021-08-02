<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Paises</title>
</head>
<body>

<h1>Lista de Paises :</h1><hr>

<table border=1>
    <thead>
        <tr>
            <th>Nº</th>
            <th>Name</th>
            <th>Continente</th>
            <th>Region</th>
            <th>Superficie</th>
            <th>Poblacion</th>  
                  
        </tr>
        
    </thead>
    <tbody>
        <c:forEach items="${paises}" var="pais">
        <tr>
            <td><c:out value="${pais.id}"/></td>
            <td><c:out value="${pais.name}"/></td>
            <td><c:out value="${pais.continent}"/></td>
            <td><c:out value="${pais.region}"/></td>
            <td><c:out value="${pais.surface_area}"/></td>
            <td><c:out value="${pais.population}"/></td>       
            
            
        </tr>
        </c:forEach>       
    </tbody>
</table>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edição de Usuário</title>
</head>
<body>

<%@ page import="com.projeto.dao.UsuarioDao, com.projeto.bean.*" %>

<%
	int id = Integer.valueOf(request. getParameter("id"));
	Usuario usuario = UsuarioDao.buscarUsuario(id);
%>


<h1>Edição do Usuário</h1>

 <form action="editusuario.jsp" method="post">
 	<input type="hidden" name="id" value="<%=usuario.getId()%>"/>
 	<table>
 		<tr>
 			<td>Nome: </td>
 			<td><input type="text" name="nome" value="<%=usuario.getNome()%>"/></td>
 		</tr>
 		<tr>
 			<td>Email:  </td>
 			<td><input type="email" name="email" value="<%=usuario.getEmail()%>"/></td>
 		</tr>
 		<tr>
 			<td>Password: </td>
 			<td><input type="password" name="password" value="<%=usuario.getPassword()%>"/></td>
 		</tr>
 		<tr>
 			<td>Sexo: </td>
 			<td><input type="radio" name="Sexo" value="masculino"/>Masculino
 				<input type="radio" name="Sexo" value="feminino"/>Feminino
 			</td>
 		</tr>
 		<tr>
 			<td>País: </td>
 			<td>
 				<select name="pais">
 					<option>Brasil</option>
 					<option>EUA</option>
 					<option>Portugal</option>
 					<option>Canada</option>
 					<option>Outro</option>
 				</select>
 			</td>
 		</tr>
 		<tr>
 			<td><input type="submit" value="Salvar"/></td>
 		</tr>
 		
 	</table>
 
 </form>
</body>
</html>
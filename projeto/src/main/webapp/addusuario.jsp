<%@ page import="com.projeto.dao.UsuarioDao" %>
<jsp:useBean id="u" class="com.projeto.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
	int i = UsuarioDao.save(u);
	
	if (i > 0){
		response.sendRedirect("addUsuario-success.jsp");
	
	}else{
		response.sendRedirect("addusuario-error.jsp");
	}
%>
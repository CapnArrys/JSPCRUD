<%@ page import="com.projeto.dao.UsuarioDao" %>
<jsp:useBean id="u" class="com.projeto.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<% 
int i = UsuarioDao.updateUsuario(u);
response.sendRedirect("viewusuarios.jsp");
%>
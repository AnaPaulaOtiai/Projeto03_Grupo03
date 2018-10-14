<%-- 
    Document   : removerv
    Created on : 14/10/2018, 18:40:46
    Author     : Ana
--%>

<%@page import="br.com.fatecpg.web.Cadastroveiculos"%>
<%@page import="br.com.fatecpg.web.Mv"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover - Cadastroveiculos</title>
    </head>
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%Cadastroveiculos c = Mv.getCadastroveiculos().get(i);%>
    <body>
        <h1>Cada Alteração Cadastro de Veiculos</h1>
        <h2>Remover</h2>
      <%
      if(request.getParameter("removerCadastroveiculos")!=null){
          Mv.getCadastroveiculos().remove(i);
          response.sendRedirect("home.jsp");
      }
      %>
        <form>
            Índice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Placa:<%=c.getPlaca()%>"/><br/>
            Marca:<%=c.getMarca()%>"/><br/>
            Modelo:<%=c.getModelo()%>"/><br/>
            Cor:<%=c.getCor()%>"/><br/>
            <br/><input type="submit" name="removerCadastroveiculos" value="Remover"/>
        </form>
    </body>
</html>

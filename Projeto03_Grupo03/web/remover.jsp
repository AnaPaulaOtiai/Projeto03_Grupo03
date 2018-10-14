<%-- 
    Document   : remover
    Created on : 14/10/2018, 14:59:09
    Author     : Ana
--%>

<%@page import="br.com.fatecpg.web.Cadastropessoas"%>
<%@page import="br.com.fatecpg.web.Mp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - CadastroPessoas</title>
    </head>
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%Cadastropessoas c = Mp.getCadastroPessoas().get(i);%>
    <body>
        <h1>Cada Alteração Cadastro de Pessoas</h1>
        <h2>Remover</h2>
      <%
      if(request.getParameter("removerCadastroPessoas")!=null){
          Mp.getCadastroPessoas().remove(i);
          response.sendRedirect("home.jsp");
      }
      %>
        <form>
            Índice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome:<%=c.getNome()%>"/><br/>
            CPF:<%=c.getCPF()%>"/><br/>
            E-mail:<%=c.getEmail()%>"/><br/>
            Telefone:<%=c.getTelefone()%>"/><br/>
            <br/><input type="submit" name="removerCadastroPessoas" value="Remover"/>
        </form>
    </body>
</html>


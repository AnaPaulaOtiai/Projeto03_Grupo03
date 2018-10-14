<%-- 
    Document   : removerE
    Created on : 14/10/2018, 17:41:47
    Author     : Ana
--%>

<%@page import="br.com.fatecpg.web.CadastroEmpresa"%>
<%@page import="br.com.fatecpg.web.Me"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover - CadastroEmpresa</title>
    </head>
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%CadastroEmpresa c = Me.getCadastroempresa().get(i);%>
    <body>
        <h1>Cada Alteração Cadastro de Empresa</h1>
        <h2>Remover</h2>
      <%
      if(request.getParameter("removerCadastroEmpresa")!=null){
          Me.getCadastroempresa().remove(i);
          response.sendRedirect("home.jsp");
      }
      %>
        <form>
            Índice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
             Nome:<%=c.getNome()%>"/><br/>
             Razão Social<%=c.getRazãoSocial()%><br/>
             CNPJ:<%=c.getCNPJ()%><br/>
             WebSite:<%=c.getWebSite()%><br/>
             Telefone:<%=c.getTelefone()%><br/>
            <br/><input type="submit" name="removerCadastroEmpresa" value="Remover"/>
        </form>
    </body>
</html>
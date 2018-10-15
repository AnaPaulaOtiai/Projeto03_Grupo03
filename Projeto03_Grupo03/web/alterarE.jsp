<%-- 
    Document   : alterarE
    Created on : 14/10/2018, 23:01:01
    Author     : Ana
--%>

<%@page import="br.com.fatecpg.web.CadastroEmpresa"%>
<%@page import="br.com.fatecpg.web.Me"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - CadastroEmpresa</title>
    </head>
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%CadastroEmpresa c = Me.getCadastroempresa().get(i);%>
    <body>
        <h1>Alteração de Cadastro de Empresa</h1>
     
      <%
      if(request.getParameter("alterarCadastroempresa")!=null){
          c.setNome(request.getParameter("Nome"));
          c.setRazãoSocial(request.getParameter("RazãoSocial"));
          c.setCNPJ(request.getParameter("CNPJ"));
          c.setWebSite(request.getParameter("WebSite"));
          c.setTelefone(request.getParameter("Telefone"));
          Me.getCadastroempresa().set(i, c);
          response.sendRedirect("home.jsp");
      }
      %>
        <form>
            Índice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome:<br/><input type="text" name="Nome" value="<%=c.getNome()%>"/><br/>
            Razão Social:<br/><input type="text" name="RazãoSocial" value="<%=c.getRazãoSocial()%>"/><br/>
            CNPJ:<br/><input type="text" name="CNPJ" value="<%=c.getCNPJ()%>"/><br/>
            WebSite:<br/><input type="text" name="WebSite" value="<%=c.getWebSite()%>"/><br/>
            Telefone:<br/><input type="text" name="Telefone" value="<%=c.getTelefone()%>"/><br/>
            <br/><input type="submit" name="alterarCadastroempresa" value="alterar"/>
        </form>
    </body>
</html>

<%-- 
    Document   : alterarE
    Created on : 14/10/2018, 23:01:01
    Author     : Ana
--%>
<%@include file="WEB-INF/jspf/menu.jspf"%>
<%@page import="br.com.fatecpg.web.CadastroEmpresa"%>
<%@page import="br.com.fatecpg.web.Me"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/navbar.css">
        <link rel="stylesheet" type="text/css" href="css/estilo_1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - CadastroEmpresa</title>
        <style>
            body {
        background-image: url("image/FreeBackground1.jpg");
        }
        </style>
    </head>
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%CadastroEmpresa c = Me.getCadastroempresa().get(i);%>
    <body>
        <header>
     
            
        </header>
        <h1>Alteração de Cadastro de Empresa</h1>
     
      <%
      if(request.getParameter("alterarCadastroempresa")!=null){
          c.setNome(request.getParameter("Nome"));
          c.setRazãoSocial(request.getParameter("RazãoSocial"));
          c.setCNPJ(request.getParameter("CNPJ"));
          c.setWebSite(request.getParameter("WebSite"));
          c.setTelefone(request.getParameter("Telefone"));
          Me.getCadastroempresa().set(i, c);
          response.sendRedirect("Mcadastroempresas.jsp");
      }
      %>
        <form>
           
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome:<br/><input type="text" name="Nome" value="<%=c.getNome()%>"/></h1><br/>
            Razão Social:<br/><input type="text" name="RazãoSocial" value="<%=c.getRazãoSocial()%>"/></h1><br/>
            CNPJ:<br/><input type="text" name="CNPJ" value="<%=c.getCNPJ()%>"/></h1><br/>
            WebSite:<br/><input type="text" name="WebSite" value="<%=c.getWebSite()%>"/></h1><br/>
            Telefone:<br/><input type="text" name="Telefone" value="<%=c.getTelefone()%>"/></h1><br/>
            <br/><input class="btr" type="submit" name="alterarCadastroempresa" value="Alterar"/>
        </form>
                    <div class="footer">
  <p>DIREITOS AUTORAIS INTEGRANTES GRUPO 3</p>
</div>
    </body>
</html>

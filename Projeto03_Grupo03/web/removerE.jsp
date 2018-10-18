<%-- 
    Document   : removerE
    Created on : 14/10/2018, 17:41:47
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
        <title>Remover Cadastro de Empresa</title>
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
        <h1>Remover Cadastro de Empresa</h1>
        
      <%
      if(request.getParameter("removerCadastroEmpresa")!=null){
          Me.getCadastroempresa().remove(i);
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
            <br/><input type="submit" name="removerCadastroEmpresa" value="Remover"/>
        </form>
                    <div class="footer">
  <p>DIREITOS AUTORAIS INTEGRANTES GRUPO 3</p>
</div>
    </body>
</html>
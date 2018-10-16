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
                  <div class="container">  
                <a href="home.jsp"><h1 class="logo">Projeto03_Grupo03</h1></a>
            <nav>
        <ul> 
        <li><a href="Mcadastropessoas.jsp">CADASTRO DE PESSOAS</a></li>
        <li><a href="Mcadastroempresas.jsp">CADASTRO DE EMPRESAS</a></li>
        <li><a href="Mcadastroveiculos.jsp">MANUTENÇÃO CADASTRO DE VEICULOS</a></li>
        </ul>
                </nav>
        </div>
            
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
          response.sendRedirect("home.jsp");
      }
      %>
        <form>
            Índice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            <h1>Nome:<br/><input type="text" name="Nome" value="<%=c.getNome()%>"/></h1><br/>
            <h1>Razão Social:<br/><input type="text" name="RazãoSocial" value="<%=c.getRazãoSocial()%>"/></h1><br/>
            <h1>CNPJ:<br/><input type="text" name="CNPJ" value="<%=c.getCNPJ()%>"/></h1><br/>
            <h1>WebSite:<br/><input type="text" name="WebSite" value="<%=c.getWebSite()%>"/></h1><br/>
            <h1>Telefone:<br/><input type="text" name="Telefone" value="<%=c.getTelefone()%>"/></h1><br/>
            <br/><input class="btr" type="submit" name="alterarCadastroempresa" value="alterar"/>
        </form>
                    <div class="footer">
  <p>DIREITOS AUTORAIS INTEGRANTES GRUPO 3</p>
</div>
    </body>
</html>

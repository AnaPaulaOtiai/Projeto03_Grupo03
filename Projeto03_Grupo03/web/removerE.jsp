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
        <link rel="stylesheet" type="text/css" href="css/navbar.css">
        <link rel="stylesheet" type="text/css" href="css/estilo_1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover - CadastroEmpresa</title>
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
        <h1> Alteração Cadastro de Empresa</h1>
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
            <h1>    Nome: <br><%=c.getNome()%>                 </h1><br/>
            <h1>    Razão Social<br><%=c.getRazãoSocial()%>    </h1><br/>
            <h1>    CNPJ:<br><%=c.getCNPJ()%>                  </h1><br/>
            <h1>    WebSite:<br><%=c.getWebSite()%>            </h1><br/>
            <h1>    Telefone:<br><%=c.getTelefone()%>          </h1><br/>
            <br/><input class="btr" type="submit" name="removerCadastroEmpresa" value="Remover"/>
        </form>
                    <div class="footer">
  <p>DIREITOS AUTORAIS INTEGRANTES GRUPO 3</p>
</div>
    </body>
</html>
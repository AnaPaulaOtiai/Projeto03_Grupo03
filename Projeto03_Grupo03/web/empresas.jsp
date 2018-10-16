<%-- 
    Document   : Empresa
    Created on : 13/10/2018, 16:36:09
    Author     : Peterson
--%>


<%@page import="br.com.fatecpg.web.CadastroEmpresa"%>
<%@page import="br.com.fatecpg.web.Me"%>
<%@page import="br.com.fatecpg.web.CadastroEmpresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <style>
            body {
        background-image: url("image/FreeBackground1.jpg");
        }
        </style>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" type="text/css" href="css/navbar.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Cadastro de empresas</title>
    </head>
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
        <h1>Cadastro de Empresas</h1>
      
        <%
            if(request.getParameter("novoCadastro")!=null){
                String Nome = request.getParameter("Nome");
                String RazãoSocial = request.getParameter("RazãoSocial");
                String CNPJ = request.getParameter("CNPJ");
                String WebSite = request.getParameter("WebSite");
                String Telefone = request.getParameter("Telefone");
                CadastroEmpresa c = new CadastroEmpresa();
                c.setDados(Nome, RazãoSocial, CNPJ, WebSite, Telefone);
                Me.getCadastroempresa().add(c);
                response.sendRedirect("home.jsp");
                
            }
        %>
        <form>
            Nome: <br/><input type="text" name="Nome"/><br/>
            Razão Social: <br/><input type="text" name="RazãoSocial"/><br/>
            CNPJ: <br/><input type="text" name="CNPJ"/><br/>
            WebSite: <br/><input type="text" name="WebSite"/><br/>
            Telefone: <br/><input type="text" name="Telefone"/><br/>
            <br/><input type="submit" name="novoCadastro" value="Incluir"/><br/>
        </form>
                <div class="footer">
  <p>DIREITOS AUTORAIS INTEGRANTES GRUPO 3</p>
</div>
    </body>
</html>

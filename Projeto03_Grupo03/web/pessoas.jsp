<%-- 
    Document   : pessoas
    Created on : 13/10/2018, 14:36:09
    Author     : Ana
--%>


<%@page import="br.com.fatecpg.web.Mp"%>
<%@page import="br.com.fatecpg.web.Cadastropessoas"%>
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
        <title>Novo Cadastro de Pessoas</title>
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
        <h1>Cadastro de Pessoas</h1>
        <h2>Novo</h2>
        <%
            if(request.getParameter("novoCadastro")!=null){
                String Nome = request.getParameter("Nome");
                String CPF = request.getParameter("CPF");
                String Email = request.getParameter("Email");
                String Telefone = request.getParameter("Telefone");
                Cadastropessoas c = new Cadastropessoas();
                c.setDados(Nome, CPF, Email, Telefone);
                Mp.getCadastroPessoas().add(c);
                response.sendRedirect("home.jsp");
                
            }
        %>
        <form>
            Nome:<br/><input type="text" name="Nome"/><br/>
            CPF:<br/><input type="text" name="CPF"/><br/>
            Email:<br/><input type="text" name="Email"/><br/>
            Telefone:<br/><input type="text" name="Telefone"/><br/>
            <br/><input type="submit" name="novoCadastro" value="Incluir"/><br/>
        </form>
                <div class="footer">
  <p>DIREITOS AUTORAIS INTEGRANTES GRUPO 3</p>
</div>
    </body>
</html>

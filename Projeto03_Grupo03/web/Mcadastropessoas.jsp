<%-- 
    Document   : Mcadastropessoas
    Created on : 15/10/2018, 16:44:32
    Author     : Ana
--%>
  <%@include file="WEB-INF/jspf/menu.jspf"%>
<%@page import="br.com.fatecpg.web.Cadastropessoas"%>
<%@page import="br.com.fatecpg.web.Mp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/navbar.css">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Cadastro de Pessoas</title>
    </head>
    <body>
        <header>
    
        </header>
        <style>
            body {
        background-image: url("image/FreeBackground1.jpg");
        }
        </style>
             
        <h1>Cadastro de Pessoas</h1>
        <h1>Listagem</h1>
        <a href="pessoas.jsp"> <button class='bt' type='submit'>REGISTRAR NOVO CONTATO</button></a>
        <table border="1">
            <tr>
                <th>Nome</th> 
                <th>CPF</th> 
                <th>Email</th> 
                <th>Telefone</th> 
                <th>Comandos</th> 
            </tr>
                <% for(Cadastropessoas c: Mp.getCadastroPessoas()){%>
            <tr>
                <td><%=c.getNome()%></td>
                <td><%=c.getCPF()%></td>
                <td><%=c.getEmail()%></td>
                <td><%=c.getTelefone()%></td>
                <% int i = Mp.getCadastroPessoas().indexOf(c);%>
                <td>
                    <a href="alterar.jsp?i=<%= i%>">
                        <button class='btW' type='submit'>ALTERAR</button>
                    </a>
                         <a href="remover.jsp?i=<%= i %>">
                        <button class='btW' type='submit'>REMOVER</button>
                     </a>     
                </td>
            </tr>
           <%}%>
        </table>
                <div class="footer">
  <p>DIREITOS AUTORAIS INTEGRANTES GRUPO 3</p>
</div>
    </body>
</html>

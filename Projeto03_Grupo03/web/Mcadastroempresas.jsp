<%-- 
    Document   : Mcadastroempresas
    Created on : 15/10/2018, 16:45:01
    Author     : Ana
--%>
<%@page import="br.com.fatecpg.web.Me"%>
<%@page import="br.com.fatecpg.web.CadastroEmpresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/navbar.css">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Empresas</title>
        <style>
            body {
        background-image: url("image/FreeBackground1.jpg");
        }
        </style>
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
        <h1>Listagem</h1>
        <a href="empresas.jsp"><button class='bt' type='submit'>REGISTRAR NOVA EMPRESA</button></a>
        <table border="1">
            <tr>
                <th>Nome</th> 
                <th>Razão Social</th> 
                <th>CNPJ</th> 
                <th>WebSite</th> 
                <th>Telefone</th> 
                <th>Comandos</th> 
            </tr>
            <% for(CadastroEmpresa c: Me.getCadastroempresa()){%>
            <tr>
                <td><%=c.getNome()%></td>
                <td><%=c.getRazãoSocial()%></td>
                <td><%=c.getCNPJ()%></td>
                <td><%=c.getWebSite()%></td>
                <td><%=c.getTelefone()%></td>
                <% int i = Me.getCadastroempresa().indexOf(c);%>
                <td>
                    <a href="alterarE.jsp?i=<%= i%>">
                        <button class='btW' type='submit'>ALTERAR</button>
                    </a>
                         <a href="removerE.jsp?i=<%= i %>">
                        <button class='btW' type='submit'>REMOVER</button>
                     </a>
                </td>
            s</tr>
           <%}%>
        </table>
        
    <div class="footer">
        <p>DIREITOS AUTORAIS INTEGRANTES GRUPO 3</p>
    </div>
    </body>
</html>

<%-- 
    Document   : Mcadastroveiculos
    Created on : 15/10/2018, 16:45:28
    Author     : Ana
--%>
<%@page import="br.com.fatecpg.web.Cadastroveiculos"%>
<%@page import="br.com.fatecpg.web.Mv"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/navbar.css">
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Veiculos</title>
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
        <h1>Cadastro de Veiculos</h1>
        <h1>Listagem</h1>
        <a href="veiculos.jsp"><button class='bt' type='submit'>REGISTRAR NOVO VEICULO</button></a>
        <table border="1">
            <tr>
                <th>Placa</th> 
                <th>Marca</th> 
                <th>Modelo</th> 
                <th>Cor</th> 
                <th>Comandos</th> 
            </tr>
                <% for(Cadastroveiculos c: Mv.getCadastroveiculos()){%>
            <tr>
                <td><%=c.getPlaca()%></td>
                <td><%=c.getMarca()%></td>
                <td><%=c.getModelo()%></td>
                <td><%=c.getCor()%></td>
                <% int i = Mv.getCadastroveiculos().indexOf(c);%>
                <td>
                    <a href="alterarv.jsp?i=<%= i%>">
                        <button class='btW' type='submit'>ALTERAR</button>
                    </a>
                         <a href="removerv.jsp?i=<%= i %>">
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

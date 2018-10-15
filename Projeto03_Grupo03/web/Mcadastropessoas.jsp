<%-- 
    Document   : Mcadastropessoas
    Created on : 15/10/2018, 16:44:32
    Author     : Ana
--%>

<%@page import="br.com.fatecpg.web.Cadastropessoas"%>
<%@page import="br.com.fatecpg.web.Mp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Cadastro de Pessoas</title>
    </head>
    <body>
        <h1>Cadastro de Pessoas</h1>
        <h1>Listagem</h1>
        <a href="pessoas.jsp"><button>Registrar novo contato</button></a>
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
                        <button>Alterar</button>
                    </a>
                         <a href="remover.jsp?i=<%= i %>">
                        <button>Remover</button>
                     </a>     
                </td>
            </tr>
           <%}%>
        </table>
    </body>
</html>

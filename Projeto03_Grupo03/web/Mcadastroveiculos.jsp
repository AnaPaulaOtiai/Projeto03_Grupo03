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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Veiculos</title>
    </head>
    <body>
        <h1>Cadastro de Veiculos</h1>
        <h1>Listagem</h1>
        <a href="veiculos.jsp"><button>Registrar novo veiculo</button></a>
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
                        <button>Alterar</button>
                    </a>
                         <a href="removerv.jsp?i=<%= i %>">
                        <button>Remover</button>
                     </a>
                </td>
            </tr>
           <%}%>
        </table>
    </body>
</html>

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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Empresas</title>
    </head>
    <body>
       <h1>Cadastro de Empresas</h1>
        <h1>Listagem</h1>
        <a href="empresas.jsp"><button>Registrar nova Empresa</button></a>
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
                        <button>Alterar</button>
                    </a>
                         <a href="removerE.jsp?i=<%= i %>">
                        <button>Remover</button>
                     </a>
                </td>
            </tr>
           <%}%>
        </table>
    </body>
</html>

<%-- 
    Document   : Alterar.jsp
    Created on : 13/10/2018, 16:17:31
    Author     : Peteron Hernandez
--%>

<%@page import="br.com.fatecpg.web.Me"%>
<%@page import="br.com.fatecpg.web.CadastroEmpresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar dados Empresa</title>
    </head>
     <%  int i = Integer.parseInt(request.getParameter("i")); 
        CadastroEmpresa c = Me.getCadastroempresa().get(i); 
    %>
    <body>
        <h1>Dados Empresa</h1>
        <h2>Alterar</h2>
        <% if(request.getParameter("alterarDados") != null){
                String nome = request.getParameter("nome");
                String Cnpj = request.getParameter("Cnpj");
                String telefone = request.getParameter("telefone");
                String WebSite = request.getParameter("WebSite");                         
                
                c.setDados(nome,Cnpj, WebSite, telefone);
                Me.getCadastroempresa().set(i, c);
                response.sendRedirect("index.jsp");
        } %>
        <form>
            Indice: <%= i %></br></br>
            <input type="hidden" name="i" value="<%= i %>">
            Nome: <input type="text" name="nome" value="<%= c.getNome() %>"> </br></br>
            Telefone: <input type="telephone" name="telefone" value="<%= c.getTelefone() %>"> </br></br>
            E-mail: <input type="web" name="WebSite" value="<%= c.getWebSite() %>"> </br></br>
            <input type="submit" value="Alterar" name="alterarDados">
        </form>
    </body>
</html>

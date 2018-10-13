<%-- 
    Document   : pessoas
    Created on : 13/10/2018, 14:36:09
    Author     : Ana
--%>


<%@page import="br.com.fatecpg.web.CadastroEmpresa"%>
<%@page import="br.com.fatecpg.web.Me"%>
<%@page import="br.com.fatecpg.web.CadastroEmpresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Cadastro de empresas</title>
    </head>
    <body>
        <h1>Cadastro de Empresas</h1>
        <h2>Novo</h2>
        <%
            if(request.getParameter("novoCadastro")!=null){
                String Nome = request.getParameter("Nome");
                String Cnpj = request.getParameter("Cnpj");
                String WebSite = request.getParameter("WebSite");
                String Telefone = request.getParameter("Telefone");
                CadastroEmpresa c = new CadastroEmpresa();
                c.setDados(Nome, Cnpj, WebSite, Telefone);
                Me.getCadastroEmpresa().add(c);
                response.sendRedirect("home.jsp");
                
            }
        %>
        <form>
            Nome:<br/><input type="text" name="Nome"/><br/>
            CPF:<br/><input type="text" name="Cnpj"/><br/>
            Email:<br/><input type="text" name="WebSite"/><br/>
            Telefone:<br/><input type="text" name="Telefone"/><br/>
            <br/><input type="submit" name="novoCadastro" value="Incluir"/><br/>
        </form>
    </body>
</html>

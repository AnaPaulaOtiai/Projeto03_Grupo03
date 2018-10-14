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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Cadastro de empresas</title>
    </head>
    <body>
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
    </body>
</html>

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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Cadastro de Pessoas</title>
    </head>
    <body>
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
    </body>
</html>

<%-- 
    Document   : alterar
    Created on : 14/10/2018, 14:57:02
    Author     : Ana
--%>

<%@page import="br.com.fatecpg.web.Cadastropessoas"%>
<%@page import="br.com.fatecpg.web.Mp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - CadastroPessoas/title>
    </head>
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%Cadastropessoas c = Mp.getCadastroPessoas().get(i);%>
    <body>
        <h1>Cada Alteração de Cadastro de Pessoas</h1>
        <h2>Alterar</h2>
      <%
      if(request.getParameter("alterarCadastropessoas")!=null){
          c.setNome(request.getParameter("Nome"));
          c.setCPF(request.getParameter("CPF"));
          c.setEmail(request.getParameter("Email"));
          c.setTelefone(request.getParameter("Telefone"));
          Mp.getCadastroPessoas().set(i, c);
          response.sendRedirect("home.jsp");
      }
      %>
        <form>
            Índice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome:<br/><input type="text" name="Nome" value="<%=c.getNome()%>"/><br/>
            CPF:<br/><input type="text" name="CPF" value="<%=c.getCPF()%>"/><br/>
            E-mail:<br/><input type="text" name="email" value="<%=c.getEmail()%>"/><br/>
            Telefone:<br/><input type="text" name="Telefone" value="<%=c.getTelefone()%>"/><br/>
            <br/><input type="submit" name="alterarCadastropessoas" value="alterar"/>
        </form>
    </body>
</html>



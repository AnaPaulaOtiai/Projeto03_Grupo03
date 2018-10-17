<%-- 
    Document   : alterar
    Created on : 14/10/2018, 14:57:02
    Author     : Ana
--%>
<%@include file="WEB-INF/jspf/menu.jspf"%>
<%@page import="br.com.fatecpg.web.Cadastropessoas"%>
<%@page import="br.com.fatecpg.web.Mp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/navbar.css">
        <link rel="stylesheet" type="text/css" href="css/estilo_1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - CadastroPessoas</title>
        <style>
            body {
        background-image: url("image/FreeBackground1.jpg");
        }
        </style>
    </head>
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%Cadastropessoas c = Mp.getCadastroPessoas().get(i);%>
    <body>
        <header>
      
        </header>
       
        <h1>Alteração de Cadastro de Pessoas</h1>
     
      <%
      if(request.getParameter("alterarCadastropessoas")!=null){
          c.setNome(request.getParameter("Nome"));
          c.setCPF(request.getParameter("CPF"));
          c.setEmail(request.getParameter("Email"));
          c.setTelefone(request.getParameter("Telefone"));
          Mp.getCadastroPessoas().set(i, c);
          response.sendRedirect("Mcadastropessoas.jsp");
      }
      %>
      
        <form>
          
           <input type="hidden" name="i" value="<%=i%>"/>
           Nome:<br/><input  type="text" name="Nome" value="<%=c.getNome()%>"/><br/>
           CPF:<br/><input type="text" name="CPF" value="<%=c.getCPF()%>"/><br/>
           Email:<br/><input  type="text" name="Email" value="<%=c.getEmail()%>"/><br/>
           Telefone:<br/><input  type="text" name="Telefone" value="<%=c.getTelefone()%>"/><br/>
            <br/><input class="btr" type="submit" name="alterarCadastropessoas" value="Alterar"/>
        </form>
                    <div class="footer">
  <p>DIREITOS AUTORAIS INTEGRANTES GRUPO 3</p>
</div>
 
      </body>
</html>



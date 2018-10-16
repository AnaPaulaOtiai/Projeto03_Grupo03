<%-- 
    Document   : remover
    Created on : 14/10/2018, 14:59:09
    Author     : Ana
--%>

<%@page import="br.com.fatecpg.web.Cadastropessoas"%>
<%@page import="br.com.fatecpg.web.Mp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {
        background-image: url("image/FreeBackground1.jpg");
        }
        </style>
        <link rel="stylesheet" type="text/css" href="css/navbar.css">s
        <link rel="stylesheet" type="text/css" href="css/estilo_1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - CadastroPessoas</title>
    </head>
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%Cadastropessoas c = Mp.getCadastroPessoas().get(i);%>
    
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
        <h1>Alteração Cadastro de Pessoas</h1>
        <h2>Remover</h2>
      <%
      if(request.getParameter("removerCadastroPessoas")!=null){
          Mp.getCadastroPessoas().remove(i);
          response.sendRedirect("home.jsp");
      }
      %>
        <form>
            Índice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            <h1>    Nome:<br><%=c.getNome()%>           </h1><br/>
            <h1>    CPF:<br><%=c.getCPF()%>             </h1><br/>
            <h1>    E-mail:<br><%=c.getEmail()%>        </h1><br/>
            <h1>    Telefone:<br><%=c.getTelefone()%>   </h1><br/>
            <br/><input class="btr" type="submit" name="removerCadastroPessoas" value="Remover"/>
        </form>
                    <div class="footer">
  <p>DIREITOS AUTORAIS INTEGRANTES GRUPO 3</p>
</div>
    </body>
</html>


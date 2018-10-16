<%-- 
    Document   : removerv
    Created on : 14/10/2018, 18:40:46
    Author     : Ana
--%>

<%@page import="br.com.fatecpg.web.Cadastroveiculos"%>
<%@page import="br.com.fatecpg.web.Mv"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <style>
            body {
        background-image: url("image/FreeBackground1.jpg");
        }
        </style>
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" type="text/css" href="css/navbar.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remover - Cadastroveiculos</title>
    </head>
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%Cadastroveiculos c = Mv.getCadastroveiculos().get(i);%>
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
        <h1>Cada Alteração Cadastro de Veiculos</h1>
        <h2>Remover</h2>
      <%
      if(request.getParameter("removerCadastroveiculos")!=null){
          Mv.getCadastroveiculos().remove(i);
          response.sendRedirect("home.jsp");
      }
      %>
        <form>
            Índice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
          <h1>  Placa:<%=c.getPlaca()%>     </h1><br/>
          <h1>  Marca:<%=c.getMarca()%>     </h1><br/>
          <h1>  Modelo:<%=c.getModelo()%>   </h1><br/>
          <h1>  Cor:<%=c.getCor()%>         </h1><br/>
            <br/><input type="submit" name="removerCadastroveiculos" value="Remover"/>
        </form>
                    <div class="footer">
  <p>DIREITOS AUTORAIS INTEGRANTES GRUPO 3</p>
</div>
    </body>
</html>

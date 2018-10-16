<%-- 
    Document   : alterarv
    Created on : 14/10/2018, 23:17:12
    Author     : Ana
--%>

<%@page import="br.com.fatecpg.web.Cadastroveiculos"%>
<%@page import="br.com.fatecpg.web.Mv"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/navbar.css">
        <link rel="stylesheet" type="text/css" href="css/estilo_1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - Cadastroveiculos</title>
        <style>
            body {
        background-image: url("image/FreeBackground1.jpg");
        }
        </style>
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
        <h1>Alteração de Cadastro de Pessoas</h1>
     
      <%
      if(request.getParameter("alterarCadastroveiculos")!=null){
          c.setPlaca(request.getParameter("Placa"));
          c.setMarca(request.getParameter("Marca"));
          c.setModelo(request.getParameter("Modelo"));
          c.setCor(request.getParameter("Cor"));
          Mv.getCadastroveiculos().set(i, c);
          response.sendRedirect("home.jsp");
      }
      %>
        <form>
            Índice: <%= i %><br/><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            <h1>Placa:<br/><input type="text" name="Placa" value="<%=c.getPlaca()%>"/></h1><br/>
            <h1>Marca:<br/><input type="text" name="Marca" value="<%=c.getMarca()%>"/></h1><br/>
            <h1>Modelo:<br/><input type="text" name="Modelo" value="<%=c.getModelo()%>"/></h1><br/>
            <h1>Cor:<br/><input type="text" name="Cor" value="<%=c.getCor()%>"/></h1><br/>
            <br/><input class="btr" type="submit" name="alterarCadastroveiculos" value="alterar"/>
        </form>
                    <div class="footer">
  <p>DIREITOS AUTORAIS INTEGRANTES GRUPO 3</p>
</div>
    </body>
</html>



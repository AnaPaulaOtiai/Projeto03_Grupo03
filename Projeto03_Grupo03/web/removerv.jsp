<%-- 
    Document   : removerv
    Created on : 14/10/2018, 18:40:46
    Author     : Ana
--%>
<%@include file="WEB-INF/jspf/menu.jspf"%>
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
    
        </header>
        <h1>Remover Cadastro de Veiculos</h1>
        
      <%
      if(request.getParameter("removerCadastroveiculos")!=null){
          Mv.getCadastroveiculos().remove(i);
          response.sendRedirect("Mcadastroveiculos.jsp");
      }
      %>
        <form>
           
          <input type="hidden" name="i" value="<%=i%>"/>
            Placa:<br/><input type="text" name="Placa" value="<%=c.getPlaca()%>"/><br/>
            Marca:<br/><input type="text" name="Marca" value="<%=c.getMarca()%>"/><br/>
            Modelo:<br/><input type="text" name="Modelo" value="<%=c.getModelo()%>"/><br/>
            Cor:<br/><input type="text" name="Cor" value="<%=c.getCor()%>"/></h1><br/>
            <br/><input type="submit" name="removerCadastroveiculos" value="Remover"/>
        </form>
                    <div class="footer">
  <p>DIREITOS AUTORAIS INTEGRANTES GRUPO 3</p>
</div>
    </body>
</html>

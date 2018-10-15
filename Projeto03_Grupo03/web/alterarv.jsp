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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar - Cadastroveiculos</title>
    </head>
    <%int i = Integer.parseInt(request.getParameter("i"));%>
    <%Cadastroveiculos c = Mv.getCadastroveiculos().get(i);%>
    <body>
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
            Placa:<br/><input type="text" name="Placa" value="<%=c.getPlaca()%>"/><br/>
            Marca:<br/><input type="text" name="Marca" value="<%=c.getMarca()%>"/><br/>
            Modelo:<br/><input type="text" name="Modelo" value="<%=c.getModelo()%>"/><br/>
            Cor:<br/><input type="text" name="Cor" value="<%=c.getCor()%>"/><br/>
            <br/><input type="submit" name="alterarCadastroveiculos" value="alterar"/>
        </form>
    </body>
</html>



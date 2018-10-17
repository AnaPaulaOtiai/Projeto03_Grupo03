<%-- 
    Document   : veiculos
    Created on : 14/10/2018, 18:24:00
    Author     : Ana
--%>
<%@include file="WEB-INF/jspf/menu.jspf"%>
<%@page import="br.com.fatecpg.web.Mv"%>
<%@page import="br.com.fatecpg.web.Cadastroveiculos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <style>
            body {
        background-image: url("image/FreeBackground1.jpg");
        }
        </style>
        <link rel="stylesheet" type="text/css" href="css/navbar.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Cadastro de Veiculos</title>
    </head>
    <body>
        <header>
     
        </header>
        
        <h1>Inclusão de Cadastro de Veiculos</h1>
      
        <%
            if(request.getParameter("novoCadastroveiculos")!=null){
                String Placa = request.getParameter("Placa");
                String Marca = request.getParameter("Marca");
                String Modelo = request.getParameter("Modelo");
                String Cor = request.getParameter("Cor");
                Cadastroveiculos c = new Cadastroveiculos();
                c.setDados(Placa, Marca, Modelo, Cor);
                Mv.getCadastroveiculos().add(c);
                response.sendRedirect("Mcadastroveiculos.jsp");
                
            }
        %>
        <form>
            Placa:<br/><input type="text" name="Placa"/><br/>
            Marca:<br/><input type="text" name="Marca"/><br/>
            Modelo:<br/><input type="text" name="Modelo"/><br/>
            Cor:<br/><input type="text" name="Cor"/><br/>
            <br/><input type="submit" name="novoCadastroveiculos" value="Incluir"/><br/>
        </form>
                <div class="footer">
  <p>DIREITOS AUTORAIS INTEGRANTES GRUPO 3</p>
</div>
    </body>
</html>
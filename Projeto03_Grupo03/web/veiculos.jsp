<%-- 
    Document   : veiculos
    Created on : 14/10/2018, 18:24:00
    Author     : Ana
--%>

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
        
        <h1>Cadastro de Veiculos</h1>
      
        <%
            if(request.getParameter("novoCadastroveiculos")!=null){
                String Placa = request.getParameter("Placa");
                String Marca = request.getParameter("Marca");
                String Modelo = request.getParameter("Modelo");
                String Cor = request.getParameter("Cor");
                Cadastroveiculos c = new Cadastroveiculos();
                c.setDados(Placa, Marca, Modelo, Cor);
                Mv.getCadastroveiculos().add(c);
                response.sendRedirect("home.jsp");
                
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
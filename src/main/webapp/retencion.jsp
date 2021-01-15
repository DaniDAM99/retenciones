<%-- 
    Document   : retencions.jsp
    Created on : 15-ene-2021, 21:23:06
    Author     : DAW-B
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
            <%
                int salarioBruto = Integer.parseInt(request.getParameter("salario"));
                String nombre = request.getParameter("nombre");
                float salarioNeto = 0;
                float retenciones = 0;
                if(salarioBruto <= 1000) {
                    salarioNeto = salarioBruto;
                    retenciones = 0;
                }
                else if(salarioBruto > 1000 && salarioBruto < 3000) {
                    retenciones = salarioBruto / 10;
                    salarioNeto = salarioBruto - retenciones;
                }
                else if(salarioBruto >= 3000) {
                    retenciones = salarioBruto / 20;
                    salarioNeto = salarioBruto - retenciones;
                }
            %>
            
            <p>Nombre: <%= nombre %></p>
            <p>Salario bruto: <%= salarioBruto %></p>
            <p>Retenciones: <%= retenciones %></p>
            <p>Salario neto: <%= salarioNeto %></p>
          
<%/*
Para un salario de hasta 1000€ no hay retención, por encima de 1000 y hasta 3000€ tiene una retención del 10% y
por encima de 3000 una retención del 20%. Hacer un JSP que reciba el nombre y el salario bruto de un empleado.que
devuelva el nombre, el salario bruto, la retención y el salario neto.        
*/%>
    </body>
</html>

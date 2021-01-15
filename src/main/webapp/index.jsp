<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="retencion.jsp">
            Nombre:<br/>
            <input type="text" name="nombre"><br/>
            Salario:<br/>
            <input type="number" step="any" name="salario"><br/>
            <input type="submit" value="Calculo retencion">
        </form>
    </body>
</html>

<%-- 
    Document   : index
    Created on : 23/04/2021, 07:53:32 PM
    Author     : Angel
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="modelo.Triangulo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACTIVIDAD 7</title>
    </head>
    <body>
        <h1>Actividad 7 - AJMR - 2795303</h1>
        
               <%
        
            HttpSession sesion=request.getSession(false);
            Enumeration e=sesion.getAttributeNames();
            if(e.hasMoreElements())
            {
                out.print("Hola bienvenido, ");
                out.print(sesion.getAttribute("name")+"");
            }

        %> 
       <br>
        <%
            Cookie ck[]=request.getCookies();
            if(ck!=null)
            {
                for(int i=0;i<ck.length;i++)
                {
                    if(ck[i].getName().equals("num1"))
                    {
                        out.print("Tu base anterior fue " +ck[i].getValue()+" y tu altura fue ");
                    }
                    if(ck[i].getName().equals("num2"))
                    {
                        out.print(ck[i].getValue()+". ");
                    }
                    if(ck[i].getName().equals("perimetro"))
                    {
                        out.println("Donde el perimetro fue "+ck[i].getValue()+". ");
                    }
                    if(ck[i].getName().equals("area"))
                    {
                        out.print("Y tu area fue "+ck[i].getValue()+"");
                    }
                }
            }

        %>
        

                    
        ¨<form action="controlador" methodo="POST">
            <table>
                 <tr>
                <td>Por favor introduce tu nombre</td><td><input type="text" placeholder="Nombre" name="name"/></td>
                </tr>
                
                
                <tr>
                <td>Medida de la base</td><td><input type="text" placeholder="Base" name="num1"/></td>
                </tr>
                
                <tr>
                <td>Medida de la altura</td><td><input type="text" placeholder="Altura" name="num2"/></td>
                </tr>
                
                <tr>
                    <td><button type="submit">Calcular</button></td>
                </tr>
                
            </table>
            
            
            
        </form>>
    </body>
</html>

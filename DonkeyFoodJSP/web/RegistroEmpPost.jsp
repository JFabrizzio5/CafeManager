<%@page import="org.nexo.helper.EmpleadoHelper"%>
<%@page import="org.nexo.dao.Empleado"%> 
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Entrar a DonkeyFood</title>
    </head>
        <body>
            <%
                if( request == null )
                {
                    return;
                }
                String action = request.getParameter( "action" );
                if( action == null )
                {
                    action = "";
                }
                switch( action )
                {
                    case "send":
                        if( new EmpleadoHelper( ).addEmpleado(request))
                        {
                            response.sendRedirect("InicioSesionEmpPost.jsp");
                            
                        }else{
                        %>
                        <script>window.alert("Datos invalidos!!");</script>
                        <%
                        }
                        break;
                    default:
            %>
                        <jsp:include page="RegistroEmp.jsp" />
            <%
                }
            %>
        
        </body>
</html>
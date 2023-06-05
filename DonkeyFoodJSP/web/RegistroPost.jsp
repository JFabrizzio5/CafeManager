<%@page import="org.nexo.helper.ClienteHelper"%>
<%@page import="org.nexo.dao.Cliente"%> 
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
                        if( new ClienteHelper( ).addCliente(request))
                        {
                            response.sendRedirect("InicioSesionPost.jsp");
                        }else{
                        %>
                        <script>window.alert("Datos invalidos!!");</script>
                        <%
                        }
                        break;
                    default:
            %>
                        <jsp:include page="Registro.jsp" />
            <%
                }
            %>
        
        </body>
</html>
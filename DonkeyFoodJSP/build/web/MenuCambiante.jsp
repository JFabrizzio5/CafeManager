<%@page import="org.nexo.helper.ProductHelper"%>
<%@page import="org.nexo.dao.Product"%> 
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/DFoodStyle.css" />
        <link rel="stylesheet" href="assets/css/MenuStyle.css" />
        <link rel="stylesheet" href="assets/css/fontawesome.css" />
        <link rel="stylesheet" href="assets/css/style.css" />
        <link rel="stylesheet" href="assets/css/owl.css" />
        <link rel="stylesheet" href="assets/css/lightbox.css" />
        <link rel="icon" href="assets/images/DonkeyFood.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Inventario</title>
    </head>
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
                    case "product":
            %>
                        <jsp:include page="PantallaProduct.jsp" />
            <%
                    break;
                    default:
            %>
                        <jsp:include page="GeneradorMenu.jsp" />
            <%
                }
            %>
</html>
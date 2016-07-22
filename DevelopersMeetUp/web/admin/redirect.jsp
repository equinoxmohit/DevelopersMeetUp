<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        if (request.getParameter("name").equals("admin") && request.getParameter("password").equals("admin")) {
            response.sendRedirect("show.jsp?success");
        } else {
            response.sendRedirect("../index.html?error");
        }
    } else {
        response.sendRedirect("../index.html?error");
    }


%>
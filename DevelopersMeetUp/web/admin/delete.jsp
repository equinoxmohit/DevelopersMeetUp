<%@page import="com.mohitpaudel.webdevelopment.dao.impl.ProgrammerDaoImpl"%>
<%@page import="com.mohitpaudel.webdevelopment.dao.ProgrammerDao"%>
<%@page import="com.mohitpaudel.webdevelopment.entity.Programmer"%>
<%
    Programmer p = new Programmer();
    if (request.getParameter("id") == null || request.getParameter("id").isEmpty()) {
        response.sendRedirect("../index.html?error");
    } else {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            ProgrammerDao pDao = new ProgrammerDaoImpl();
            pDao.delete(id);
        } catch (Exception ex) {
            out.println(ex.getLocalizedMessage());
        }
    }

%>
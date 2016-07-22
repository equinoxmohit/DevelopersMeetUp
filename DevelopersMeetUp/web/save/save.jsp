<%@page import="com.mohitpaudel.webdevelopment.dao.impl.ProgrammerDaoImpl"%>
<%@page import="com.mohitpaudel.webdevelopment.dao.ProgrammerDao"%>
<%@page import="com.mohitpaudel.webdevelopment.entity.Programmer"%>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        ProgrammerDao pDao = new ProgrammerDaoImpl();

        Programmer p = new Programmer();
        p.setFull_name(request.getParameter("name"));
        p.setAddress(request.getParameter("address"));
        p.setContact_number(request.getParameter("number"));
        p.setEmail_address(request.getParameter("email"));
        p.setGithub_link(request.getParameter("git"));
        p.setLinkedin_link(request.getParameter("linkedin"));
        p.setFacebook_link(request.getParameter("facebook"));
        p.setGoogleplus_link(request.getParameter("google"));
        p.setMain_skill(request.getParameter("skill"));
        p.setAdditional_skills(request.getParameter("additional"));
        p.setNumber_of_projects(Integer.parseInt(request.getParameter("project")));
        p.setExperience(request.getParameter("experience"));
        p.setAbout_programmer(request.getParameter("about"));
        p.setLife_moto(request.getParameter("quote"));
        try {
            if (pDao.add(p) > 0) {
                response.sendRedirect("../show/show.jsp?success");
            } else {
                response.sendRedirect("../index.html?error");

            }
        } catch (Exception ex) {
            out.println(ex.getLocalizedMessage());
        }
    } else {
        response.sendRedirect("../index.html?error");
    }

%>

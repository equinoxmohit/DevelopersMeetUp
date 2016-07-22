<%@page import="com.mohitpaudel.webdevelopment.dao.impl.ProgrammerDaoImpl"%>
<%@page import="com.mohitpaudel.webdevelopment.dao.ProgrammerDao"%>
<%@page import="com.mohitpaudel.webdevelopment.entity.Programmer"%>
<%@include file="../shared/header.jsp" %>

<%
    Programmer p = new Programmer();
    if (request.getParameter("id").isEmpty() || request.getParameter("id") == null) {
        response.sendRedirect("../index.html?error");
    } else {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            ProgrammerDao pDao = new ProgrammerDaoImpl();
            p = pDao.getById(id);
            if (p == null) {
                p=new Programmer();
                  response.sendRedirect("../index.html?error");
            }

        } catch (Exception ex) {
            out.println(ex.getLocalizedMessage());
        }

    }


%>



<div class="container">
    <div class="h2 text-center">Edit Profile</div>
    <form action="save.jsp?id=<%=p.getId()%>" method="post">
        <label>Full Name</label>
        <input type="text" class="form-control" placeholder="Enter Your Full Name..." value="<%=p.getFull_name()%>" required name="name">
        <label>Address</label>
        <input type="text" class="form-control" placeholder="Enter Your Address..." value="<%=p.getAddress()%>" required name="address">
        <label>Contact Number</label>
        <input type="text" class="form-control" placeholder="Enter Your Contact Number..." value="<%=p.getContact_number()%>" required name="number">
        <label>Email Address</label>
        <input type="email" class="form-control" placeholder="Enter Your Contact Number..." value="<%=p.getEmail_address()%>" required name="email">
        <label>GitHub Link</label>
        <input type="text" class="form-control" placeholder="Paste Your Github Link Here..." value="<%=p.getGithub_link()%>" required name="git">
        <label>Linkedin Link</label>
        <input type="text" class="form-control" placeholder="Paste Your Linkedin Link Here..." value="<%=p.getLinkedin_link()%>" required name="linkedin">
        <label>Facebook Link</label>
        <input type="text" class="form-control" placeholder="Paste Your Facebook Link Here..." value="<%=p.getFacebook_link()%>" required name="facebook">
        <label>Google Plus Link</label>
        <input type="text" class="form-control" placeholder="Paste Your Google Plus Link Here..." value="<%=p.getGoogleplus_link()%>" required name="google">
        <label>Proficiency in</label>
        <input type="text" class="form-control" placeholder="Enter your proficiency Eg.Java OR PHP OR..." value="<%=p.getMain_skill()%>" required name="skill">
        <label>Additional skills</label>
        <textarea class="form-control" placeholder="Enter your additional skills Eg. HTML, CSS,JQuery,Bootstrap..." required name="additional"><%=p.getAdditional_skills()%></textarea>
        <label>Number of Projects</label>
        <input type="text" class="form-control" placeholder="Enter Number of Projects Completed..." value="<%=p.getNumber_of_projects()%>" required name="project">
        <label>Experience</label>
        <input type="text" class="form-control" placeholder="Enter your experience Eg.1 month OR 1 year OR..." value="<%=p.getExperience()%>" required name="experience">
        <label>About YourSelf</label>
        <textarea class="form-control" placeholder="Schooling, past experience at, current..." required name="about"><%=p.getAbout_programmer()%> </textarea>
        <label>Favorite Quote</label>
        <textarea class="form-control" placeholder="Add Your Favorite Quote Here..." required name="quote"><%=p.getLife_moto()%></textarea>
        <br>
        <button class="btn btn-success">Submit</button>
        <a href ="../index.html?cancel" class="btn btn-danger">Cancel</a>
        <br><br>
    </form>  


</div>



<%@include file="../shared/footer.jsp" %>

<%@page import="com.mohitpaudel.webdevelopment.dao.impl.ProgrammerDaoImpl"%>
<%@page import="com.mohitpaudel.webdevelopment.dao.ProgrammerDao"%>
<%@page import="com.mohitpaudel.webdevelopment.entity.Programmer"%>
<%@include file="../shared/header.jsp" %>

<div class="container">
    <div class="pull-left">
        <a href="../index.html">Redirect to Home</a>        
    </div>
    <div class="h1 text-center">Developer's Overview</div>
    <table class="table table-striped table-hover table-bordered">
        <tr>
            <td>Programmer's Proficiency</td>
            <td>Name</td>
            <td>Address</td>
            <td>Email Address</td> 
            <td>Googleplus Link</td>
            <td>Linkedin Link</td>
            <td>Facebook Link</td>
            <td>GitHub Link</td>
            <td>View Profile</td>
            <td>Send Email</td>
        </tr>
        <%
            ProgrammerDao pDao = new ProgrammerDaoImpl();
            for (Programmer p : pDao.getAll()) {%>
        <tr>
            <td><strong><%=p.getMain_skill()%></strong></td>
            <td><%=p.getFull_name()%></td>
            <td><%=p.getAddress()%></td>
            <td><%=p.getEmail_address()%></td>
            <td><a href="<%=p.getGoogleplus_link()%>" target="_blank"><i class=" fa fa-google-plus"></i></a> </td>
            <td><a href="<%=p.getLinkedin_link()%>" target="_blank"><i class=" fa fa-linkedin"></i></a></td>
            <td><a href="<%=p.getFacebook_link()%>" target="_blank"><i class=" fa fa-facebook"></i></a></td>
            <td><a href="<%=p.getGithub_link()%>" target="_blank"><i class=" fa fa-github"></i></a></td>
            <td><a href="${pageContext.request.contextPath}/profile/profile.jsp?id=<%=p.getId()%>" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-check"></span>View Profile</a></td>
            <td><a href="${pageContext.request.contextPath}/email/formemail.jsp?id=<%=p.getId()%>" class="btn btn-success btn-sm"><span class="glyphicon glyphicon-envelope"></span>Send Email</a></td>
        </tr> 



        <% }%>
    </table>



</div>


<%@include file="../shared/footer.jsp" %>


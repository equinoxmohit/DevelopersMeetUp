<%@page import="com.mohitpaudel.webdevelopment.dao.impl.ProgrammerDaoImpl"%>
<%@page import="com.mohitpaudel.webdevelopment.dao.ProgrammerDao"%>
<%@page import="com.mohitpaudel.webdevelopment.entity.Programmer"%>
<%@include file="../shared/header.jsp" %>

<%
    if (request.getParameter("id") == null || request.getParameter("id").equals("")) {
        response.sendRedirect("../show.jsp?error");
    } else {
        ProgrammerDao pDao = new ProgrammerDaoImpl();
          int id=Integer.parseInt(request.getParameter("id"));
          Programmer p=pDao.getById(id);
                     
      %>
<div class="container">
    <h1>Send Email</h1>
    <form action="sendemail.jsp?id=<%=p.getId()%>" method="post">
        <div class="form-group">
            <label>Send Email To:</label>
            <input type="email" class="form-control" value="<%=p.getEmail_address()%>"  name="sendto">
        </div>
        <div class="form-group">
            <label> Email Address:</label>
            <input type="email" class="form-control" value="" placeholder="enter your email address" name="sendfrom" required="required" >
        </div>
        <div class="form-group">
            <label> username:</label>
            <input type="text" class="form-control" value="" placeholder="enter Username to display..." name="username" required="required" >
        </div>
        <div class="form-group">
            <label> Subject:</label>
            <input type="text" class="form-control" placeholder="enter subject of the mail..." name="subject" required="required">
        </div>
        <div class="form-group">
            <label> Message:</label>
            <textarea rows="12"  class="form-control" placeholder="enter message..." name="mail" required="required" ></textarea>
        </div>
        <button class="btn btn-success">Send</button>
        <a href="../index.html" class="btn btn-danger">Cancel</a>
    </form>

<% } %>


    <%@include file="../shared/footer.jsp" %>
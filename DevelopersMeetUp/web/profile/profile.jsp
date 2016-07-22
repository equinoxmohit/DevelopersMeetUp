
<%@page import="com.mohitpaudel.webdevelopment.dao.impl.ProgrammerDaoImpl"%>
<%@page import="com.mohitpaudel.webdevelopment.dao.ProgrammerDao"%>
<%@page import="com.mohitpaudel.webdevelopment.entity.Programmer"%>
<%@include file="../shared/header.jsp" %>
<%
    Programmer pr = new Programmer();
    if (request.getParameter("id") == null || request.getParameter("id").isEmpty()) {
        response.sendRedirect("../index.html?error");
    } else {
        try {
            ProgrammerDao pDao = new ProgrammerDaoImpl();
            int id = Integer.parseInt(request.getParameter("id"));
            pr = pDao.getById(id);
            if (pr == null) {
                pr = new Programmer();
                response.sendRedirect("../index.html?error");
            }

        } catch (Exception ex) {
            out.println(ex.getLocalizedMessage());
        }
    }


%>

<body>
    <div class="container-fluid" id="topbar" style="padding:0px !important;"> 
        <!-- no full width if no overridden padding even if fluid is used. why? -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <!-- Logo -->
                <div class="navbar-header" style="padding-top:10px;">
                    <a href="../index.html" class="navbar-brand">
                        Developer's Meet Up
                    </a>
                </div>
                <button type="button" class="navbar-toggle" id="slide" data-toggle="collapse" 
                        data-target=".navHeaderCollapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- Menu Items -->
                <div class="collapse navbar-collapse navHeaderCollapse navbar-header" style="padding-top:10px;">
                    <ul class="nav navbar-nav" style="margin-left:50px;">
                        <li class="dropdown">
                            <a href="../add/add.jsp">Add Your Profile</a>
                        </li>  
                    </ul>
                </div>
                <!--Right align -->
                <div class="collapse navbar-collapse navHeaderCollapse navbar-header navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <p><%=pr.getFull_name()%>'s Profile</p>
                        </li> 
                    </ul>
                </div>
            </div>
        </nav>
    </div>

    <div class="container-fluid mainbody">
        <div class="h2 text-center" style="color:#231F20;padding-top:12%;">
            <blockquote>
                "<%=pr.getLife_moto()%>"

            </blockquote>
            <span class="glyphicon glyphicon-grain"></span> 
        </div>
    </div>

    <br>
    <div>
        <h1 class="text-center"> About The Programmer</h1>
        <div id="accordion" class="panel-group">
            <div class="panel panel-default" >
                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                    <div class="panel-heading" style="background-color:transparent;color:#231f20;">			
                        <h2 class="panel-title" style="font-size: 20px">
                            Personal Details
                            <span class="glyphicon glyphicon-chevron-down" style="float:right;"></span>
                        </h2>    
                    </div>
                </a>
                <div id="collapseOne" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul>
                            <li><strong>Name:</strong><br><%=pr.getFull_name()%>
                            </li>
                            <li>
                                <strong>Address:</strong><br><%=pr.getAddress()%>
                            </li>
                            <li>
                                <strong>Contact Number:</strong><br><%=pr.getContact_number()%>
                            </li>
                            <li>
                                <strong>Email Address:</strong><br><%=pr.getEmail_address()%>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <br>
            <div class="panel panel-default">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                    <div class="panel-heading" style="background-color:transparent;color:#231f20;">
                        <h3 class="panel-title" style="font-size: 20px">
                            Skills,Experience and Education
                            <span class="glyphicon glyphicon-chevron-down" style="float:right;"></span>
                        </h3>
                    </div>
                </a>
                <div id="collapseTwo" class="panel-collapse collapse ">
                    <div class="panel-body">
                        <ul>
                            <li>
                                <strong>Proficiency In:</strong><br><%=pr.getMain_skill()%>
                            </li>
                            <li>
                                <strong>Additional Skills:</strong><br><%=pr.getAdditional_skills()%>
                            </li>
                            <li>
                                <strong>Number of Projects:</strong><br><%=pr.getNumber_of_projects()%>
                            </li>
                            <li>
                                <strong>Experience:</strong><br><%=pr.getExperience()%>
                            </li>
                            <li>
                                <strong>Other Details:</strong><br><%=pr.getAbout_programmer()%>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <br>
            <div class="panel panel-default">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                    <div class="panel-heading" style="background-color:transparent;color:#231f20;">			
                        <h2 class="panel-title" style="font-size: 20px">
                            Social Media
                            <span class="glyphicon glyphicon-chevron-down" style="float:right;"></span>
                        </h2>    
                    </div>
                </a>
                <div id="collapseThree" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul>
                            <li>
                                <strong>GitHub Link:</strong><a href="<%=pr.getGithub_link()%>" target="_blank"> <i class=" fa fa-github"> </i> </a> 
                            </li>
                            <li>
                                <strong>Linkedin Link:</strong><a href="<%=pr.getLinkedin_link()%>" target="_blank"> <i class=" fa fa-linkedin"> </i> </a> 
                            </li>
                            <li>

                                <strong>Facebook Link:</strong><a href="<%=pr.getFacebook_link()%>" target="_blank"> <i class=" fa fa-facebook"> </i> </a> 
                            </li>
                            <li>

                                <strong>Googleplus Link:</strong><a href="<%=pr. getGoogleplus_link()%>" target="_blank"> <i class=" fa fa-google-plus"> </i> </a> 
                            </li>
                        </ul>

                    </div>
                </div>
            </div>
            <br>
        </div>
    </div>
    <br>
    <footer>
        <div class="footer" id="footer">
            <div class="container">
                <h5 class="pull-left"> Copyright &COPY; Mohit Paudel 2016 All right reserved. </h5>
                <div class="pull-right">
                    <ul class="social">
                        <li> <a href="https://www.facebook.com/profile.php?id=100009484632088" target="_blank"> <i class=" fa fa-facebook">   </i> </a> </li>
                        <li> <a href="https://www.linkedin.com/profile/preview?locale=en_US&trk=prof-0-sb-preview-primary-button" target="_blank"> <i class="fa fa-linkedin">   </i> </a> </li>
                        <li> <a href="https://plus.google.com/u/1/106594817766466992702/posts" target="_blank"> <i class="fa fa-google-plus">   </i> </a> </li>
                        <li> <a href="https://github.com/equinoxmohit?tab=repositories" target="_blank"> <i class="fa fa-github">   </i> </a> </li>
                    </ul>
                </div>
            </div>
        </div>


    </footer>



    <%@include file="../shared/footer.jsp" %>

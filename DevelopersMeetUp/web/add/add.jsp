<%@include file="../shared/header.jsp" %>
<div class="container">
    <div class="h2 text-center">Add Your Profile</div>
    <form action="../save/save.jsp" method="post">
        <label>Full Name</label>
        <input type="text" class="form-control" placeholder="Enter Your Full Name..." required name="name">
        <label>Address</label>
        <input type="text" class="form-control" placeholder="Enter Your Address..." required name="address">
        <label>Contact Number</label>
        <input type="text" class="form-control" placeholder="Enter Your Contact Number..." required name="number">
        <label>Email Address</label>
        <input type="email" class="form-control" placeholder="Enter Your Contact Number..." required name="email">
        <label>GitHub Link</label>
        <input type="text" class="form-control" placeholder="Paste Your Github Link Here..." required name="git">
        <label>Linkedin Link</label>
        <input type="text" class="form-control" placeholder="Paste Your Linkedin Link Here..." required name="linkedin">
        <label>Facebook Link</label>
        <input type="text" class="form-control" placeholder="Paste Your Facebook Link Here..." required name="facebook">
        <label>Google Plus Link</label>
        <input type="text" class="form-control" placeholder="Paste Your Google Plus Link Here..." required name="google">
        <label>Proficiency in</label>
        <input type="text" class="form-control" placeholder="Enter your proficiency Eg.Java OR PHP OR..." required name="skill">
        <label>Additional skills</label>
        <textarea class="form-control" placeholder="Enter your additional skills Eg. HTML, CSS,JQuery,Bootstrap... " required name="additional"></textarea>
        <label>Number of Projects</label>
        <input type="text" class="form-control" placeholder="Enter Number of Projects Completed..." required name="project">
        <label>Experience</label>
        <input type="text" class="form-control" placeholder="Enter your experience Eg.1 month OR 1 year OR..." required name="experience">
        <label>About YourSelf</label>
        <textarea class="form-control" placeholder="Schooling, past experience at, current..." required name="about"></textarea>
        <label>Favorite Quote</label>
        <textarea class="form-control" placeholder="Add Your Favorite Quote Here..." required name="quote"></textarea>
        <br>
        <button class="btn btn-success">Add Profile</button>
        <a href ="../index.html?cancel" class="btn btn-danger">Cancel</a>
        <br><br>
    </form>  



</div>
<%@include file="../shared/footer.jsp" %>

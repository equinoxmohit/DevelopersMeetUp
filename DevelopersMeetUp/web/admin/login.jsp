<%@include file="../shared/header.jsp" %>
<div class="container">
    <div class="h2 text-center">Administrator Login</div>
    <form action="redirect.jsp" method="post">
        <label>UserName</label>
        <input type="text" class="form-control" placeholder="Enter Username..." required name="name">
        <label>Password</label>
        <input type="password" class="form-control" placeholder="Enter Password..." required name="password">
        <br>
        <button class="btn btn-success">Submit</button>
        <a href ="../index.html?cancel" class="btn btn-danger">Cancel</a>
        
    </form>


</div>
<%@include file="../shared/footer.jsp" %>

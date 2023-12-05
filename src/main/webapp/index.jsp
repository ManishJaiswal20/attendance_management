<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attendence Management</title>
<link rel="icon" href="images/fav1.png">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a href="index.jsp"><img alt="aaa" src="images/xyz.png" height="50px" width="50px"></a>&nbsp
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="mx-auto">
      <li type="none">
      <p class="navbar-brand">ATTENDENCE MANAGEMENT FOR XYZ COMPANY</p>
      </li>
    </ul>
    
      <button class="btn btn-warning my-2 my-sm-0" type="submit" data-toggle="modal" data-target="#login">Login</button>&nbsp&nbsp
    
      <button class="btn btn-warning my-2 my-sm-0" type="submit" data-toggle="modal" data-target="#signup">Sign up</button>
    
  </div>
  
</nav>

<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Login form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="post" action="checklogin.jsp">
		  <div class="form-group">
		    <label for="exampleInputEmail1">*Username or Email address:</label>
		    <input type="text" class="form-control" name="uemail" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter username or email" required>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1">*Password:</label>
		    <input type="password" class="form-control" name="upass" id="exampleInputPassword1" placeholder="Password" required>
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Login</button>
		</form>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Sign up form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="insertsignup.jsp">
          <div class="form-group">
		    <label for="exampleInputEmail1">*Username:</label>
		    <input type="text" class="form-control" name="vusername" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter username" required>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputEmail1">*Email address:</label>
		    <input type="text" class="form-control" name="vemail" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputEmail1">*Contact:</label>
		    <input type="text" class="form-control" name="vcontact" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Contact Details" required>
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1">*Password:</label>
		    <input type="password" class="form-control" name="vpass" id="exampleInputPassword1" placeholder="Password" required>
		  </div>
		  
		  <button type="submit" class="btn btn-primary">sign up</button>
		</form>
      </div>
    </div>
  </div>
</div>

</body>
</html>
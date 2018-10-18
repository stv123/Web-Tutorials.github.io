<!DOCTYPE html>
<html lang="en">
<head>
  <title>Web Tutorials</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body class="bg-success">
    <br>
    <br>
    <div class="container">
        <div class="page-header">
         <h2>Welcome to web Tutorials</h2>
            </div>
    <div class="row">
       
        <div class="col-sm-12">
        
    
    
    <div class="panel panel-danger">
      <div class="panel-heading">Online Quiz Recommended by Web Tutorials</div>
    </div>
        </div>
        </div>
    </div>
    

    
 
<div class="container">
    
    <div class="row">
    <div class="col-sm-6">
        <br>
    <br>
 
  <div class="panel panel-info">
          
             <div class="panel-heading"> <h4>Log In Form</h4></div>
             <div class="panel-body">
                 <?php
                 if(isset($_GET['run']) && $_GET['run']=="failed")
                 {
                     echo "<mark>Email Id or Password is not correct</mark>";
                 }
                 ?>
  <form role="form" action="log_in.php" method="post">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" name="e" id="email" placeholder="Enter email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="p" id="pwd" placeholder="Enter password">
    </div>
        <button type="submit" class="btn btn-default">Submit</button>
  </form>
        </div>
            </div>
        
        </div>
        <div class="col-sm-6">
         <div class="panel panel-info">
             <div class="panel-heading"> <h4>Sign up Form</h4></div>
             <div class="panel-body">
                 <?php 
                 if(isset($_GET['run'])&& $_GET['run']=="success")
{
    echo "<mark>Welcome Dear <br> Your are registered successfully</mark>";
}
                 ?> 
  <form role="form" method="post" action="sign_up.php" enctype="multipart/form-data">
       <div class="form-group">
      <label for="Name">Name:</label>
      <input type="text" class="form-control" name ="n" id="Name" placeholder="Enter Your Name / Username">
    </div>

    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" name ="e" id="email" placeholder="Enter email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name ="p" id="pwd" placeholder="Enter password">
    </div>
       <div class="form-group">
      <label for="pwd">Upload Your Image</label>
      <input type="file" class="form-control" name ="img" accept="image/jpeg">
    </div>

        <button type="submit" class="btn btn-default">Submit</button>
  </form>
        </div>
            </div>
  
    
  </div>
</div>
</div>
</body>
</html>

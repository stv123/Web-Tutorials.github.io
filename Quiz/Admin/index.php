<?php
include "../class/users.php";
$cat=new users;
$catagory=$cat->cat_shows();
//print_r($catagory);

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Admin Panel</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="..//css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="..//css/dashboard.css" rel="stylesheet">

    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
  </head>

  <body class="bg-success">

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="http://localhost/Project/index.html" target="_blank">Web Tutorials</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="http://localhost/Project/Quiz/Admin/">Dashboard</a></li>
            <li><a href="http://localhost/Project/Aboutus/index.html" target="_blank">Profile</a></li>
            <li><a href="http://localhost/Project/Contact/contact-form.php" target="_blank">Help</a></li>
          </ul>
          <form class="navbar-form navbar-right">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="http://localhost/Project/Quiz/Admin/">Overview <span class="sr-only">(current)</span></a></li>
            <li><a href="http://localhost/Project/project%20report.pdf" target="_blank">Reports</a></li>
                    </ul>
          </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h4 class="page-header">Welcome to Web Tutorials Admin Panel</h4>
            <div class="table-responsive">
            <table class="table table-striped">
           <?php
                if(isset($_GET['msg']) && !empty($_GET['msg']))
                {
                   echo "<p>Thank you Sir <br> Data has been inserted successfully <p>";   
                }
                ?>
                
  <form method="post" action="add_quiz.php">
    <div class="form-group">
      <label for="text">Question</label>
      <input type="text" class="form-control" name="ques" placeholder="Enter the Question">
    </div>
      
      <div class="form-group">
      <label for="text">Option-1</label>
      <input type="text" class="form-control" name="op1" placeholder="Enter the Option-1">
    </div>
      
      <div class="form-group">
      <label for="text">Option-2</label>
      <input type="text" class="form-control" name="op2" placeholder="Enter the Option-2">
    </div>
      
      <div class="form-group">
      <label for="text">Option-3</label>
      <input type="text" class="form-control" name="op3" placeholder="Enter the Option-3">
    </div>
      
      <div class="form-group">
      <label for="text">Option-4</label>
      <input type="text" class="form-control" name="op4" placeholder="Enter the Option-4">
    </div>
      
      <div class="form-group">
      <label for="text">answer</label>
      <input type="text" class="form-control" name="ans" placeholder="Enter the correct answer">
    </div>
      <div class="form-group">
          
          
              <select class="form-control" id="sell" name="cat">
                   <option value="">Choose category</option>
                  <?php
                  foreach($catagory as $c)
                  {
                      echo "<option value=".$c['id'].">".$c['cat_name']."</option>";
                  }
                  
                  ?>
             </select>
          </div>
     
                  
        
    <button type="submit" class="btn btn-default">Submit</button>
      <br>
  </form>
 
              
            </table>
          </div>
        </div>
      </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/vendor/holder.min.js"></script>
    <script src="../js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>

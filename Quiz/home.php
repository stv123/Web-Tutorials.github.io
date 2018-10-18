<?php
include("class/users.php");
$email=$_SESSION['email'];
$profile=new users;
$profile->users_profile($email);

//print_r($profile->data);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Quiz Competetion</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
</head>
    <style>
    body {
   background-image: url("image.jpg");
   background-color: #cccccc;
        background-repeat: no-repeat;
        
    
        
       
}
        </style>
<body class="bg-success">
    

<div class="container">
  
  <h2><b>Web Tutorials : Online Quiz</b> </h2>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
      <button style="float:right"><a href="http://localhost/Project/index.html">Back To Home</a></button>
    <li><a data-toggle="tab" href="#menu1">My Profile</a></li>
    
        </ul>
    
  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
        <h3><i>A quiz is a form of game or mind sport, in which the players attempt to answer questions correctly. It is a<br><br> game to test your knowledge about a certain subject. In some countries, a quiz is also a brief assessment<br><br> used in education and similar fields to measure growth in knowledge, abilities, and/or skills. <b>Quizzes are <br><br>usually scored in points and many quizzes are designed to determine a winner from a group of<br><br> participants – usually the participant with the highest score.</b></i></h3><br>
          <center><h3>Play Quiz</h3></center><br>
        <center><button type="button" class="btn btn-primary" data-toggle="tab" href="#select" >Start Quiz</button></center>
                <div class="col-sm-4"></div>
            
         <div class="col-sm-4"><br>
              <div id="select" class="tab-pane fade">
                  <form method="post"action="ques_show.php">
                  
                  
                 <select class="form-control" id="" name="cat" >
                 
          <option>SELECT THE LANGUAGE</option>
                      <?php
                 $profile->cat_shows();
                 foreach($profile->cat as $catagory)
                 { ?>
                     <option value="<?php echo $catagory['id'];?>" ><?php echo $catagory ['cat_name']; ?> </option>

                     <?php  }
                     ?> 
                     </select><br>
                       <center><input type="submit" value="submit" class="btn btn-primary"/></center>
                     
                  </form>
                 </div>
             
            </div>
      
    <div class="col-sm-4"></div>
        </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Sowing Profile</h3>
        <table class="table">
    <thead>
      <tr>
        <th>id</th>
        <th>name</th>
          <th>email</th>
          <th>image</th>
      </tr>
    </thead>
   
        
        <?php
        foreach($profile->data as $prof)
        {   ?>
        <tr>
        <td><?php echo $prof['Id'];?></td>
        <td><?php echo $prof['Name'];?></td>
             <td><?php echo $prof['Email'];?></td>
             <td><img src="img/<?php echo $prof['img'];  ?>" alt="" width="200px" height="200px" /></td>
    
         
                      </tr>
                  
     <?php   }?>
   
  </table> 
    </div>
     </div>
</div>
    <div class="col-sm-4"></div>
    </div>
    <div id="log" class="tab-pane fade">
        <form role="form" method="post" action="index.php" enctype="multipart/form-data"></form>

</body>
</html>

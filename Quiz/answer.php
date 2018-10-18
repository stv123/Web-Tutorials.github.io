<?php

include("class/users.php");
$ans=new users;
$answer=$ans->answer($_POST);
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
    
    <style>
    body {
   background-image: url("imagess.jpg");
   background-color: #cccccc;
        
        
       
}
        </style>
    <meta charset="UTF-8">
    <title>Answer</title> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
    
    </head>
    <body class="bg-success">
        <center>
            <?php
            $total_questions=$answer['right']+$answer['wrong']+$answer['no_answer'];
            $attempt_questions=$total_questions-$answer['no_answer'];
            
            
            ?>
            
            
            <div class="container">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
  <h1><b>Your Quiz Result</b></h1>
  <p></p>                        
  <table class="table table-bordered">
    <thead>
      <tr>
        <th><b>Total Number of Questions</b></th>
        <th><?php echo $total_questions; ?></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><b>Attempted Questions</b></td>
        <td><?php echo $attempt_questions; ?></td>
      </tr>
      <tr>
        <td><b>Right Answers</b></td>
        <td><?php echo $answer['right']; ?></td>
      </tr>
      <tr>
        <td><b>Wrong Answers</b></td>
        <td><?php echo $answer['wrong']; ?></td>
      </tr>
        <tr>
        <td><b>Not Attempted</b></td>
        <td><?php echo $answer['no_answer']; ?></td>
      </tr>
        <tr>
            <td><b>Your Percentage</b></td>
        <td><?php
            $per=($answer['right']*100)/($total_questions);
            echo $per."%";
            ?>
            </td>
            
            
        
      </tr>
    </tbody>
                     </table></div>
                      <div class="col-sm-2"></div>
</div>
            <center><button><a href="logout.php">logout</a></button></center>
            <center><button><a href="http://localhost/Project/index.html">Back To Home</a></button></center>
            

    
    </center>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>



<?php
extract($_POST);
include "../class/users.php";
$quiz=new users;
$ques=htmlentities($ques);
$option1=htmlentities($op1);
$option2=htmlentities($op2);
$option3=htmlentities($op3);
$option4=htmlentities($op4);
$array=[$option1,$option2,$option3,$option4];
$answer=array_search($ans,$array);
$query="insert into questions values('','$ques','$option1','$option2','$option3','$option4','$answer','$cat')";
if($quiz->add_quiz($query));
{  $quiz->url("index.php?msg=run");
   // echo "Thank you Sir <br> Data has been successfully inserted";
}





?>
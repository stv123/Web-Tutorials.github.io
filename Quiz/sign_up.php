<?php
include("class/users.php");
$register=new users;
extract($_POST);
$img_name=$_FILES['img']['name'];
$tmp_name=$_FILES['img']['tmp_name'];
move_uploaded_file($tmp_name,"img/".$img_name);
$query="insert into signin values('','$n','$e','$p','$img_name')";
if($register->signin($query))
{
    $register->url("index.php?run=success");
}




?>
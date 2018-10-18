<?php
include("class/users.php");
$sign=new users;
extract($_POST);
if($sign->sign($e,$p))
{
    $sign->url("home.php");
}
else
{
    $sign->url("index.php?run=failed");
}


?>
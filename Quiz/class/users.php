<?php
session_start();
class users
{
    public $host="localhost";
    public $username="root";
    public $pass="";
    public $db_name="quiz";
    public $conn;
    public $data;
    public $cat;
    public $ques;
    
    public function __construct()
    {
        $this->conn=new mysqli($this->host,$this->username,$this->pass,$this->db_name);
        if($this->conn->connect_errno)
        {
            die ("database connection failed".$this->conn->connect_errno);
        }
    }
    public function signin($data)
    {
       $this->conn->query($data); 
        return true;
    }
    public function sign($email,$pass)
    {
        $query=$this->conn->query("select email,pass from signin where email='$email' and pass='$pass'");
        $query->fetch_array(MYSQLI_ASSOC);
        if($query->num_rows>0)
        {
            $_SESSION['email']=$email;
            return true;
        }
        else
        {
            return false;
        }
    }
    public function users_profile($email)
    {
        $query=$this->conn->query("select * from signin where email='$email'");
       $row=$query->fetch_array(MYSQLI_ASSOC);
        if($query->num_rows>0)
        {
           
           $this->data[]=$row;
        }
        return $this->data;
         
    }
    Public function cat_shows()
    {
        
        $query=$this->conn->query("select * from catagory");
       while($row=$query->fetch_array(MYSQLI_ASSOC))
        if($query->num_rows>0)
        {
           
           $this->cat[]=$row;
        }
        return $this->cat;
    }
    public function ques_show($ques)
    {
        //echo $ques;
   $query=$this->conn->query("select * from questions where cat_id='$ques'");
       while($row=$query->fetch_array(MYSQLI_ASSOC))
         if($query->num_rows>0)
        {
           
           $this->ques[]=$row;
        }
        return $this->ques;
  
    }
    public function answer($data)
    {
       $ans= implode("", $data);
        $right=0;
        $wrong=0;
        $no_answer=0;
   $query=$this->conn->query("select id, ans from questions where cat_id='".$_SESSION['cat']."'");
       while($quest=$query->fetch_array(MYSQLI_ASSOC))
         
        {
           
         if($quest['ans']==$_POST[$quest['id']])
             {
                 $right++;
             }
             elseif($_POST[$quest['id']]=="No_attempt")
             {
                 $no_answer++;
             }
             else
             {
                $wrong++; 
             }
        }
        $array=array();
        $array['right']=$right;
        $array['wrong']=$wrong;
        $array['no_answer']=$no_answer;
        return $array;
       
    }
    public function add_quiz($rec)
    {
       $a=$this->conn->query($rec);
        return true;
      /*  if($a->num_rows>0)
        {
            return true;
        }
        else
        {
            return false;
        } */
    }

  
    
    
    public function url($url)
    {
        header("location:".$url);
    }
    
    public function logout($out)
    {
        $a=$this->conn->query($out);
        return true;
       
header('location:http://localhost:80/naz/Quiz/log_in.php');
    }
}

?>
<?php
   include("Config.php");
   session_start();
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      
      $mymail = mysqli_real_escape_string($db,$_POST['CorrClient']);
      $mypassword = mysqli_real_escape_string($db,$_POST['PassClient']); 
      
      $sql = "SELECT id FROM admin WHERE username = '$mymail' and passcode = '$mypassword'";
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $active = $row['active'];
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
         session_register("mymail");
         $_SESSION['login_user'] = $mymail;
         
         header("location: Donkeyfood.jsp");
      }else {
         $error = "Tu correo es incorrecto";
      }
   }
?>

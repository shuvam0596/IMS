<?php

  include_once('include/database.php');   


if(!empty($_POST["email"])) {
$result = mysqli_query($link,"SELECT count(*) FROM registration WHERE email='" . $_POST["email"] . "'");
$row = mysqli_fetch_row($result);
$user_count = $row[0];
if($user_count>0) {

    //email is already taken
    echo 0;
}
else {
    //email is available
    echo 1;
}
	}	
?>
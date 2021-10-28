<?php
    define("SERVERNAME",'localhost');
    define("USER",'root');
    define("PASSWORD",'');
    define("DBNAME",'task_system');
    $conn=mysqli_connect(SERVERNAME,USER,PASSWORD,DBNAME);
    if($conn) {
       echo "you are coonected to the database" ;
    }
    else {
        echo "error" ;
    }
?>
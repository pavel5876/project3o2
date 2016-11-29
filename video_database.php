<?php
    if(isset($_POST['share']))
{
    try {

        // connect to mysql

        $pdoConnect = new PDO('mysql:host=localhost;dbname=videos_db;charset=utf8','root','');
    } 
    catch (PDOException $e) {
        echo $e->getMessage();
        exit();
    }

    $uplfname = $_POST['uplfirstname'];
    $upllname = $_POST['upllastname'];
    $birthdate = $_POST['uplbirthdate'];
    $gender = $_POST['uplgender'];
    $email = $_POST['email'];
    $ocupation = $_POST['ocupation'];
    $videoname = $_POST['videoname'];
    $videotype = $_POST['videotype'];
    $link = $_POST['link'];
    $description = $_POST['videodescription'];
    
    // mysql query to insert data

    $pdoQuery = "INSERT INTO `videos`(`upl_first_name`, `upl_last_name`, `birthdate`, `gender`, `email`, `ocupation`, `videoname`, `videotype`, `link`, `description`) VALUES (:uplfirstname,:upllastname,:uplbirthdate,:uplgender,:email,:ocupation,:videoname,:videotype,:link,:videodescription)";
    
    $pdoResult = $pdoConnect->prepare($pdoQuery);
  
    $pdoexec = $pdoResult->execute(array(":uplfirstname"=>$uplfname,":upllastname"=>$upllname,":uplbirthdate"=>$birthdate,":uplgender"=>$gender,":email"=>$email,":ocupation"=>$ocupation,":videoname"=>$videoname,":videotype"=>$videotype,":link"=>$link,":videodescription"=>$description));
    
    // check if mysql insert query successful
}
header("location: participate.php?adedd=$videoname");
?>
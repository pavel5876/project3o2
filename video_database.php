<?php
    try {

        // connect to mysql

        $pdoConnect = new PDO('mysql:host=angelosantoniou.com.mysql;dbname=angelosantoniou_com;charset=utf8','angelosantoniou_com','PXXkSYzu');
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
    
    $newlink = substr($link, 16);
    // query to insert data

    $pdoQuery = "INSERT INTO `videos`(`upl_first_name`, `upl_last_name`, `birthdate`, `gender`, `email`, `ocupation`, `videoname`, `videotype`, `link`, `description`) VALUES (:uplfirstname,:upllastname,:uplbirthdate,:uplgender,:email,:ocupation,:videoname,:videotype,:newlink,:videodescription)";
    
    $pdoResult = $pdoConnect->prepare($pdoQuery);
  
    $pdoexec = $pdoResult->execute(array(":uplfirstname"=>$uplfname,":upllastname"=>$upllname,":uplbirthdate"=>$birthdate,":uplgender"=>$gender,":email"=>$email,":ocupation"=>$ocupation,":videoname"=>$videoname,":videotype"=>$videotype,":newlink"=>$newlink,":videodescription"=>$description));
    
    if($pdoexec)
    {
        echo 'You video is shared! | Go to the <a href="gallery.php">gallery.</a>';
    }else{
        echo 'An error occured | Go back to <a href="participate.php">participate.</a>';
    }

?>
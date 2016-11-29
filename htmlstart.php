<?php
	function start($title, $description) {
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php echo $title ?></title>
	<link rel="stylesheet" type="text/css" href="res/reset.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="res/style.css">
    <link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet">
</head>
<body>
    <div class="logolinks">
        <nav>
            <ul>
                <li><a class="logo" href="index.php"><img src="img/logo.png"></a></li>
                <li><a href="vote.php"><h3>Vote</h3></a></li>
                <li><a href="participate.php"><h3>Participate</h3></a></li>
            </ul>
        </nav>
    </div>

<?php
	}
?>
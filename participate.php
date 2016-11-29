<?php
    include "htmlstart.php";
    start("Video Gallery |", "Check out the videos participating in our contest");
?>
<h1>Gallery</h1>

<div id="upload_form">
	<form action="video_database.php" method="POST">
		<section class="form user">
			<input type="text" name="uplfirstname" required placeholder="First name..."></input>
			<input type="text" name="upllastname" required placeholder="Last name..."></input><br />
			<input type="date" name="uplbirthdate" required placeholder="Select a date..."></input><br />
			<select required name="uplgender">
				<option>Male</option>
				<option>Female</option>
			</select><br />
			<input type="email" name="email" required placeholder="E-mail..."></input><br />
			<input type="text" name="ocupation" placeholder="Ocupation..."></input>
		</section>
		<section class="form video">
			<input type="text" name="videoname" required placeholder="Video name..."></input><br />
			<select required name="videotype">
				<option>Animation</option>
				<option>Stop Motion</option>
				<option>Trailer</option>
			</select><br />
			<input type="url" name="link" required placeholder="Video url..."></input><br />
			</section>
		<textarea rows="4" cols="50" name="videodescription" max="200" required placeholder="Description..."></textarea><br />
		<input type="submit" name="share" value="Insert Data"></input>
	</form>
		<?php
	if ($_GET['adedd']) {
		$adedd = $_GET['adedd'];
		echo "$adedd has been succesfully posted!";}
		// } else {
		// 	echo "There was a problem. $success has not been shared!";
		// }
?>

</div>

<?php
	include("htmlend.php");
?>
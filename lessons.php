<meta name='viewport' content='user-scalable=0,width=device-width'/>
<link rel='stylesheet' href='/projects/elearn/style.css' />
<?php include_once('database_connectivity.php'); ?>



<div class='header'>
	<img src='images/logo.png' id='logo'/>
	<?php
		$lessons_id=$_GET['id'];
		
		$user_id=$_COOKIE['id'];
		
	
		$query=mysqli_query($db,"SELECT * FROM completion WHERE user_id=$user_id AND lessons LIKE '% $lessons_id %'");
		if(mysqli_num_rows($query)>0){
			echo "<a id='complete-link' href='uncomplete.php?user_id=".$user_id."&lesson_id=".$lessons_id."'>";
			echo "<button id='complete'>&#10004; MARK AS UNCOMPLETE</button>";
			echo "</a>";
		}
		else{
			echo "<a id='complete-link' href='complete.php?user_id=".$user_id."&lesson_id=".$lessons_id."'>";
			echo "<button id='complete'>&#10004; MARK AS COMPLETE</button>";
			echo "</a>";
		}
	
	
		
	?>
</div>

<div class='container'>
	<?php
	

	$query=mysqli_query($db,"SELECT * FROM lessons WHERE id='$lessons_id'");
	while($row=mysqli_fetch_array($query)){
		echo "<video src='".$row['video']."' autoplay controls></video>";
	}
	
	?>
</div>
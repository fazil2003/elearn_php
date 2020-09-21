<meta name='viewport' content='user-scalable=0,width=device-width'/>
<link rel='stylesheet' href='/projects/elearn/style.css' />
<?php include_once('database_connectivity.php'); ?>


<div class='header'>
	<img src='images/logo.png' id='logo'/>
</div>

<div class='container'>
	<?php
	$query=mysqli_query($db,"SELECT * FROM courses");
	while($row=mysqli_fetch_array($query)){
		echo "<a href='courses.php?id=".$row['id']."'>";
		echo "<div class='courses-box'>";
		echo "<img src='".$row['image']."'/>";
		echo "<p id='heading'>".$row['name']."</p>";
		echo "<p id='description'>".$row['description']."</p>";
		echo "<p id='tags'>".$row['tags']."</p>";
		echo "<p id='enrolls'><button id='enroll-button'>Enroll</button> - Total Enrolls <b>".$row['enrolls']."</b></div>";
		echo "</a>";
	}
	
	?>
</div>
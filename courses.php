<meta name='viewport' content='user-scalable=0,width=device-width'/>
<link rel='stylesheet' href='/projects/elearn/style.css' />
<?php include_once('database_connectivity.php'); ?>


<div class='header'>
	<img src='images/logo.png' id='logo'/>
</div>

<div class='container'>
	<?php
	$course_id=$_GET['id'];
	
	$query=mysqli_query($db,"SELECT * FROM courses WHERE id='$course_id'");
	while($row=mysqli_fetch_array($query)){
		echo "<p id='title-header'>".$row['name']."</p>";
	}
		
		
	$query=mysqli_query($db,"SELECT * FROM lessons WHERE topic='$course_id'");
	
	$total_lessons=mysqli_num_rows($query);
	$total_completed=0;
	
	while($row=mysqli_fetch_array($query)){
		
		$lessons_id=$row['id'];
		$user_id=$_COOKIE['id'];
		
		$query1=mysqli_query($db,"SELECT * FROM completion WHERE user_id=$user_id AND lessons LIKE '% $lessons_id %'");
		if(mysqli_num_rows($query1)>0){
			echo "<a href='lessons.php?id=".$row['id']."'>";
			echo "<div class='lessons-box' id='completed-box'>";
			echo "<p id='title'>".$row['name']."</p>";
			echo "<p id='description'>".$row['description']."</p></div>";
			echo "</a>";	
			$total_completed=$total_completed+1;
		}
		else{
			echo "<a href='lessons.php?id=".$row['id']."'>";
			echo "<div class='lessons-box'>";
			echo "<p id='title'>".$row['name']."</p>";
			echo "<p id='description'>".$row['description']."</p></div>";
			echo "</a>";
		}
	}
	
	if($total_completed==$total_lessons){
		
			$characters='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
			$randomstring='';
			for($i=0;$i<15;$i++){
				$index=rand(0,strlen($characters)-1);
				$randomstring.=$characters[$index];
			}
			
			$query_cert=mysqli_query($db,"SELECT * FROM certificates WHERE user_id='$user_id' AND course_id='$course_id'");
			if(mysqli_num_rows($query_cert)==0){
				mysqli_query($db,"INSERT INTO certificates (user_id,course_id,hash) VALUES ('$user_id','$course_id','$randomstring')");
				$hash=$randomstring;
			}
			
			while($row_cert=mysqli_fetch_array($query_cert)){
				$hash=$row_cert['hash'];
			}
			
			echo "<a id='complete-link' href='certificate.php?id=".$hash."'>";
			echo "<button id='complete'>&#10004; GET CERTIFICATE</button>";
			echo "</a>";
	}
	?>
</div>
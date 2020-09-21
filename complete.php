<?php include_once('database_connectivity.php'); ?>


<?php
	$user_id=$_GET['user_id'];
	$lesson_id=$_GET['lesson_id'];
	
	$query=mysqli_query($db,"SELECT * FROM completion WHERE user_id=$user_id");
	$complete_lesson='';
	while($row=mysqli_fetch_array($query)){
		$complete_lesson=$row['lessons'];
	}
	
	$complete_lesson=$complete_lesson." ".$lesson_id." ";
	
	mysqli_query($db,"UPDATE completion SET lessons='".$complete_lesson."' WHERE user_id='".$user_id."'");
	
	echo"<script>
	function backfn(){
		history.go(-1);
	}
	backfn();
	</script>";
	
?>
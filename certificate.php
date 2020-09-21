<?php include_once('database_connectivity.php'); ?>

<?php

$hash=$_GET['id'];

$query=mysqli_query($db,"SELECT * FROM certificates WHERE hash='$hash'");
while($row=mysqli_fetch_array($query)){
	$user_id=$row['user_id'];
	$course_id=$row['course_id'];
	
	$query1=mysqli_query($db,"SELECT * FROM users WHERE id=$user_id");
	while($row1=mysqli_fetch_array($query1)){
		$name=$row1['name'];
	}
	
	$query2=mysqli_query($db,"SELECT * FROM courses WHERE id=$course_id");
	while($row2=mysqli_fetch_array($query2)){
		$course=$row2['name'];
	}
	
	#echo $name." completed ".$course;
	echo "<img id='certificate' src='/projects/elearn/images/certificate/certificate.png' />";
	echo "<span id='name'>".$name."</span>";
	echo "<span id='course'>".$course."</span>";
}

?>

<style>
html{
	font-family:Verdana;
}
#certificate{
	width:800px;
	height:420px;
}
#name{
	color:purple;
	font-size:30px;
	position:fixed;
	z-index:2;
	top:190px;
	left:360px;
}
#course{
	color:purple;
	font-size:25px;
	position:fixed;
	z-index:2;
	top:252px;
	left:350px;
}
</style>
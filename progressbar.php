<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
      
  </style><link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
 
<div class="container">
 
    <?php 
if(isset($_POST['submit'])){
	$con=mysqli_connect("localhost","root","");
		if(mysqli_connect_errno()){
			echo "failed to connect";
			mysqli_connect_error();
			exit();
		}
		mysqli_select_db($con,"azure");
		$username = $_POST['Name'];
		$sql="SELECT user_id from user where u_name='$username'";
		$result=mysqli_query($con,$sql); 
		$res=mysqli_num_rows($result);
		$result = mysqli_query($con,"select count(1) FROM user");
		$row = mysqli_fetch_array($result);

		$total = $row[0];

		mysqli_close($con);
 $to= ($res/$total)*100;
}
?>
    
 <div class="progress progress-striped active">
<div class="progress-bar progress-bar-warning" style="width: <?php echo $to; ?>%"><?php echo $to;?>%</div>
</div>
 
<form method="post" action="#" >
   <input type="text" name="Name">
   <input type="submit" name="submit"> 
</form>
</body>
</html
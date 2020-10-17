
<?php include_once('connection.php'); ?>


<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>

<body>
	<h3><u>Course Videos </u></h3>
	<table border="1">
		<tr>
			<th>Video Name</th>
			<th>Course Videos</th>
			<th>Description</th>
			<th>Action</th>
		</tr>
		<?php 
			$sql = "SELECT * FROM video_table where course_id=$course_id";
			$result = $conn->query($sql);

			while($row = $result->fetch_assoc()){
				?>
				<tr>
					<td><?php echo $row['name']; ?></td>
					<td><?php echo $row['video_link']; ?></td>
					<td><?php echo $row['description']; ?></td>
					<td><a href="editForm_video.php?mode=edit&video_id=<?php echo $row['video_id']; ?>">Edit</a> | <a href="allfunction1.php?mode=delete_video&video_id=<?php echo $row['video_id']; ?>">Delete</a></td>
				</tr>
				<?php
			} 
		?>
	</table>
	<br>

	<center><a class="site-btn" href="video_display.php?course_id=<?php echo $course_id ?>" style="color: white">Course Gallery</a></center>
	<hr>
	<h3><u>Insert Video Form</u></h3>
	<form name="" action="allfunction1.php" method="post">
		<table border="1">
			<tr style="display: none;">
				<td>Course Id: </td>
				<td><input type="hidden" readonly="" value="<?php echo $id ?>" name="course_id"></td>
			</tr>
			<tr style="display: none;">
				<td>User Id: </td>
				<td><input type="hidden" readonly="" > value="<?php echo $user_id ?>" name="user_id"></td>
			</tr>
			<tr>
				<td>Video Name: </td>
				<td><input type="text" name="name" style="width: 400px; height: 35px"></td>
			</tr>
			<tr>
				<td>Video Link: </td>
				<td><input type="text" name="video_link" style="width: 400px; height: 35px"></td>
			</tr>
			<tr>
				<td>Description: </td>
				<td><input type="text" name="description" style="width: 400px; height: 35px"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" style="background-color: #28a745;" name="videobn"></td>
			</tr>
		</table>
	</form>
	


</body>
</html>
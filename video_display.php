<?php include_once('header.php'); ?>
<!-- PHP CODE -->
<?php include('connection.php'); 
 if (isset($_GET['course_id'])) {
  $course_id=$_GET['course_id'];
  
}
else
{
  echo "Not done";
}
?>
<iframe src="video_table.php?course_id=<?php echo $course_id ?>" scrolling="no"  frameborder="no" width="100%" height="905px"></iframe>


<?php include_once('footer.php'); ?>
<?php
if (isset($_GET['course_id'])) {
  $course_id=$_GET['course_id'];
  
}
else
{
  echo "Not done";
}
?>
<head>
	<!-- Favicon -->
	<link href="img/icons/icon.jpg" rel="shortcut icon"/>
</head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body onLoad="popUp()">
<script>
  function popUp(){

    swal({
  title: "Video progress must be greater than 80%",
  text: "",
  icon: "error",
  button:"OK",
}).then(function() {
    window.location = "video_display.php?course_id=<?php echo $course_id ?>";
});
  }
</script>
<!-- <body onload="myFunction()"></body>

<script>
function myFunction() {
  setTimeout(function(){ location.href='dashboard.php' }, 500);
}
</script> -->
<head>
	<!-- Favicon -->
	<link href="img/icons/icon.jpg" rel="shortcut icon"/>
</head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body onLoad="popUp()">
<script>
  function popUp(){

    swal({
  title: "Page Under Construction !!",
  text: "Will be published by today",
  icon: "",
  button:"OK",
}).then(function() {
    window.location = "index.php";
});
  }
</script>
<!-- <body onload="myFunction()"></body>

<script>
function myFunction() {
  setTimeout(function(){ location.href='dashboard.php' }, 500);
}
</script> -->
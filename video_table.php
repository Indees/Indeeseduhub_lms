<section style="display: none;">
<head>
  <title>Indees Educational Hub | Online Education Portal</title>
  <meta charset="UTF-8">
  <meta name="description" content=" Divisima | eCommerce Template">
  <meta name="keywords" content="divisima, eCommerce, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Favicon -->
  <link href="img/icons/icon.jpg" rel="shortcut icon"/>

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i" rel="stylesheet">


  <!-- Stylesheets -->
  <link rel="stylesheet" href="css/bootstrap.min.css"/>
  <link rel="stylesheet" href="css/font-awesome.min.css"/>
  <link rel="stylesheet" href="css/flaticon.css"/>
  <link rel="stylesheet" href="css/slicknav.min.css"/>
  <link rel="stylesheet" href="css/jquery-ui.min.css"/>
  <link rel="stylesheet" href="css/owl.carousel.min.css"/>
  <link rel="stylesheet" href="css/animate.css"/>
  <link rel="stylesheet" href="css/style.css"/>

</head>
</section>

<!-- USER -->
<?php
  error_reporting(E_ERROR | E_WARNING | E_PARSE);
  session_start();

if(isset($_SESSION['uid'])){
  include_once('dbclass.php');
  $db=new db;

  $res=$db->getUserData();
  $row=mysqli_fetch_array($res,MYSQLI_ASSOC);
  
}
else{
  header("location:login.php");
  exit;
}
?>

<?php
$original_id=$_SESSION['uid'];
global $original_id;
/*$name=$row['name'];
$phone=$row['phone'];
$email=$row['email'];*/

?>

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

<?php

$db=$conn;
  global $db;
  $get_product="SELECT * FROM lms_table WHERE course_id='$course_id' ";
  $run_products=mysqli_query($db,$get_product);
   if (mysqli_num_rows($run_products)>0) 
   {
    while ($row_product=mysqli_fetch_array($run_products)) {
    $course_id=$row_product['course_id'];
    $user_id = $row_product['user_id'];
    $original_name = $row_product['course'];
    $link = $row_product['link'];

        
      }
   }
  else
   {
    echo "No Data Available";
   }
?>


<!DOCTYPE html>
<html lang="en">
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>

body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
.w3-red, .w3-hover-red:hover {
    color: #fff!important;
    background-color: #282828!important;
}

@media (min-width: 767px){
.w3-red{
  
}
}
.w3-container iframe{
  width: 1120px;
  height:600px;
}

@media (min-width: 320px) and (max-width: 767px)
{ 
  
  .w3-container iframe{
  padding-top: 10px;
  height: 580px;
  width: 344px;
}
}
/*PROGRESSBAR*/
<?php 
global $total;
        $total=0;
    global $calculate;
        $calculate=0;

    $db=$conn;
    global $db;
    $get_product="SELECT * FROM video_table WHERE course_id='$course_id'";
    $run_products=mysqli_query($db,$get_product);
     if (mysqli_num_rows($run_products)>0) 
     {
        while ($row_product=mysqli_fetch_array($run_products)) {
        $video_id=$row_product['video_id'];
        $course_id=$row_product['course_id'];
        $user_id = $row_product['user_id'];
        $name = $row_product['name'];
        $video_link = $row_product['video_link'];

         $total = $total + 1;

        $db1=$conn;
        global $db;
        $count="SELECT * FROM video_watch WHERE user_id=$original_id and video_id=$video_id";
        $count_run=mysqli_query($db1,$count);
        if (mysqli_num_rows($count_run)>0) 
           {
              $status='checked';
              $calculate = $calculate + 1;
            }
            else
            {
              $status="";
            }    
          
      }
     }
    else
     {
       
     }

     
    global $average;
    $average= ($calculate/$total)*100;
   
?>
</style>
<body>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-bar-block" style="background-color: #f51167;">
    <center><div class="container chart" data-size="150" data-value="<?php echo $average ?>" data-arrow="d" style="padding: 15px;"></div></center>
  </div>
  <div class="w3-bar-block">
    <a href="#intro" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white" style="background-color: #f0f0f0; color: black;  padding: 15px;"><input type="checkbox" id="vehicle1" name="vehicle1" value="1" checked onclick="return false"> Introduction</a> 
  

    <?php
    
    $db=$conn;
    global $db;
    $get_product="SELECT * FROM video_table WHERE course_id='$course_id'";
    $run_products=mysqli_query($db,$get_product);
     if (mysqli_num_rows($run_products)>0) 
     {
        while ($row_product=mysqli_fetch_array($run_products)) {
        $video_id=$row_product['video_id'];
        $course_id=$row_product['course_id'];
        $user_id = $row_product['user_id'];
        $name = $row_product['name'];
        $video_link = $row_product['video_link'];
        

         $total = $total + 1;

        $db1=$conn;
        global $db;
        $count="SELECT * FROM video_watch WHERE user_id=$original_id and video_id=$video_id";
        $count_run=mysqli_query($db1,$count);
        if (mysqli_num_rows($count_run)>0) 
           {
              $status='checked';
            }
            else
            {
              $status="";
            }    
          
          
        echo "<a href='#$video_id' onclick='w3_close()' class='w3-bar-item w3-button w3-hover-white'style='background-color: #f0f0f0; color: black;  padding: 15px;'><input type='checkbox' id='vehicle1' name='vehicle1' value='1' ".$status." onclick='return false'> $name</a>";
        
      }
     }
    else
     {
        echo "&nbsp;&nbsp;&nbsp;&nbsp;<h4>No videos are uploaded</h4>";
     }

     if ($average>=80)
      {
       echo "<a target='_parent' href='quiz.php?course_id=$course_id' onclick='w3_close()' class='w3-bar-item w3-button w3-hover-white'style='background-color: #f0f0f0; color: black;  padding: 15px;'><input type='checkbox' id='vehicle1' name='vehicle1' value='1'  onclick='return false'> Take Quiz</a>";
     }
     else
     {
      echo "<a target='_parent' href='quiz_check.php?course_id=$course_id' onclick='w3_close()' class='w3-bar-item w3-button w3-hover-white'style='background-color: #f0f0f0; color: black;  padding: 15px;'><input type='checkbox' id='vehicle1' name='vehicle1' value='1'  onclick='return false'> Take Quiz</a>";
     }


     if ($average>=80)
      {
       echo "<a target='_parent' href='take_quiz.php?course_id=$course_id' onclick='w3_close()' class='w3-bar-item w3-button w3-hover-white'style='background-color: #f0f0f0; color: black;  padding: 15px;'><input type='checkbox' id='vehicle1' name='vehicle1' value='1'  onclick='return false'> Get Certificate</a>";
     }
     else
     {
      echo "";
     }

?>

   
  

    </div>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
  <span>Video Gallery</span>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px;margin-top:-75px">

  

  <!-- Services -->
  <div class="w3-container" id="intro" style="margin-top:75px;">
    <h1 class="w3-xxxlarge"><center><b><u><?php echo $original_name ?></u></b></center></h1>
    <h1 class="w3-xxxlarge w3-text-red"><b style="color: black;">Introduction</b></h1>

    <p><iframe  src="<?php echo $link ?>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </p>
    <!-- <center><button type='submit' class='site-btn' name='deletewatchbn' >MARK AS UNREAD</button></center> -->
    <br><u><h2>Description</h2></u>
    <h4>This is the introduction video of the course</h4>
    
    <div>
      <!-- <form action="allfunction1.php" method="post">
        <input type="hidden" name="original_id" value="<?php echo $original_id ?>">
        <input type="hidden" name="course_id" value="<?php echo $course_id ?>">
        <input type="hidden" name="video_id" value="<?php echo $video_id ?>">
        <input type="hidden" name="status" value="checked">
      <center><button type="submit" class="site-btn" name="updatewatchbn" >MARK AS READ</button></center>
      </form> -->
    </div>
  </div>
  

  <!-- Designers -->
  
    
    <?php
    $db=$conn;
    global $db;
    $get_product="SELECT * FROM video_table WHERE course_id='$course_id'";
    $run_products=mysqli_query($db,$get_product);
     if (mysqli_num_rows($run_products)>0) 
     {
        while ($row_product=mysqli_fetch_array($run_products)) {
        $video_id=$row_product['video_id'];
        $course_id=$row_product['course_id'];
        $user_id = $row_product['user_id'];
        $name = $row_product['name'];
        $video_link = $row_product['video_link'];
        $description = $row_product['description'];


        echo "<div class='w3-container' id='$video_id' style='margin-top:75px'>
             <h1 class='w3-xxxlarge w3-text-red'><b style='color: black;'>$name</b></h1>
             <p><iframe  src='$video_link' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe></p>
              
             </div>";

             $db1=$conn;
        global $db;
        $count="SELECT * FROM video_watch WHERE user_id=$original_id and video_id=$video_id";
        $count_run=mysqli_query($db1,$count);
        if (mysqli_num_rows($count_run)>0) 
           {  $status="<div>
              <form action='allfunction1.php' method='post'>
              <input type='hidden' name='original_id' value='$original_id'>
              <input type='hidden' name='course_id' value='$course_id'>
              <input type='hidden' name='video_id' value='$video_id'>
            <center><button type='submit' class='site-btn' name='deletewatchbn' >MARK AS UNREAD</button></center>
            </form>
            </div>";
            }
            else
            {
              $status="<div>
              <form action='allfunction1.php' method='post'>
              <input type='hidden' name='original_id' value='$original_id'>
              <input type='hidden' name='course_id' value='$course_id'>
              <input type='hidden' name='video_id' value='$video_id'>
              <input type='hidden' name='status' value='checked'>
            <center><button type='submit' class='site-btn' name='updatewatchbn' >MARK AS READ</button></center>
            </form>
            </div>";
            }    
          echo $status;
          echo "<u><h2>Description</h2></u>
    <h4>$description</h4>";
          
      }
     }
    else
     {
        echo "&nbsp;&nbsp;&nbsp;&nbsp;<h4>No videos are uploaded</h4>";
     }
?>
    
  
 
  
  
  
<!-- End page content -->
</div>



<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}
</script>

</body>
</html>

<section style="display: none;">
<script src="script_progress.js" defer></script>
<?php include_once('footer.php'); ?>
</section>
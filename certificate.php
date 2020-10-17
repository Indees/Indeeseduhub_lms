<?php
if (isset($_GET['course_id'])) {
  $certificate_id=$_GET['course_id'];
  
}
else
{
  echo "Not done";
}

$dob=$certificate_id;
$result=explode('-',$dob);

$progress=$result[1];
$course_id=$result[0];
?>
<?php
include_once('connection.php');
$db=$conn;
  global $db;
  $get_product="SELECT * FROM lms_table WHERE course_id='$course_id' ";
  $run_products=mysqli_query($db,$get_product);
   if (mysqli_num_rows($run_products)>0) 
   {
    while ($row_product=mysqli_fetch_array($run_products)) {
    $course_id=$row_product['course_id'];
    $instructor_name=$row_product['name'];
    $original_name = $row_product['course'];

        
      }
   }
  else
   {
    echo "No Data Available";
   }
?>
<?php
session_start();
  error_reporting(E_ERROR | E_WARNING | E_PARSE);

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
$id=$_SESSION['uid'];
$u_name=$row['u_name'];
$name=$row['name'];
$phone=$row['phone'];
$email=$row['email'];
$radio=$row['radio'];
$user_id=$id;
?>
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
<!DOCTYPE  html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Get your certificate</title>
    <meta name="author" content="<?php echo $name ?>" />
    <meta name="keywords" content="DAEKfzc8Ipo,BAD_0iigdeQ" />
    <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@900&display=swap" rel="stylesheet">
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            text-indent: 0;
        }
        
        .certificate {
            background-image: url(picture.png);
            background-repeat:no-repeat;
            background-size: cover;
            height: 100vh;
        }

        .certificate .inner
        {
        	background-color: rgba(0,0,0,0.6);
        	height: 100vh;
        	padding-left: 130px;
        }
        
        .s1 {
            color: #F4D35D;
            font-family: Cambria, serif;
            font-style: normal;
            font-weight: normal;
            text-decoration: none;
            font-size: 26pt;
        }
        
        p {
            color: #FFF;
            font-family: "Trebuchet MS", sans-serif;
            font-style: normal;
            font-weight: normal;
            text-decoration: none;
            font-size: 14pt;
            margin: 0pt;
        }
        
        .s2 {
            color: #F4D35D;
            font-family: 'Sansita Swashed', cursive;
            font-weight: 900;
            text-decoration: none;
            font-size: 54pt;
        }
        
        .s3 {
            color: #FFF;
            font-family: "Trebuchet MS", sans-serif;
            font-style: normal;
            font-weight: normal;
            text-decoration: none;
            font-size: 18pt;
        }
        
        .s4 {
            color: #FFF;
            font-family: "Trebuchet MS", sans-serif;
            font-style: normal;
            font-weight: normal;
            text-decoration: none;
            font-size: 18.5pt;
        }
        
        .s5 {
            color: #F4D35D;
            font-family: Cambria, serif;
            font-style: normal;
            font-weight: normal;
            text-decoration: none;
            font-size: 16pt;
        }
    </style>
</head>

<body>
	<section class="certificate">
		<div class="inner">
            <br><br><br>
    <p style="text-indent: 0pt;text-align: left;"><br/></p>
    <p class="s1" style="padding-top: 11pt;padding-right: 70pt;text-indent: 0pt;text-align: center;">CERTIFICATE OF RECOGNITION</p>
    <p style="text-indent: 0pt;text-align: left;"><br/></p>
    <p style="padding-top: 5pt;padding-right: 70pt;text-indent: 0pt;text-align: center;">THIS IS PRESENTED TO</p>
    <p class="s2" style="padding-top: 7pt;padding-right: 70pt;text-indent: 0pt;text-align: center;"><?php echo $name ?></p>
    <p style="text-indent: 0pt;text-align: left;"><br/></p>
    <p class="s3" style="padding-top: 8pt;padding-right: 70pt;text-indent: 0pt;text-align: center;">for successfully completing the course on</p>
    <p class="s4" style="padding-top: 4pt;padding-right: 70pt;text-indent: 0pt;text-align: center;"><?php echo $original_name ?></p>
    <p class="s4" style="padding-top: 4pt;padding-right: 70pt;text-indent: 0pt;text-align: center;">from "Indees Edu Hub"</p>
    <p style="text-indent: 0pt;text-align: left;"><br/></p>
    <p class="s5" style="padding-top: 4pt;padding-right: 70pt;text-indent: 0pt;text-align: center;"><?php echo $instructor_name ?></p>
    <p style="padding-top: 3pt;padding-right: 70pt;text-indent: 0pt;text-align: center;">INSTRUCTOR</p>
    <p style="text-indent: 0pt;text-align: left;"><br/></p>
    <p class="s5" style="padding-top: 4pt;padding-right: 70pt;text-indent: 0pt;text-align: center;"><b>You score <?php echo $progress ?>% in this exam</b></p>
    <!-- <p style="padding-top: 3pt;padding-right: 70pt;text-indent: 0pt;text-align: center;">INSTRUCTOR</p> -->
    <center style="padding-right: 98px;" ><a class="site-btn"  href="print.php?course_id=<?php echo $course_id ?>-<?php echo $progress ?>" style="color: white; ">Print Certificate</a></center>
</div>
	</section>
</body>

</html>
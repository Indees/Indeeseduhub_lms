<?php  
include_once('header.php');
include_once('connection.php');
include_once('calendar.php');
 ?>


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
$id=$_SESSION['uid'];
/*$name=$row['name'];
$phone=$row['phone'];
$email=$row['email'];*/

?>

<style type="text/css">
    .div376
    {
      display: none;
    }
  </style>
<br><br>

            <div class="section-title">
                <h2>LIVE CLASSES CREATED BY YOU</h2>
            </div>

<!-- NORMAL JOB ADDS -->
<br>

<section class="product-filter-section">
  <div class="div375" id="text375">  

        <div class="container">
            
            <div class="row">

                          
<?php

$db=$conn;
  global $db;
  $get_product="SELECT * FROM job_table WHERE user_id='$id' order by 1 ASC LIMIT 0,4 ";
  $run_products=mysqli_query($db,$get_product);
   if (mysqli_num_rows($run_products)>0) 
   {
    while ($row_product=mysqli_fetch_array($run_products)) {
    $job_id=$row_product['job_id'];
    $user_id = $row_product['user_id'];
    $job_name = $row_product['name'];       
    $subject=$row_product['subject'];
    $date = $row_product['date'];
    $class = $row_product['class'];
        $apply = $row_product['apply'];
        $job_img1=$row_product['img1'];
        $job_img2=$row_product['img2'];
        $job_img3=$row_product['img3'];
          
        echo "<div class='col-lg-3 col-sm-6'>
                    <div class='product-item'>
                        <div class='pi-pic'>
                            <a href='details.php?job_id=$job_id'><img src='./img/form_img/$job_img1' alt='' height='250px' width='400px'></a>
                            <div class='pi-links'>
                                <a href='details.php?job_id=$job_id' class='add-card'><i class='flaticon-bag'></i><span>VIEW DETAILS</span></a>
                                <!--<a href='#' class='wishlist-btn'><i class='flaticon-heart'></i></a>-->
                            </div>
                        </div>
                        <div class='pi-text'>
                            <h6>$subject</h6>
                            <p5>Class :- $class</p5>
                        </div>
                    </div>
                </div>";
        
      }
   }
  else
   {
    echo "&nbsp;&nbsp;&nbsp;&nbsp;<h4>You Have not created any Live Class</h4>";
   }
?>
</div>
</div>
<div class="text-center ">
                <button class="site-btn sb-line sb-dark" id="more" onclick="pageload1()">LOAD MORE</button>
            </div>
<!-- <center><button type="submit" id="more" onclick="pageload1()">LOAD MORE</button></center> -->
</div>
<div class="div376" id="text376">
  
        <div class="container">
            
            <div class="row">

                          
<?php

$db=$conn;
  global $db;
  $get_product="SELECT * FROM job_table WHERE user_id='$id' ";
  $run_products=mysqli_query($db,$get_product);
   if (mysqli_num_rows($run_products)>0) 
   {
    while ($row_product=mysqli_fetch_array($run_products)) {
    $job_id=$row_product['job_id'];
    $user_id = $row_product['user_id'];
    $job_name = $row_product['name'];       
    $subject=$row_product['subject'];
    $date = $row_product['date'];
    $class = $row_product['class'];
        $apply = $row_product['apply'];
        $job_img1=$row_product['img1'];
        $job_img2=$row_product['img2'];
        $job_img3=$row_product['img3'];
          
        echo "<div class='col-lg-3 col-sm-6'>
                    <div class='product-item'>
                        <div class='pi-pic'>
                            <a href='details.php?job_id=$job_id'><img src='./img/form_img/$job_img1' alt='' height='250px' width='400px'></a>
                            <div class='pi-links'>
                                <a href='details.php?job_id=$job_id' class='add-card'><i class='flaticon-bag'></i><span>VIEW DETAILS</span></a>
                                <!--<a href='#' class='wishlist-btn'><i class='flaticon-heart'></i></a>-->
                            </div>
                        </div>
                        <div class='pi-text'>
                            <h6>$subject</h6>
                            <p5>Class :- $class</p5>
                        </div>
                    </div>
                </div>";
        
      }
   }
  else
   {
    echo "&nbsp;&nbsp;&nbsp;&nbsp;<h4>You Have not created any Live Class</h4>";
   }
?>

</div>
</div>
<div class="text-center ">
                <button class="site-btn sb-line sb-dark" id="less" onclick="pageload2()">LOAD LESS</button>
            </div>
<!-- <center><button type="submit" id="less" onclick="pageload2()">LOAD LESS</button></center> -->  
</div><br><br>

            <div class="section-title">
                <h2>COURSES CREATED BY YOU</h2>
            </div>

<!-- NORMAL JOB ADDS -->
<br>

<section class="product-filter-section">
  <div class="div377" id="text377" >  

        <div class="container">
            
            <div class="row">

                          
<?php

$db=$conn;
  global $db;
  $get_product="SELECT * FROM lms_table WHERE user_id='$id' order by 1 ASC LIMIT 0,4 ";
  $run_products=mysqli_query($db,$get_product);
   if (mysqli_num_rows($run_products)>0) 
   {
    while ($row_product=mysqli_fetch_array($run_products)) {
        $course_id=$row_product['course_id'];
        $user_id = $row_product['user_id'];
        $course = $row_product['course'];
        $short_desc = $row_product['short_desc'];
        $link = $row_product['link'];
        $price = $row_product['price'];
        $learn = $row_product['learn'];
        $requirement = $row_product['requirement'];
        $long_desc = $row_product['long_desc'];
        $lms_img=$row_product['img'];
          
        echo "<div class='col-lg-3 col-sm-6'>
                    <div class='product-item'>
                        <div class='pi-pic'>
                            <a href='details_lms.php?course_id=$course_id'><img src='./img/form_img/$lms_img' alt='' height='250px' width='400px'></a>
                            <div class='pi-links'>
                                <a href='details_lms.php?course_id=$course_id' class='add-card'><i class='flaticon-bag'></i><span>VIEW DETAILS</span></a>
                                <!--<a href='#' class='wishlist-btn'><i class='flaticon-heart'></i></a>-->
                            </div>
                        </div>
                        <div class='pi-text'>
                            <h6>Rs: $price</h6>
                        <p>$course</p>
                        </div>
                    </div>
                </div>";
        
      }
   }
  else
   {
    echo "&nbsp;&nbsp;&nbsp;&nbsp;<h4>You Have not created any Course</h4>";
   }
?>
</div>
</div>
<div class="text-center ">

                <button class="site-btn sb-line sb-dark" id="more" onclick="pageload3()">LOAD MORE</button>
            </div>
<!-- <center><button type="submit" id="more" onclick="pageload1()">LOAD MORE</button></center> -->
</div>
<div class="div378" id="text378" style="display: none;">
  
        <div class="container">
            
            <div class="row">

                          
<?php

$db=$conn;
  global $db;
  $get_product="SELECT * FROM lms_table WHERE user_id='$id' ";
  $run_products=mysqli_query($db,$get_product);
   if (mysqli_num_rows($run_products)>0) 
   {
    while ($row_product=mysqli_fetch_array($run_products)) {
        $course_id=$row_product['course_id'];
        $user_id = $row_product['user_id'];
        $course = $row_product['course'];
        $short_desc = $row_product['short_desc'];
        $link = $row_product['link'];
        $price = $row_product['price'];
        $learn = $row_product['learn'];
        $requirement = $row_product['requirement'];
        $long_desc = $row_product['long_desc'];
        $lms_img=$row_product['img'];
          
        echo "<div class='col-lg-3 col-sm-6'>
                    <div class='product-item'>
                        <div class='pi-pic'>
                            <a href='details_lms.php?course_id=$course_id'><img src='./img/form_img/$lms_img' alt='' height='250px' width='400px'></a>
                            <div class='pi-links'>
                                <a href='details_lms.php?course_id=$course_id' class='add-card'><i class='flaticon-bag'></i><span>VIEW DETAILS</span></a>
                                <!--<a href='#' class='wishlist-btn'><i class='flaticon-heart'></i></a>-->
                            </div>
                        </div>
                        <div class='pi-text'>
                            <h6>Rs: $price</h6>
                        <p>$course</p>
                        </div>
                    </div>
                </div>";
        
      }
   }
  else
   {
    echo "&nbsp;&nbsp;&nbsp;&nbsp;<h4>You Have not created any Course</h4>";
   }
?>
</div>
</div>
<div class="text-center ">

                <button class="site-btn sb-line sb-dark" id="less" onclick="pageload4()">LOAD LESS</button>
            </div>
<!-- <center><button type="submit" id="less" onclick="pageload2()">LOAD LESS</button></center> -->  
</div>
</div>
<br>



<script type="text/javascript">
    var text1=document.getElementById("text375");
    var text2=document.getElementById("text376");
    var text3=document.getElementById("text377");
    var text4=document.getElementById("text378");
    var morebtn= document.getElementById("more");
    var lessbtn= document.getElementById("less");
  function pageload1()
  {
      text1.style.display="none";
      text2.style.display="block";
      
  }
  function pageload2()
  {
      text1.style.display="block";
      text2.style.display="none";
      
  }
  function pageload3()
  {
     
      text3.style.display="none";
      text4.style.display="block";
  }
  function pageload4()
  {
      
      text3.style.display="block";
      text4.style.display="none";
  }
</script>
</section>

</section>
<?php include_once('footer.php') ?>


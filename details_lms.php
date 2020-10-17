<?php
session_start();
  error_reporting(E_ERROR | E_WARNING | E_PARSE);

if(isset($_SESSION['uid'])){
  include_once('dbclass.php');
  $db=new db;

  $res=$db->getUserData();
  $row=mysqli_fetch_array($res,MYSQLI_ASSOC);
  $radio=$row['radio'];
 
}
else{
  /*header("location:login.php");
  exit;*/
}
?>
<?php
include_once('header.php');
include('connection.php');

if (isset($_GET['course_id'])) {
	$id=$_GET['course_id'];
	
}
else
{
	echo "Not done";
}
$db=$conn;
	global $db;
	$get_product="SELECT * FROM lms_table WHERE course_id='$id' ";
	$run_products=mysqli_query($db,$get_product);
	 if (mysqli_num_rows($run_products)>0) 
	 {
	 	while ($row_product=mysqli_fetch_array($run_products)) {
		$course_id=$row_product['course_id'];
		$user_id = $row_product['user_id'];
        $name = $row_product['name'];
		$email = $row_product['email'];
		$phone = $row_product['phone'];
        $course = $row_product['course'];
        $short_desc = $row_product['short_desc'];
        $link = $row_product['link'];
        $price = $row_product['price'];
        $learn = $row_product['learn'];
        $requirement = $row_product['requirement'];
        $long_desc = $row_product['long_desc'];
        $img=$row_product['img'];
        
      }
	 }
	else
	 {
	 	echo "No Data Available";
	 }
?>

<!-- Page info -->
	<div class="page-top-info">
		<div class="container">
			<h4>Class Details</h4>
			<div class="site-pagination">
				<!--a href="">Home</a> /
				<a href="">Shop</a-->
			</div>
		</div>
	</div>
	<!-- Page info end -->


	<!-- product section -->
	<section class="product-section">
		<div class="container">
			<div class="back-link">
				<a href="index.php"> &lt;&lt; Back to Homepage</a><br>
				<!-- <p>  Upload Date:- <?php echo $date ?> </p> -->
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="product-pic-zoom">
						<iframe width="500" height="300" src="<?php echo $link ?>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						
					</div>
					<div class="product-thumbs" tabindex="1" style="overflow: hidden; outline: none;">
						
					</div>
				</div>
				<div class="col-lg-6 product-details">
					<h2 class="p-title"><?php echo $course ?></h2>
					<p><?php echo $short_desc ?></p>
					<!-- <h1 class="p-title">Rs <?php echo $price ?></h1>
					<div><a href='#' class='site-btn' target='blank'>JOIN COURSE</a></div> -->

					
					
					<div id="accordion" class="accordion-area">
						<div class="panel">
							<div class="panel-header" id="headingOne">
								<button class="panel-link active" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapse1">What you'll learn</button>
							</div>
							<div id="collapse1" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
								<div class="panel-body">
                                    
									<p><?php echo $learn ?></p>																		
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-header" id="headingTwo">
								<button class="panel-link" data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse2">Course Requirement </button>
							</div>
							<div id="collapse2" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
								<div class="panel-body">
									
									<p><?php echo $requirement ?></p>
									
									
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-header" id="headingThree">
								<button class="panel-link" data-toggle="collapse" data-target="#collapse3" aria-expanded="false" aria-controls="collapse3">Long Description</button>
							</div>
							<div id="collapse3" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
								<div>
									
									<p><?php echo $long_desc ?></p>							
								</div>
							</div>
						</div>
						<!-- TEACHER VIDEOS -->
						<section class="display">
						<div class="panel">
							<div class="panel-header" id="headingFour">
								<button class="panel-link" data-toggle="collapse" data-target="#collapse4" aria-expanded="false" aria-controls="collapse4">Your Course Videos</button>
							</div>
							<div id="collapse4" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
								<div>
									
									<p><?php include_once('video_lms.php'); ?></p>							
								</div>
							</div>
						</div>
						</section>
						<br>
						<h2 class="p-title"><h4>₹ <?php echo $price ?></h4></h2>
					</div><br><br>
					

                <?php 
                  error_reporting(E_ERROR | E_WARNING | E_PARSE);
                  $id=$_SESSION['uid'];
                  /*echo $id;
                  echo $user_id;*/
                  if ($id!=$user_id) {
                  	 if($radio == 'recruiter')
                  	 {      echo "<div><a href='payment.php?course_id=$course_id' class='site-btn'>JOIN COURSE</a></div><br>";
                     }
                    else
                     {
                            echo "<div><a href='payment.php?course_id=$course_id' class='site-btn'>JOIN COURSE</a></div><br>";
                  	 }
                  	      $status='none';

                        }else{
                            echo "<div><a href='editForm_lms.php?mode=edit&course_id=$course_id' class='site-btn'>Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href='allfunction1.php?mode=delete_lms&course_id=$course_id' class='site-btn'>Delete</a></div>";
                            $status='';
                        }    
                ?>

                <style type="text/css">
                	.display{
                		display: <?php echo $status ?>;
                	}
                </style>
					
					
					<div class="social-sharing">
						<a href=""><i class="fa fa-google-plus"></i></a>
						<a href=""><i class="fa fa-pinterest"></i></a>
						<a href=""><i class="fa fa-facebook"></i></a>
						<a href=""><i class="fa fa-twitter"></i></a>
						<a href=""><i class="fa fa-youtube"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- product section end -->


	




<?php include_once('footer.php'); ?>


<!-- src="img/form_img/<?php echo $job_img1 ?>" -->
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
  header("location:login.php");
  exit;
}
?>
<?php
$stud_id=$_SESSION['uid'];
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
<!DOCTYPE html>

<body>
	<div class="container-fluid padding" style="padding: 40px;">
	<div class="row padding">
		<div class="col-lg-6">
			
<div class="order-1 order-lg-2">
<div class="checkout-cart">
<br>
<h3>Your Course</h3>
<ul class="product-list">

<li>
<div class="pl-thumb"><img src="./img/form_img/<?php echo $img ?>" alt=""></div>
<h6><?php echo $course ?></h6>
<p>₹ <?php echo $price ?></p>
</li>
</ul>
<ul class="price-list">
<li>Total<span>₹<?php echo $price ?></span></li>
<li>Shipping<span>free</span></li>
<li class="total">Total<span>₹<?php echo $price ?></span></li>
<br>
</ul>
</div>
</div>
<div class="col-lg-4 card-right">
<form class="promo-code-form">
<input type="hidden" placeholder="Enter promo code">
<br>
</form>
</div>
		</div>

		<div class="col-lg-6">
			
          </form>
          <section style="padding: 40px;"><center>
<h3>Payment</h3>
<br>
<ul class="payment-list">
<li>Paypal<a href="#"><img src="img/paypal.png" alt=""></a></li>
<li>Credit / Debit card<a href="#"><img src="img/mastercart.png" alt=""></a></li>
<li>Pay when you get the package</li>
</ul>
<form action="allfunction1.php" method="post" enctype="multipart/form-data">
	<input type="hidden" name="course_id" value="<?php echo $course_id ?>">
	<input type="hidden" name="stud_id" value="<?php echo $stud_id ?>">
<button class="site-btn" name="coursebn">Buy Now</button>
</form>
</center>
</section>

		</div>
	</div>
</div>
</body>
<?php include_once('footer.php') ?>
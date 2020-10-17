<?php
if (isset($_GET['course_id'])) {
  $course_id=$_GET['course_id'];
  
}
else
{
  echo "Not done";
}
?>
<!DOCTYPE html>
<?php include_once('header.php'); ?>
<html>

<head>
	<meta charset=UTF-8" />
	
	<title>PHP Quiz</title>
	
	<link rel="stylesheet" type="text/css"  />
	<style type="text/css">
		#page-wrap
		{
			text-align: center;
			background-color: #18222f;
			color: white;
		}
		.results
		{
			font-size: 32px;
			font-weight: bold;
		}
		
	</style>
</head>

<body>

	<div id="page-wrap">
		<br>

		<h2 style="color: white;">Result | Indees test</h2>
		
        <?php
		if(isset($_POST['question-1-answers'])){
			$answer1 = $_POST['question-1-answers'];
		}else{
			$answer1 = "E";
		}
		if(isset($_POST['question-2-answers'])){
			$answer2 = $_POST['question-2-answers'];
		}else{
			$answer2 = "E";
		}
		if(isset($_POST['question-3-answers'])){
			$answer3 = $_POST['question-3-answers'];
		}else{
			$answer3 = "E";
		}
		if(isset($_POST['question-4-answers'])){
			$answer4 = $_POST['question-4-answers'];
		}else{
			$answer4 = "E";
		}
		if(isset($_POST['question-5-answers'])){
			$answer5 = $_POST['question-5-answers'];
		}else{
			$answer5 = "E";
		}
            
     
        
            $totalCorrect = 0;
            
            if ($answer1 == "C") { $totalCorrect++; }
            if ($answer2 == "D") { $totalCorrect++; }
            if ($answer3 == "D") { $totalCorrect++; }
            if ($answer4 == "B") { $totalCorrect++; }
            if ($answer5 == "D") { $totalCorrect++; }
            global $percent;
            $percent=($totalCorrect/5)*100;
            ?><div class="results">
               <center><div class="container chart" data-size="340" data-value="<?php echo $percent ?>" data-arrow="d" style="padding: 15px;"></div></center>
            	<?php
            echo "<div id='results'>$totalCorrect / 5 correct</div>";
			
			 echo "<div id='results'>$percent % percent correct</div>"
            ?></div>
            <?php
              if ($percent>=80) {
              	echo "<br><a target='blank' href='certificate.php?course_id=$course_id-$percent' class='site-btn'>Download Certificate</a>";
              }
              else
              {
              	echo "<h2 style='color: white;'>Passing criteria is 80%</h2>
              	<a href='quiz.php?course_id=$course_id' class='site-btn'>Try Again</a>";
              }
             ?>
            
            <br><br>
		<script src="script_progress.js" defer></script>


	
	</div>

</body>
<?php include_once('footer.php'); ?>
</html>
<?php
	
	include_once('connection.php');
   //form filling up data 
	if(isset($_POST['registrationbn'])){
        
        $dob=$_POST['date'];
        $result=explode('-',$dob);
        $date1=$result[2];
        $month=$result[1];
        $year=$result[0];
        $new=$date1.'-'.$month.'-'.$year;

		$user_id = $_POST['user_id'];
		$name = $_POST['name'];
		$email = $_POST['email'];
		$phone = $_POST['phone'];
        $agenda = $_POST['agenda'];
        $class = $_POST['class'];
		$subject = $_POST['subject'];
        $video = $_POST['video'];
        $presentation = $_POST['presentation'];
        $date = $new;
        $join_id = $_POST['join_id'];
        $pwd = $_POST['pwd'];
        $apply = $_POST['apply'];
        $img1 = $_FILES['img1']['name'];
        $img2 = $_FILES['img2']['name'];
        $img3 = $_FILES['img3']['name'];

        $temp_name1=$_FILES['img1']['tmp_name'];
        $temp_name2=$_FILES['img2']['tmp_name'];
        $temp_name3=$_FILES['img3']['tmp_name'];
        
        move_uploaded_file($temp_name1, "img/form_img/$img1");
        move_uploaded_file($temp_name2, "img/form_img/$img2");
        move_uploaded_file($temp_name3, "img/form_img/$img3");

		$sql = "INSERT INTO job_table (`user_id`,`name`,`email`,`phone`,`agenda`,`class`,`subject`,`video`,`presentation`,`date`,`join_id`,`pwd`,`apply`,`img1`,`img2`,`img3`) VALUES ('".$user_id."','".$name."','".$email."','".$phone."','".$agenda."','".$class."','".$subject."','".$video."','".$presentation."','".$date."','".$join_id."','".$pwd."','".$apply."','".$img1."','".$img2."','".$img3."')";
		/*$r = "INSERT INTO images (`unique_id`,`image`) VALUES ('".$unique_id."','".$image."')";
*/
		if($conn->query($sql)){
			header('Location:dashboard.php');
			exit();
		}else{
			header('Location:form1.php');
			exit();
		}	
	}
    
  //STUDENT RESUME
    if(isset($_POST['studbn'])){
		$user_id = $_POST['user_id'];
		$name = $_POST['name'];
        $address = $_POST['address'];
        $email = $_POST['email'];
        $phone = $_POST['phone'];
        $profession = $_POST['profession'];
        $objective = $_POST['objective'];
        $education = $_POST['education'];
        $experience = $_POST['experience'];
        $skill = $_POST['skill'];
        $language = $_POST['language'];
        $links = $_POST['links'];
        $img1 = $_FILES['img1']['name'];
        $temp_name1=$_FILES['img1']['tmp_name'];
        
        move_uploaded_file($temp_name1, "img/form_img/$img1");

		$sql = "INSERT INTO stud_table (`user_id`,`name`,`address`,`email`,`phone`,`profession`,`objective`,`education`,`experience`,`skill`,`language`,`links`,`img1`) VALUES ('".$user_id."','".$name."','".$address."','".$email."','".$phone."','".$profession."','".$objective."','".$education."','".$experience."','".$skill."','".$language."','".$links."','".$img1."')";
if($conn->query($sql)){
			header('Location:dashboard_stud.php');
			exit();
		}else{
			header('Location:form_stud.php');
			exit();
		}	
	}

  //LMS COURSE ENTRY FORM
    if(isset($_POST['entry_lms'])){
		$user_id = $_POST['user_id'];
		$name = $_POST['name'];
		$email = $_POST['email'];
		$phone = $_POST['phone'];
        $course = $_POST['course'];
        $short_desc = $_POST['short_desc'];
        $link = $_POST['link'];
        $price = $_POST['price'];
        $learn = $_POST['learn'];
        $requirement = $_POST['requirement'];
        $long_desc = $_POST['long_desc'];
        $img = $_FILES['img']['name'];
        $temp_name=$_FILES['img']['tmp_name'];
        
        move_uploaded_file($temp_name, "img/form_img/$img");

		$sql = "INSERT INTO lms_table (`user_id`,`name`,`email`,`phone`,`course`,`short_desc`,`link`,`price`,`learn`,`requirement`,`long_desc`,`img`) VALUES ('".$user_id."','".$name."','".$email."','".$phone."','".$course."','".$short_desc."','".$link."','".$price."','".$learn."','".$requirement."','".$long_desc."','".$img."')";

		if($conn->query($sql)){
			header('Location:dashboard.php');
			exit();
		}else{
			header('Location:form_lms.php');
			exit();
		}	
	}

   //INSERTING VIDEO LINK
	if(isset($_POST['videobn'])){
		$course_id = $_POST['course_id'];
		$user_id = $_POST['user_id'];
		$name = $_POST['name'];
		$video_link = $_POST['video_link'];
		$description = $_POST['description'];


		$sql = "INSERT INTO video_table (`course_id`,`user_id`,`name`,`video_link`,`description`) VALUES ('".$course_id."','".$user_id."','".$name."','".$video_link."','".$description."')";

		if($conn->query($sql)){
			header('Location:dashboard_check.php');
			exit();
		}else{
			header('Location:dashboard_check.php');
			exit();
		}	
	}

	//INSERTING GET SET READY
	if(isset($_POST['readybn'])){
		$title = $_POST['title'];
		$description = $_POST['description'];



		$sql = "INSERT INTO blog_table (`title`,`description`) VALUES ('".$title."','".$description."')";

		if($conn->query($sql)){
			header('Location:ready.php');
			exit();
		}else{
			header('Location:ready.php');
			exit();
		}	
	}


   //STUDENT RESUME
    if(isset($_POST['submitbn'])){
		$user_id = $_POST['user_id'];
		$name = $_POST['name'];
		$email = $_POST['email'];
		$phone = $_POST['phone'];
        $description = $_POST['description'];
		$requirement = $_POST['requirement'];
        $skill = $_POST['skill'];
        $location = $_POST['location'];
        $experience = $_POST['experience'];
        $salary = $_POST['salary'];
        $apply = $_POST['apply'];
        $img1 = $_FILES['img1']['name'];
        $img2 = $_FILES['img2']['name'];
        $img3 = $_FILES['img3']['name'];

        $temp_name1=$_FILES['img1']['tmp_name'];
        $temp_name2=$_FILES['img2']['tmp_name'];
        $temp_name3=$_FILES['img3']['tmp_name'];
        
        move_uploaded_file($temp_name1, "img/form_img/$img1");
        move_uploaded_file($temp_name2, "img/form_img/$img2");
        move_uploaded_file($temp_name3, "img/form_img/$img3");

		$sql = "INSERT INTO premium_table (`user_id`,`name`,`email`,`phone`,`description`,`requirement`,`skill`,`location`,`experience`,`salary`,`apply`,`img1`,`img2`,`img3`) VALUES ('".$user_id."','".$name."','".$email."','".$phone."','".$description."','".$requirement."','".$skill."','".$location."','".$experience."','".$salary."','".$apply."','".$img1."','".$img2."','".$img3."')";

		if($conn->query($sql)){
			header('Location:dashboard.php');
			exit();
		}else{
			header('Location:form_premium.php');
			exit();
		}	
	}

    // for user registration
    if(isset($_POST['register'])){
		
		$username = $_POST['u_name'];
		$sql="SELECT user_id from user where u_name='$username' LIMIT 1";
		$result=mysqli_query($conn,$sql); 
		$res=mysqli_num_rows($result);
		if($res>0){
			echo "<script>alert('Username already exist please choose another one!!')</script>";
			echo "<script>location.href='register.php'</script>";
			
		}else{
			$email = $_POST['email'];
			$sql1="SELECT user_id from user where email='$email' LIMIT 1";
		$result1=mysqli_query($conn,$sql1); 
		$res1=mysqli_num_rows($result1);
		if($res1>0){
			echo "<script>alert('Email id already exist go for login or register with new id!!')</script>";
			echo "<script>location.href='register.php'</script>";
		}else{
		$password = $_POST['password'];
		$name = $_POST['name'];
		$phone = $_POST['phone'];
		$email = $_POST['email'];
		$radio = $_POST['radio'];


		$sql = "INSERT INTO user (`u_name`,`password`,`name`,`phone`,`email`,`radio`) VALUES ('".$username."','".$password."','".$name."','".$phone."','".$email."','".$radio."')";

		if($conn->query($sql)){
			echo "<script>alert('Registered Successfully!!')</script>";
			echo "<script>location.href='login.php'</script>";
			
		}else{
			echo "<script>alert('Registration Error !!')</script>";
			echo "<script>location.href='register.php'</script>";
			
			
		
		}	
		}
			
		}
		
	}
    
    //INSERT VIDEOS WATCHED BY STUDENT
	if(isset($_POST['updatewatchbn'])){
		$user_id = $_POST['original_id'];
		$course_id = $_POST['course_id'];
		$video_id = $_POST['video_id'];
		$status = $_POST['status'];
		
		$sql = "INSERT INTO video_watch (`user_id`,`course_id`,`video_id`,`status`) VALUES ('".$user_id."','".$course_id."','".$video_id."','".$status."')";

		if($conn->query($sql)){
			header('Location:video_table.php?course_id='.$course_id);
			exit();
		}else{
			header('Location:video_table.php?course_id='.$course_id);
			exit();
		}	
	}
  
  if(isset($_POST['deletewatchbn'])){
		$user_id = $_POST['original_id'];
		$course_id = $_POST['course_id'];
		$video_id = $_POST['video_id'];
		$status = $_POST['status'];
		
		$sql = "DELETE FROM video_watch WHERE video_id='".$video_id."' AND course_id='".$course_id."' AND user_id='".$user_id."'";
	
		if($conn->query($sql)){
			header('Location:video_table.php?course_id='.$course_id);
			exit();
		}
	}


	//INSERT COURSE IN STUDENT DATABASE
	if(isset($_POST['coursebn'])){
		$course_id = $_POST['course_id'];
		$user_id = $_POST['stud_id'];
		
		$sql = "INSERT INTO course_stud (`course_id`,`user_id`) VALUES ('".$course_id."','".$user_id."')";

		if($conn->query($sql)){
			header('Location:success.php');
			exit();
		}else{
			header('Location:success.php');
			exit();
		}	
	}

    //EDIT LIVE CLASS DETAILS
	if(isset($_POST['updatedatabn'])){
        
        $dob=$_POST['date'];
        $result=explode('-',$dob);
        $date1=$result[2];
        $month=$result[1];
        $year=$result[0];
        $new=$date1.'-'.$month.'-'.$year;

		$name = $_POST['name'];
		$phone = $_POST['phone'];		
		$email = $_POST['email'];
		$agenda = $_POST['agenda'];
		$class = $_POST['class'];
		$subject = $_POST['subject'];
		$video = $_POST['video'];
        $presentation = $_POST['presentation'];
        $date = $new;
        $join_id = $_POST['join_id'];
        $pwd = $_POST['pwd'];
        $apply = $_POST['apply'];
        $img1 = $_POST['img1'];
        $img2 = $_POST['img2'];
        $img3 = $_POST['img3'];
		$job_id = $_POST['job_id'];

		/*if(isset($_FILES['img1']['name']) &&($_FILES['img1']['name']!="")){
			$size=$FILES['img1']['size'];
			$temp=$FILES['img1']['tmp_name'];
			$type=$FILES['img1']['type'];
			$profile_name=$_FILES['img1']['name'];
			//delete old file
			unlink("img/form_img/$old_image");
			//new image
			move_uploaded_file($temp,"img/form_img/$profile_name");
		}else{
			$profile_name=$old_image;
		}
   */    
   if (($img1=="")&&($date=="--")) {

   	 $sql = "UPDATE job_table SET name='".$name."',  email='".$email."',phone='".$phone."',agenda='".$agenda."',class='".$class."',subject='".$subject."',video='".$video."',presentation='".$presentation."',join_id='".$join_id."',pwd='".$pwd."',apply='".$apply."' WHERE job_id='".$job_id."'";
   }else
    if (($img1=="")&&($date!="--")) 
    {
   	 $sql = "UPDATE job_table SET name='".$name."',  email='".$email."',phone='".$phone."',agenda='".$agenda."',class='".$class."',subject='".$subject."',video='".$video."',presentation='".$presentation."',date='".$date."',join_id='".$join_id."',pwd='".$pwd."',apply='".$apply."' WHERE job_id='".$job_id."'";
   }
   else
   	if (($img1!="")&&($date=="--")) {
   		$sql = "UPDATE job_table SET name='".$name."',  email='".$email."',phone='".$phone."',agenda='".$agenda."',class='".$class."',subject='".$subject."',video='".$video."',presentation='".$presentation."',join_id='".$join_id."',pwd='".$pwd."',apply='".$apply."',img1='".$img1."' WHERE job_id='".$job_id."'";
   		
   	}
   	else
   	{
   		$sql = "UPDATE job_table SET name='".$name."',  email='".$email."',phone='".$phone."',agenda='".$agenda."',class='".$class."',subject='".$subject."',video='".$video."',presentation='".$presentation."',date='".$date."',join_id='".$join_id."',pwd='".$pwd."',apply='".$apply."',img1='".$img1."' WHERE job_id='".$job_id."'";
   	}

		
		

		if($conn->query($sql)){
			header('Location:dashboard.php');
			exit();
		}else{
			header('Location:dashboard.php');
			exit();
		}	
	}

	//EDIT LMS COURSE DETAILS
	if(isset($_POST['updatedatalms'])){
    	$name = $_POST['name'];
		$phone = $_POST['phone'];		
		$email = $_POST['email'];
		$course = $_POST['course'];
		$short_desc = $_POST['short_desc'];
        $link = $_POST['link'];
        $price = $_POST['price'];
        $learn = $_POST['learn'];
        $requirement = $_POST['requirement'];
        $long_desc = $_POST['long_desc'];
        $img = $_POST['img'];
		$course_id = $_POST['course_id'];


      if ($img!="") 
      {
		$sql = "UPDATE lms_table SET name='".$name."',  email='".$email."',phone='".$phone."',course='".$course."',short_desc='".$short_desc."',link='".$link."',price='".$price."',learn='".$learn."',requirement='".$requirement."',long_desc='".$long_desc."',img='".$img."' WHERE course_id='".$course_id."'";
	 }
	 else
	 {
	 	$sql = "UPDATE lms_table SET name='".$name."',  email='".$email."',phone='".$phone."',course='".$course."',short_desc='".$short_desc."',link='".$link."',price='".$price."',learn='".$learn."',requirement='".$requirement."',long_desc='".$long_desc."' WHERE course_id='".$course_id."'";
	 }
	
		if($conn->query($sql)){
			header('Location:dashboard.php');
			exit();
		}else{
			header('Location:dashboard.php');
			exit();
		}	
	}

    //EDIT USER DETAILS
    if(isset($_POST['updatebn'])){
    	$u_name = $_POST['u_name'];
		$name = $_POST['name'];
		$password = $_POST['password'];
		$phone = $_POST['phone'];
		$radio = $_POST['radio'];
		$email = $_POST['email'];
		$user_id = $_POST['user_id'];


		$sql = "UPDATE user SET u_name='".$u_name."',name='".$name."',password='".$password."', email='".$email."', phone='".$phone."' WHERE user_id='".$user_id."'";
	
		if($conn->query($sql)){
			header('Location:profile.php');
			exit();
		}else{
			header('Location:profile.php');
			exit();
		}	
	}
	
	//UPDATE VIDEO LINK
	if(isset($_POST['updatevideobn'])){
		$name = $_POST['name'];
		$video_link = $_POST['video_link'];
        $video_id = $_POST['video_id'];
        $description = $_POST['description'];

		$sql = "UPDATE video_table SET name='".$name."',video_link='".$video_link."',description='".$description."' WHERE video_id='".$video_id."'";
	
		if($conn->query($sql)){
			header('Location:dashboard_check.php');
			exit();
		}else{
			header('Location:dashboard_check.php');
			exit();
		}	
	}

	if(isset($_GET['mode']) && $_GET['mode']=="delete"){

		$job_id = $_GET['job_id'];
	
		$sql = "DELETE FROM job_table WHERE job_id='".$job_id."'";
	
		if($conn->query($sql)){
			header('Location:dashboard_check.php');
			exit();
		}
	}

	if(isset($_GET['mode']) && $_GET['mode']=="delete_lms"){

		$course_id = $_GET['course_id'];
	
		$sql = "DELETE FROM lms_table WHERE course_id='".$course_id."'";
	
		if($conn->query($sql)){
			header('Location:dashboard_check.php');
			exit();
		}
	}



    if(isset($_GET['mode']) && $_GET['mode']=="delete_video"){

		$video_id = $_GET['video_id'];
		
		$sql = "DELETE FROM video_table WHERE video_id='".$video_id."'";
	
		if($conn->query($sql)){
			header('Location:dashboard_check.php');
			exit();
		}
	}

	?>


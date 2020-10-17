<!-- USER -->
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
$user_id=$_SESSION['uid'];
?>


<?php include_once('header.php'); ?>
<?php include_once('connection.php'); ?>
<style>
* {
  box-sizing: border-box;
  
  margin: 0px;
  padding:0px;
}

input[type=text], select, textarea {
  width: 500px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 25px;
  resize: vertical;
  margin-left: 0px;
  /*background-color: rgb(195, 195, 195);*/
}
input[type=file], select, textarea {
  width: 500px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 25px;
  resize: vertical;
  margin-left: 0px;
  /*background-color: rgb(195, 195, 195);*/
}

input[type=date], select, textarea {
  width: 500px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 25px;
  resize: vertical;
  margin-left: 0px;
  /*background-color: rgb(195, 195, 195);*/
}

input[type=number], select, textarea {
  width: 250px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 25px;
  resize: vertical;
  margin-left: 0px;
 /* background-color: rgb(195, 195, 195);*/
}

textarea[type=textarea], select, textarea {
  width: 500px;
  height: 200px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 25px;
  resize: vertical;
  margin-left: 0px;
  /*background-color: rgb(195, 195, 195);*/
}

input[type=phone], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
  /*background-color: rgb(195, 195, 195);*/
}

.form.label {
  padding: 12px 12px 12px 0;
  display: inline-block;
  
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.form.container {
  border-radius: 0px;
  background-color: #f2f2f2;
  padding: 50px;
}

.form.col-25 {
  float: left;
  width: 25%;
  margin-top: 56px;
}

.form.col-75 {
  float: left;
  width: 75%;
  margin-top: 56px;
}

/* Clear floats after the columns */
.form.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
<?php
  if(!isset($_GET['mode']) && $_GET['mode']!="edit" && !isset($_GET['course_id']) && empty($_GET['course_id'])){
    header('Location:index.php');
    exit();
  }
?>

<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
<body>
  <h3 style="padding: 40px;"><u>Update Form</u></h3>
  
  <form name="" action="allfunction1.php" method="post" style="padding: 40px;">
    <table border="1">
  <?php 
      $sql = "SELECT *, count(*) as usercount FROM lms_table where course_id='".$_GET['course_id']."'";
      $result = $conn->query($sql);
      ?>
      <input type="hidden" name="course_id" value="<?php echo $_GET['course_id']; ?>">
      <?php
      while($row = $result->fetch_assoc()){
        if($row['usercount']<=0){
          header('Location:index.php');
          exit();
        }
        ?>
        <tr >
          <td> Teacher's Name: </td>
          <td><input type="text" name="name" value="<?php echo $row['name']; ?>"></td>
        </tr>
        
        <tr>
          <td>Phone Number: </td>
          <td><input type="text" name="phone" value="<?php echo $row['phone']; ?>"></td>
        </tr>
        <tr>
          <td>Email ID: </td>
          <td><input type="text" name="email" value="<?php echo $row['email']; ?>"></td>
        </tr>
        <tr>
          <td>Course: </td>
          <td><input type="text" name="course" value="<?php echo $row['course']; ?>"></td>
        </tr>
        <tr>
          <td>Short Description: </td>
          <td><input type="text" name="short_desc" value="<?php echo $row['short_desc']; ?>"></td>
        </tr>
        <tr>
          <td>Intro video link: </td>
          <td><input type="text" name="link" value="<?php echo $row['link']; ?>"></td>
        </tr>
        <tr>
          <td>Course Price: </td>
          <td><input type="text" name="price" value="<?php echo $row['price']; ?>"></td>
        </tr>
        <tr>
          <td>What you'll learn: </td>
          <td><input type="text" name="learn" value="<?php echo $row['learn']; ?>"></td>
        </tr>
        
        <tr>
          <td>Course Requirement: </td>
          <td><input type="text" name="requirement" value="<?php echo $row['requirement']; ?>"></td>
        </tr>
        <tr>
          <td>Long Description: </td>
          <td><input type="text" name="long_desc" value="<?php echo $row['long_desc']; ?>"></td>
        </tr>
        <tr>
          <td>Image: </td>
          <td><br><!--  --><center>
            <img src="img/form_img/<?php echo $row['img'];?>" width="450px;" height="400px;" style="background-image: url('img/error.jpg');" ></center><br>
            <input type="file" align="left" id="image" name="img" placeholder="" value="<?php echo $row['img']; ?>">
            <script src="js/jquery-3.5.1.min.js"></script>
 <script>
   $(document).ready(function(){
   $('#image').change(function(){ 
       var data = new FormData() ; 
       data.append('file', $( '#image' )[0].files[0]) ; 
       $.ajax({
       url: 'img/form_img/upload_file.php',
       type: 'POST',
       data: data,
       processData: false,
       contentType: false,
        beforeSend: function(){
         $('#preview-image').html('Loading...');
        },
        success: function(data){ 
         // alert(data);            
                   $('#preview-image').html('<img  src="'+data+'" style="width:100%"/>');  
       
        }
       });
      return false;
   });
  });

 </script>



          </td>
        </tr>
        <tr>
          
        <?php
      } 
    ?>
      <tr>
        <td></td>
        <td><input type="submit" name="updatedatalms" ></td>
      </tr>
    </table>
  </form>

</body>
</html>

<style>

 *{margin:0px; padding:0px;}
 #container{width:50%; padding:2%; box-shadow:0px 0px 10px #; margin:10px auto;}
 #image1{width:96% ; padding:2%; border:1px dashed green;}
 #header{background:#405570; color:white;text-align:center; padding:2%;}
 #view-image{border-radius:5px; overflow:hidden;align-content: center;}
 #preview-image{padding:1%; border:1px solid #efefef; width: 490px; height:100%;}
</style>


<?php include_once('footer.php'); ?>


<?php include_once('header.php');
      include_once('connection.php'); 
?>

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
  if(!isset($_GET['mode']) && $_GET['mode']!="edit" && !isset($_GET['video_id']) && empty($_GET['video_id'])){
    header('Location:index.php');
    exit();
  }
?>

<!DOCTYPE html>
<html>
<head>
  <title>Database Crud Operation</title>
</head>
<body>

  <h3 style="padding: 40px;"><u>Update Form</u></h3>
  <form name="" action="allfunction1.php" method="post" style="padding: 40px; padding-top:0px; ">
    <table border="1">
  <?php 
      $sql = "SELECT *, count(*) as usercount FROM video_table where video_id='".$_GET['video_id']."'";
      $result = $conn->query($sql);
      ?>
      <input type="hidden" name="video_id" value="<?php echo $_GET['video_id']; ?>">
      <?php
      while($row = $result->fetch_assoc()){
        if($row['usercount']<=0){
          header('Location:index.php');
          exit();
        }
        ?>
        <tr>
          <td>Video Name: </td>
          <td><input type="text" name="name" value="<?php echo $row['name']; ?>"></td>
        </tr>
        <tr>
          <td>Video Link: </td>
          <td><input type="text" name="video_link" value="<?php echo $row['video_link']; ?>"></td>
        </tr>
        <td>Description: </td>
          <td><input type="text" name="description" value="<?php echo $row['description']; ?>"></td>
        </tr>
        <?php
      } 
    ?>
      <tr>
        <td></td>
        <td><input type="submit" name="updatevideobn"></td>
      </tr>
    </table>
  </form>
  <br><br>
</body>
<style>
 *{margin:0px; padding:0px;}
 #container{width:50%; padding:2%; box-shadow:0px 0px 10px #; margin:10px auto;}
 #image1{width:96% ; padding:2%; border:1px dashed green;}
 #header{background:#405570; color:white;text-align:center; padding:2%;}
 #view-image{border-radius:5px; overflow:hidden;align-content: center;}
 #preview-image{padding:1%; border:1px solid #efefef; width: 490px; height:100%;}
</style>

<?php include_once('footer.php'); ?>
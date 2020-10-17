<?php
include('connection.php');
$db=$conn;
  global $db;
  $get_product="SELECT * FROM blog_table";
  $run_products=mysqli_query($db,$get_product);
   if (mysqli_num_rows($run_products)>0) 
   {
    while ($row_product=mysqli_fetch_array($run_products)) {
    $blog_id=$row_product['blog_id'];
    $title = $row_product['title'];
    $description = $row_product['description'];
    $date = $row_product['date'];
    $dob=$date;
    $result=explode('-',$dob);
    $date1=$result[2];
    $month=$result[1];
    $year=$result[0];
    $new=$date1.'-'.$month.'-'.$year;       
      }
   }
  else
   {
    echo "No Data Available";
   }
?>
<?php include_once('header.php');?>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <style type="text/css">
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            padding-top: 100px; /* Location of the box */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: scroll; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content */
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }
    </style>
<style>
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style>
<body class="w3-light-grey">

<!-- w3-content defines a container for fixed size centered content, 
and is wrapped around the whole page content, except for the footer in this example -->
<div class="w3-content" style="max-width:1400px">

<!-- Header -->
<header class="w3-container w3-center w3-padding-32"> 
  <h1><b>MY BLOG</b></h1>
  <p>Welcome to the blog of <span class="w3-tag">unknown</span></p>
</header>
<img src="img/02.jpg" style="width: 1368px; margin-left: 17px; >
<!-- Grid -->
<div class="w3-row">

<!-- Blog entries -->
<div class="w3-col l8 s12">

  <!-- Blog entry -->
  <div class="w3-card-4 w3-margin w3-white">
    
    <div class="w3-container">
      <h3><b><?php echo $title ?></b></h3>
      <h5>Title description, <span class="w3-opacity"><?php echo $new ?></span></h5>
    </div>

    <div class="w3-container">
      <p><?php echo $description ?></p>
      <div class="w3-row">
        <!-- <div class="w3-col m8 s12">
          <p><button class="w3-button w3-padding-large w3-white w3-border"><b>READ MORE »</b></button></p>
        </div> -->
        <!-- <div class="w3-col m4 w3-hide-small">
          <p><span class="w3-padding-large w3-right"><b>Comments  </b> <span class="w3-tag">0</span></span></p>
        </div> -->
        <br>
      </div>
    </div>
  </div>
  <hr>

  
<!-- END BLOG ENTRIES -->
</div>

<!-- Introduction menu -->
<div class="w3-col l4">
  <!-- About Card -->
  <div class="w3-card w3-margin w3-margin-top">
  
    <div class="w3-container w3-white">
      <h4><b>My Name</b></h4>
      <p>Just me, myself and I, exploring the universe of uknownment. I have a heart of love and a interest of lorem ipsum and mauris neque quam blog. I want to share my world with you.</p>
      <div class="w3-col m8 s12" style="display: none;">
          <p><button class="w3-button w3-padding-large w3-white w3-border"><b>READ MORE »</b></button></p>
        </div>
        <div class="card">
                <img class="card-img-top" src="image" alt="">
                
                    <a class="btn btn-outline-secondary2 w3-button w3-padding-large w3-white w3-border" >ADD NEW QUESTION</a>
               <br>
            </div>
            <div  class="modal modal_multi">

                <!-- Modal content -->
                <div class="modal-content">
                    <span class="close close_multi"></span>
                    <p><font size="4"  color="black"><b>
                        <table align="center">
                        <form action="allfunction1.php" method="post" enctype="multipart/form-data">
                            <tr><td>Title Heading: </td><td><input type="text" name="title" placeholder="Enter Title Heading"></td></tr><br>
                            <tr><td>Title description: </td><td><textarea type="textarea" name="description" placeholder="Title description"></textarea></td></tr>
                            <tr><td></td><td><button type="submit" name="readybn">Submit</button></td></tr>
                        </form>
                    </table>
                    </b></font></p>
                </div>

            </div>
    </div>
  </div>
  </div><hr>
  
  <!-- Posts -->
  <div class="w3-card w3-margin">
    <div class="w3-container w3-padding" style="display: none;">
      <h4>Popular Posts</h4>
    </div>
    <ul class="w3-ul w3-hoverable w3-white">
      
       <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        
    </ul>
  </div>
  <hr> 
 
  
  </div>
  
<!-- END Introduction Menu -->
</div>

<!-- END GRID -->
</div><br>

<!-- END w3-content -->
</div>
<script type="text/javascript">
    var modalparent = document.getElementsByClassName("modal_multi");

   
        var modal_btn_multi = document.getElementsByClassName("btn-outline-secondary2");

        // Get the <span> element that closes the modal
        var span_close_multi = document.getElementsByClassName("close_multi");

        // When the user clicks the button, open the modal
        function setDataIndex() {

            for (i = 0; i < modal_btn_multi.length; i++)
            {
                modal_btn_multi[i].setAttribute('data-index', i);
                modalparent[i].setAttribute('data-index', i);
                span_close_multi[i].setAttribute('data-index', i);
            }
        }



        for (i = 0; i < modal_btn_multi.length; i++)
        {
            modal_btn_multi[i].onclick = function() {
                var ElementIndex = this.getAttribute('data-index');
                modalparent[ElementIndex].style.display = "block";
            };

            // When the user clicks on <span> (x), close the modal
            span_close_multi[i].onclick = function() {
                var ElementIndex = this.getAttribute('data-index');
                modalparent[ElementIndex].style.display = "none";
            };

        }

        window.onload = function() {

            setDataIndex();
        };

        window.onclick = function(event) {
            if (event.target === modalparent[event.target.getAttribute('data-index')]) {
                modalparent[event.target.getAttribute('data-index')].style.display = "none";
            }

            
        };
</script>


<?php include_once('footer.php');?>

</body>
</html>

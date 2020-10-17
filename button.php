<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="assets/img/logo.png" sizes="32x32" type="image/png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
</head>
<body>
<div class="container-fluid padding" >
    <div class="row padding">
        <div class="col-md-4">
            <div class="card">
                <img class="card-img-top" src="image" alt="">
                <div class="card-body">
                    <h5 class="card-title">HEADING</h5>
                    <p>DESCRIPTION</p>
                    <a class="btn btn-outline-secondary2" style="border:1px solid black;height: 45px;border-radius: 10px;">Know More</a>
                </div>
            </div>
            <div  class="modal modal_multi">

                <!-- Modal content -->
                <div class="modal-content">
                    <span class="close close_multi"></span>
                    <p><font size="4"  color="black"><b>
                        <table align="center">
                        <form action="index.php">
                            <tr><td>USERNAME: </td><td><input type="text" name="name" placeholder="Enter Username"></td></tr>
                            <tr><td>PASSWORD: </td><td><input type="password" name="pwd" placeholder="Type Your Password"></td></tr>
                            <tr><td></td><td><button type="submit">SUBMIT</button></td></tr>
                        </form>
                    </table>
                    </b></font></p>
                </div>

            </div>
        </div>
    </div>
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
</body>
</html>
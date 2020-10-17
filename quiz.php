<?php
if (isset($_GET['course_id'])) {
  $course_id=$_GET['course_id'];
  
}
else
{
  echo "Not done";
}
?>
<?php include_once('header.php'); ?>
<!DOCTYPE html>

<head>
	<meta charset="UTF-8" />
	
	<title> QUIZ | Done By Indees</title>
    <style type="text/css">
        .quiz-page
        {
            background-image: url('quiz.jpg');
            background-attachment: fixed;
        }
        .quiz-page .quiz-inner ol li
        {
            list-style-type: none;
        }
        .quiz-page .quiz-inner
        {
            background-color: rgba(0,0,0,0.5);
            text-align: left;
            padding-left: 200px;
        }
        .quiz-page .quiz-inner .div-quiz-outer
        {
            animation: animate 5s infinite;
            width: 50%;
            padding-left: 0px;
            height: 7vh;
            text-align: center;
        }
        .quiz-page .quiz-inner .name-quiz-time
        {
            font-size: 24px;
            color: #f6f5f5;
            font-weight: bold;
            padding-top: 10px;
            
        }
        @keyframes animate
        {
            0%
            {
                background-color: #2a3d66;
            }
            25%
            {
                background-color: #5d54a4;
            }
            50%
            {
                background-color: #9d65c9;
            }
            75%
            {
                background-color: #d291bc;
            }
            100%
            {
                background-color: #d789d7;
            }
        }
        .quiz-page .quiz-inner label
        {
            color: #fff;
        }
        .quiz-page .quiz-inner h1
        {
            color: #f6f5f5;
        }
        .quiz-page .quiz-inner h3
        {
            color: #fcdada;
        }
        .quiz-page .quiz-inner .quiz-btn
        {
            border:none;
            border-radius: 20px;
            height: 40px;
            width:150px;
            background-color: #f51167;
            color: #fff;
            font-weight: bold;
        }
    </style>
	 <script language ="javascript" >
	var sec = 20;
	var min=Math.floor(sec/60);
var time = setInterval(myTimer, 1000);
var k=0;
function myTimer() {
    document.getElementById('timer').innerHTML = min+"."+sec%60 + "Minute left";
    sec--;
	if(sec%60==59){
		min--;
	}
    if (sec == -1) {
        clearInterval(time);
		var auto_refresh = setInterval(function() { submitform(); }, 3000);
		 

function submitform(){
if( (sec==-1) &&(k==0)) 
{ alert('Form is submitting.....');
k=1;
document.getElementById("quiz").submit();
}
}
        alert("Time out!! :(");
		
    }
}
	 </script>
	<link rel="stylesheet" type="text/css"  />
</head>

<body>

	<div id="page-wrap" class="quiz-page">
        <div class="quiz-inner">

		<h1>Simple Quiz </h1>
		
		<form action="result.php?course_id=<?php echo $course_id ?>" method="post" id="quiz">
            <div class="div-quiz-outer">
		<span class="name-quiz-time">Time:<span id="timer"></span></span></div><br>

		
            <ol>
            
                <li>
                
                    <h3>WordPress is a...</h3>
                    
                    <div>
                        <input type="radio"  name="question-1-answers" id="question-1-answers-A" value="A" />
                        <label for="question-1-answers-A">A) Software </label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-1-answers" id="question-1-answers-B" value="B" />
                        <label for="question-1-answers-B">B) Web App</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-1-answers" id="question-1-answers-C" value="C" />
                        <label for="question-1-answers-C">C) CMS</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-1-answers" id="question-1-answers-D" value="D" />
                        <label for="question-1-answers-D">D) Other</label>
                    </div>
                
                </li>
                <br>
                <li>
                
                    <h3>SEO is Part Of...</h3>
                    
                    <div>
                        <input type="radio" name="question-2-answers" id="question-2-answers-A" value="A" />
                        <label for="question-2-answers-A">A) Video Editing</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-2-answers" id="question-2-answers-B" value="B" />
                        <label for="question-2-answers-B">B) Graphic Designing</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-2-answers" id="question-2-answers-C" value="C" />
                        <label for="question-2-answers-C">C) Web Designing</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-2-answers" id="question-2-answers-D" value="D" />
                        <label for="question-2-answers-D">D) Digital Marketing</label>
                    </div>
                
                </li>
                <br>
                <li>
                
                    <h3>PHP is a....</h3>
                    
                    <div>
                        <input type="radio" name="question-3-answers" id="question-3-answers-A" value="A" />
                        <label for="question-3-answers-A">A) Server Side Script</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-3-answers" id="question-3-answers-B" value="B" />
                        <label for="question-3-answers-B">B) Programming Language</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-3-answers" id="question-3-answers-C" value="C" />
                        <label for="question-3-answers-C">C) Markup Language</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-3-answers" id="question-3-answers-D" value="D" />
                        <label for="question-3-answers-D">D) None Of Above These</label>
                    </div>
                
                </li>
                <br>
                <li>
                
                    <h3>Localhost IP is..</h3>
                    
                    <div>
                        <input type="radio" name="question-4-answers" id="question-4-answers-A" value="A" />
                        <label for="question-4-answers-A">A) 192.168.0.1</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-4-answers" id="question-4-answers-B" value="B" />
                        <label for="question-4-answers-B">B) 127.0.0.0</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-4-answers" id="question-4-answers-C" value="C" />
                        <label for="question-4-answers-C">C) 1080:80</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-4-answers" id="question-4-answers-D" value="D" />
                        <label for="question-4-answers-D">D) Any Other</label>
                    </div>
                
                </li>
                <br>
                <li>
                
                    <h3>Python is a</h3>
                    
                    <div>
                        <input type="radio" name="question-5-answers" id="question-5-answers-A" value="A" />
                        <label for="question-5-answers-A">A) Web Designing language</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-5-answers" id="question-5-answers-B" value="B" />
                        <label for="question-5-answers-B">B) app  Developer language</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-5-answers" id="question-5-answers-C" value="C" />
                        <label for="question-5-answers-C">C) Graphic Designer</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-5-answers" id="question-5-answers-D" value="D" />
                        <label for="question-5-answers-D">D) All Above These</label>
                    </div>
                
                </li>
            
            </ol>
            <br><br>
            <button type="submit" class="site-btn">Submit Responses</button>
		<br><br>
		</form>
		
	</div>
	</div>


</body>

</html>
<?php include_once('footer.php'); ?>
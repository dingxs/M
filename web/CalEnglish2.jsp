<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Computing interface</title>
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<div id="container">
		<div  class="top" >	
			<img class="imgtop" src="images/top.jpg" >
			<h1 >Four elementary programs in primary school</h1>
			<select name="select" language=javascript onchange= "location.href=this.value" class="selectLanguage" class="form-control">
				  <option value= "English">English</option>
				  <option value ="Cal2.jsp " >中文</option>
			</select>
		</div>
			<input type="radio" name="radio-set"  id="st-control-2" value="答题" ">
			<a href="#st-panel-2" >work out questions</a>	
		<div class="st-scroll"> 
	 		<section class="st-panel" id="st-panel-2">
				<div class="two">
					<form action="#" method="post">
					<ul style="position: absolute;bottom: 380px; left: 160px; list-style-type: none">			
							<input type="button" name="btn" class="btn-lg btn-info" onclick="startclock() "  value="Starting to work">
							<input type="button" name="btn" class="btn-lg btn-info" value="Suspend the answer" onclick="pauseclock()">
							<input type="button" name="btn" class="btn-lg btn-info" onclick="stopclock()" value="Stop answering question">
							<input class="btn"  name="showtime" style="color:#ff0000;width:200px;height: 48px;font-size: 20px;" id="showtime" type="text" value="0h0m0s">
					</ul>
					<table style="position: absolute;bottom: 170px; left: 200px;width: 600px;" class="table  table-bordered table-hover" >
							<tr class="info" style="height: 60px;">
								<td  style="width: 300px; ">questions</td>
								<td >answers</td>
								<td >True Or False</td>
							<tr>
							<tr class="success" style="height: 60px;">
								<td  style="width: 300px; ">sssss</td>
								<td >dddddd</td>
								<td >dddddd</td>
							<tr>
							<tr class="info" style="height: 60px;">
								<td  style="width: 300px; ">sssss</td>
								<td >dddddd</td>
								<td >dddddd</td>
							<tr>
						</table>
					<input type="submit" name="submitAnswer" value="submit the answers" class="btn-lg btn-info" style="position: absolute;bottom: 100px; left: 380px;">
			</form>
				</div>
				<!-- <p class="p1">You've got <input class="time"  type="text" name="rightAnswer"> questions right</p>
				<p class="p2">In total
				<input id="one" class="time" type="text" name="timeHour">h
				<input id="two" type="text" class="time" name="timeMin">m
				<input id="three" class="time" type="text" name="timeSec">s
				</p> -->
				</form>
	 		</section>
	 	</div>

	</div>
</body>
<script language="javascript">
	var se,m=0,h=0,s=0,ss=1;
	function second(){
	if((ss%100)==0){s+=1;ss=1;}
	if(s>0 && (s%60)==0){m+=1;s=0;}
	if(m>0 && (m%60)==0){h+=1;m=0;}
	t=h+"时"+m+"分"+s+"秒";
	document.getElementById("showtime").value=t;
	ss+=1;
	document.getElementById("one").value=h;
	document.getElementById("two").value=m;
	document.getElementById("three").value=s;
}
function startclock(){se=setInterval("second()",10);}
function pauseclock(){clearInterval(se);}
function stopclock(){clearInterval(se);ss=1;m=h=s=0;}
function changeAgentContent(){
        document.getElementById("inputFileAgent").value = document.getElementById("inputFile").value;
    }
</script>
</html>
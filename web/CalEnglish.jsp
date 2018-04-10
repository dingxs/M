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
				  <option value ="Cal.jsp " >中文</option>
			</select>
		</div>
			<input type="radio" name="radio-set"  id="st-control-2" value="答题" ">
			<a href="#st-panel-2" >make out questions</a>	
		<div class="st-scroll"> 
			<section class="st-panel" id="st-panel-1">
				<div class="one">
			<form action="#" method="post">
			<h1>ssss</h1>
			<table style="width: 920px;height: 360px;margin:0 auto; margin-top:30px;" class="table  table-bordered table-hover" >
		
			<tr  class="info" style="height: 60px;">
				<td  style=" height: 60px;width: 100px;">
					Number of questions
				</td>
				<td style="width: 250px;">
					<input type="text" name="sumOfTest">
				</td>
			</tr>
			<tr class="success" style="height: 60px;">
				<td>Scope of the questions</td>
				<td><input class="range" type="text" name="lower">
				-----
				<input class="range"  type="text" name="upper"></td>	
			</tr>
			<tr class="info" style="height: 60px;">
					<td>Operator number</td>	
					<td>
						<select class="form-control" name="sumOfOperation">
							<option value ="1" selected = "selected">1</option>
							<option value ="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value ="5">5</option>
							<option value ="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
						</select>
					</td>
			</tr>
			<tr class="success" style="height: 60px;">
				
					<td>Is there a multiplication and division</td>
				<td>
					&nbsp;&nbsp;
					<input type="radio" name="mul_div" value="yes"/>yes 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="mul_div" value="no"  checked="checked" />no
				</td>		
			</tr>
			<tr class="info" style="height: 60px;">
					
				<td>Is there a parenthesis</td>
				<td>
					&nbsp;&nbsp;
					<input type="radio" name="bracket" value="yes"/>yes 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="bracket" value="no"  checked="checked" />no 
				</td>	
			</tr>
	</table>
		<input type="submit" style="margin-left: 550px;" name="printTest" class="btn-lg btn-info printTest" value="print the questions" ">
		 </form>				
				</div>
	 		</section> 		
	 	</div>
	</div>
</body>
</html>
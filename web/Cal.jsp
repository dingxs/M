<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>计算界面</title>
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<div id="container">
		<div  class="top" >	
			<img class="imgtop" src="images/top.jpg" >
			<h1 >小学四则运算出题小程序</h1>
			<select class="selectLanguage" class="form-control"   language=javascript onchange= "location.href=this.value">
				  <option  value ="中文">中文</option>
				  <option value ="CalEnglish.jsp">English</option>
			</select>
		</div>
			<input type="radio" name="radio-set"  id="st-control-2" value="答题" ">
			<a href="#st-panel-2" >出题</a>	
		<div class="st-scroll">
			<section class="st-panel" id="st-panel-1">
				<div class="one">
			<form action="Cal2.jsp" method="post">
			<h1>ssss</h1>
			<table style="width: 500px;height: 360px;margin:0 auto; margin-top:30px;" class="table  table-bordered table-hover" >
		
			<tr  class="info" style="height: 60px;">
				<td  style=" height: 60px;width: 100px;">
					出题数目
				</td>
				<td style="width: 250px;">
					<input type="text" name="sumOfTest">
				</td>
			</tr>
			<tr class="success" style="height: 60px;">
				<td>出题范围</td>
				<td><input class="range" type="text" name="lower">
				-----
				<input class="range"  type="text" name="upper"></td>
						
				
			</tr>
			<tr class="info" style="height: 60px;">
					<td>运算符个数</td>	
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
				
					<td>是否有乘除</td>
				<td>
					&nbsp;&nbsp;
					<input type="radio" name="mul_div" value="yes"/>是  
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="mul_div" value="no"  checked="checked" />否 
				</td>		
			</tr>
			<tr class="info" style="height: 60px;">
					
				<td>是否有括号</td>
				<td>
					&nbsp;&nbsp;
					<input type="radio" name="bracket" value="yes"/>是  
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="bracket" value="no"  checked="checked" />否 
				</td>	
			</tr>
	</table>
		<input type="submit" name="printTest" class="btn-lg btn-info printTest" value="打印题目" ">
		 </form>
					
				</div> 
	 		</section>
	 		
	 	</div>
		

	</div>
</body>
	
</html>
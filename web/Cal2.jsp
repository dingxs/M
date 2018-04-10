<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Create"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>计算界面</title>
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
<%
		request.setCharacterEncoding("utf-8");
		int sumOfTest = Integer.valueOf(request.getParameter("sumOfTest"));
		int lower = Integer.valueOf(request.getParameter("lower"));
		int upper = Integer.valueOf(request.getParameter("upper"));
		int sumOfOperation = Integer.valueOf(request.getParameter("sumOfOperation"));
		boolean mul_div;
		if(request.getParameter("mul_div").equals("yes")){
			mul_div=true;
		}else{
			mul_div=false;
		}
		
		boolean bracket;
		if(request.getParameter("bracket").equals("yes")){
			bracket=true;
		}else{
			bracket=false;
		} 
		ArrayList<String> expression = new Create().createExpression(sumOfTest, lower,upper, sumOfOperation, mul_div, bracket);
		
	%>
<div id="container">
		<div  class="top" >	
			<img class="imgtop" src="images/top.jpg" >
			<h1 >小学四则运算出题小程序</h1>
			<select class="selectLanguage" class="form-control"   language=javascript onchange= "location.href=this.value">
				  <option  value ="中文">中文</option>
				  <option value ="CalEnglish2.jsp">English</option>
			</select>
		</div>
			<input type="radio" name="radio-set"  id="st-control-2" value="答题" ">
			<a href="#st-panel-2" >答题</a>	
		<div class="st-scroll">
			
	 		<section class="st-panel" id="st-panel-2">
				<div class="two">
					<form action="rightAnswer.jsp" method="post">
					<ul style="position: absolute;bottom: 380px; left: 160px; list-style-type: none">			
							<input type="button" name="btn" class="btn-lg btn-info" onclick="startclock() "  value="开始答题">
							<input type="button" name="btn" class="btn-lg btn-info" value="暂停答题" onclick="pauseclock()">
							<input type="button" name="btn" class="btn-lg btn-info" onclick="stopclock()" value="停止答题">
							<input class="btn"  name="showtime" style="color:#ff0000;width:200px;height: 48px;font-size: 20px;" id="showtime" type="text" value="0时0分0秒">
					</ul>
					<table style="position: absolute;bottom: 170px; left: 200px;width: 450px;" class="table  table-bordered table-hover" >
							<tr class="info" style="height: 60px;">
								<td  style="width: 300px; ">问题</td>
								<td >答案</td>
								
							<tr>
							
						<%
					 		for(int i=0;i<expression.size();i++){
					 	%>
					 		<tr  class="success" style="height: 60px;">
					 			<td style="width: 300px; "><%=expression.get(i)%>=<input type="hidden"  name="expression" value="<%=expression.get(i)%>"></td>
					 			<td><input name="actualAnswer" ></td>
					 		</tr>
					 	<%
					 		}
					 	 %>
						
						</table>
					<input type="submit" name="submitAnswer" value="提交答案" class="btn-lg btn-info" style="position: absolute;bottom: 100px; left: 380px;">
			</form>
				</div>
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
</script>
</html>
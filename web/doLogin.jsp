<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Create" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>处理</title>
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
	<form action="Cal.jsp" method="post">
	 	<table>
	 	<%
	 		for(int i=0;i<expression.size();i++){
	 	%>
	 		<tr>
	 			<td><%=expression.get(i)%>=<input type="hidden"  name="expression" value="<%=expression.get(i)%>"></td>
	 			<td><input name="actualAnswer" ></td>
	 		</tr>
	 	<%
	 		}
	 	 %>
	 	 	<tr>
	 	 		<td colspan="2"><input type="submit" value="提交"></td>
	 	 	</tr>
		</table>
	</form>
</body>
</html>
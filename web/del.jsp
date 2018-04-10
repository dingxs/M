<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="com.Calculate"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'del.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head>
  
  <body>
    <%
        int sumOfRealAnswer=0; 
    	String[] actualAnswer = request.getParameterValues("actualAnswer");
    	String[] expression = request.getParameterValues("expression");
    	for(String s:actualAnswer)
    		System.out.println(s);
    	for(String s:expression)
    		System.out.println(s);
    	for(String s:expression)
    		System.out.println(new Calculate().calculateExpression(s));
    		
    	for(int i=0;i<actualAnswer.length;i++){
    		String answer = new Calculate().calculateExpression(expression[i]);
    		System.out.println(answer);
    		if(answer.equals(actualAnswer[i])){
    			sumOfRealAnswer++;
    		}
    	} 
    	
     %>
           你一共答对了<%=sumOfRealAnswer %>题
  </body>
</html>

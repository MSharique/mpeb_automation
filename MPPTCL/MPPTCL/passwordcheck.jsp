<%@page import= "java.io.*"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>


<html>
<head>

</head>




<body>
<% int i=1;
String name = request.getParameter("username");
String pass = request.getParameter("password");
%>



<%
try
{
if (name.equals("admin") && pass.equals("admin")) 
{
       response.sendRedirect("index2.html");
}
else
{
	   response.sendRedirect("userdetail.jsp");	
}

}

catch(Exception e)
{
	out.print(e);
   out.print("invalid");	
}
                       
%>
</body>


</html>
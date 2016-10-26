<%@page import= "java.io.*"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
body {
	background-image: url(last1.JPG);
	background-color: #D6D6D6;
}
.color {
	color: #F00;
}
</style>
<!-- TemplateParam name="OptionalRegion1" type="boolean" value="true" -->
</head>

<body style="background-color: lavender">
<div align="center">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p align="center"><img src="MP Power Transmission Co. Ltd.jpg" width="239" height="189" align="middle" />
  </p>
  <p align="center">&nbsp;</p>
</div>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center"><a href="index.jsp">select transformer</a></p>
<div align="left">
  <p>
    <% String s1 = new String();
     String flag1= new String();
  %>
  <% s1 = request.getParameter("select"); 
int len=0;
	flag1 = request.getParameter("flag");
	
%>
  <%  
if(s1!=null)
{
	out.println(s1);
	len = s1.length();
}
	if(len==0)
	{%>
    <em class="color">invalid 'username' or 'passwor<span class="color">d</span></em><span class="color">'</span>
<%}
	
%>
  </p>
  <table width="855" border="0">
    <tr>
      <td width="113"><div align="center">username </div></td>
      <td width="144"><form id="form1" name="form1" method="post" action="passwordcheck.jsp">
        
        <input type="text" name="username" id="textfield" />
        </td>
      <td width="387"><div align="center"></div></td>
      <td width="183"><div align="center"></div></td>
      </tr>
    <tr>
      <td><div align="center">password</div></td>
      <td><input type="password" name="password" id="textfield2" /></td>
      <td><div align="center"></div></td>
      <td><div align="center"></div></td>
      </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><div align="center"></div></td>
    </tr>
    <tr>
      <td><div align="center"></div></td>
      <td>
        <div align="center">
          <input type="submit" name="button" id="button" value="login" />
        </div>
      </td>
      <td><div align="center"></div></td>
      <td><div align="center"><a href="add.jsp"></a></div></td>
      </tr>
    <tr>
      <td><div align="center"></div></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      </tr>
  </table>
  
</form>
</div>
<p align="center">&nbsp;</p>
<p align="center"><a href="select_transformer.jsp"></a></p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
</body>
  
</html>

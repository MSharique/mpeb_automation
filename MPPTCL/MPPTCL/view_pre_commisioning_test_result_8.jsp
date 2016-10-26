<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>


<style type="text/css">


body,td,th {
	color: #000;
}
body {
	background-image: url(last3.JPG);
}
</style>

</head>

<body bgcolor="lavender">
<div align="right">
  <table width="100" border="0">
    <tr>
      <td><div align="right"><a href="index2.html">back to index</a></div></td>
    </tr>
    <tr>
      <td><div align="right"><a href="index.jsp">logout</a></div></td>
    </tr>
  </table>
</div>
</style>
<form id="form1" name="form1" method="post" action="view2_pre_commisioning_test_result_8.jsp">

</head>

<body>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from mpeb_26_2");%>
<% int i=1;%>
<%String s1=new String();%>
<%String s2=new String();%>
<%String s3=new String();%>
<%String s4=new String();%>
<%String s5=new String();%>
<%String s6=new String();%>
<%String s7=new String();%>


<%rs.last();%>
<%  s1 = rs.getString("TEST_VOLTAGE");%>
<%  s2 = rs.getString("KV_megger");%>
<%  s3 = rs.getString("Make_serail_NO");%>
<%  s4 = rs.getString("AMBIENT_TEMPERATURE");%>
<%  s5 = rs.getString("CORE_TO_TANK");%>
<%  s6 = rs.getString("CORE_TO_CORE_CLAMP");%>
<%  s7 = rs.getString("CORE_CLAMP_TO_TANK");%>

<h3 align="center">Core Insulation Testing <br></br></h3>
&nbsp;&nbsp;&nbsp;  TEST VOLTAGE <%=s1%>&nbsp;&nbsp;&nbsp;&nbsp; KV megger 
<%=s2%><br>
&nbsp;&nbsp;&nbsp; Make serail NO.
<%=s3%>
&nbsp;&nbsp;&nbsp; AMBIENT TEMPERATURE:-
<%=s4%>ºC</h4>
</p>
<br><br><br>
<table width="701" align="center" border="3">
		<tr>
        		<td width="37" align="center">1.</td>
                <td width="250" align="left">CORE TO TANK</td>
                <td width="388" align="center"><%=s5%>MΩ</td>
		</tr>
        
		<tr>
        		<td align="center">2.</td>
                <td align="left">CORE TO CORE CLAMP</td>
                <td align="center"><%=s6%>MΩ</td>
		</tr>
        
        <tr>
        		<td align="center">3.</td>
                <td align="left">CORE CLAMP TO TANK</td>
                <td align="center"><%=s7%>MΩ</td>
		</tr>
        
</table>
 <% rs.close();%>
<table width="880" align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="update">
</td>
</tr>
</table>

</form>
</body>
</html>

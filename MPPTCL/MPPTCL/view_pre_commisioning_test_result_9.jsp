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

<form id="form1" name="form1" method="post" action="view2_pre_commisioning_test_result_9.jsp">

</head>

<body>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from mpeb_26_3");%>
<% int i=1;%>
<%String s1=new String();%>
<%String s2=new String();%>
<%String s3=new String();%>
<%String s4=new String();%>
<%String s5=new String();%>
<%String s6=new String();%>
<%String s7=new String();%>
<%String s8=new String();%>
<%String s9=new String();%>
<%String s10=new String();%>


<%rs.last();%>
<%  s1 = rs.getString("LEAKAGE_CURRENT_MEASUREMENT");%>
<%  s2 = rs.getString("VOLTAGE_GIVEN_ON_HV_SIDE_1U_1V");%>
<%  s3 = rs.getString("VOLTAGE_GIVEN_ON_HV_SIDE_1V_1W");%>
<%  s4 = rs.getString("VOLTAGE_GIVEN_ON_HV_SIDE_1W_1U");%>
<%  s5 = rs.getString("CURRENT_MEASURED_ON_HV_SIDE_1U");%>
<%  s6 = rs.getString("CURRENT_MEASURED_ON_HV_SIDE_1V");%>
<%  s7 = rs.getString("CURRENT_MEASURED_ON_HV_SIDE_1W");%>
<%  s8 = rs.getString("CURRENT_MEASURED_Core_Clamp_Tank");%>
<%  s9 = rs.getString("CURRENT_MEASURED_Core_Core_Charge");%>
<%  s10 = rs.getString("CURRENT_MEASURED_Core_Tank");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<h4 align="center">LEAKAGE CURRENT MEASUREMENT<%=s1%></h4>



<h4 align="center">3 PHASE SHORTING DONE ON LV AND 3 PHASE SUPPLY GIVEN ON HV SIDE</h4>
<table align="center" border="3">
<tr>
		<td align="center">VOLTAGE GIVEN ON HV SIDE</td>
        <td align="center">CURRENT MEASURED ON HV SIDE </td>
        <td align="center">CURRENT MEASURED</td>

</tr>

<tr>
		<td height="34" align="center">1U-1V-<%=s2%></td>
    <td align="center">1U-<%=s3%></td>
        <td align="center">Core Clamp Tank :<%=s4%></td>

</tr>
<tr>
		<td height="32" align="center">1V-1W-<%=s5%></td>
    <td align="center">1V-<%=s6%></td>
        <td align="center">Core-Core Charge :<%=s7%></td>

</tr>

<tr>
		<td height="49" align="center">1W-1U-<%=s8%></td>
        <td align="center">1W-<%=s9%></td>
        <td align="center">Core-Tank :<%=s10%></td>

</tr>





</table>
<% rs.close();%>
<table width="880" align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="update">
</td>
</tr>
</table>

</body>
</html>

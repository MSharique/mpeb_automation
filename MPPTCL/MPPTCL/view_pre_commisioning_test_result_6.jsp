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
</div><form id="form1" name="form1" method="post" action="view2_pre_commisioning_test_result_6.jsp">

</head>

<body>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from lv_magnetic_current_test_at_normal_tap_no");%>
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
<%String s11=new String();%>
<%String s12=new String();%>

<%rs.last();%>
<%  s1 = rs.getString("3U_3V_3U_3V");%>
<%  s2 = rs.getString("3V_3W_3U_3V");%>
<%  s3 = rs.getString("3W_3U_3U_3V");%>
<%  s4 = rs.getString("3U_3V_3V_3W");%>
<%  s5 = rs.getString("3V_3W_3V_3W");%>
<%  s6 = rs.getString("3W_3U_3V_3W");%>
<%  s7 = rs.getString("3U_3V_3W_3U");%>
<%  s8 = rs.getString("3V_3W_3W_3U");%>
<%  s9 = rs.getString("3W_3U_3W_3U");%>
<%  s10 = rs.getString("voltage_1");%>
<%  s11 = rs.getString("voltage_2");%>
<%  s12 = rs.getString("voltage_3");%>
<p>
<h2 align="center">
LV MAGNETIC CURRENT TEST AT NORMAL TAP NO.</h2>
<table align="center" border="1">
  <tr>
    <h3>
    <td height="39"></td>
      <td align="center">SUPPLY VOLTS</td>
      <td align="center">3U-3V</td>
      <td align="center">3V-3W</td>
      <td align="center">3W-3U</td>
     </h3>
    
  </tr>
  <tr>
    <td align="center">3U-3V :</td>
    <td align="center"><%=s10%></td>
    <td align="center"><%=s1%></td>
    <td align="center"><%=s2%></td>
    <td align="center"><%=s3%></td>
    
  </tr>
  <tr>
    <td align="center">3V-3W :</td>
    <td align="center"><%=s11%></td>
    <td align="center"><%=s4%></td>
    <td align="center"><%=s5%></td>
    <td align="center"><%=s6%></td>
    
  </tr>
  <tr>
    <td align="center">3W-3U :</td>
    <td align="center"><%=s12%></td>
    <td align="center"><%=s7%></td>
    <td align="center"><%=s8%></td>
    <td align="center"><%=s9%></td>
   
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
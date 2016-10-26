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
</div><form id="form1" name="form1" method="post" action="view3_pre_commisioning_test_result_6.jsp">

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
<table align="center">
  <tr>
    <h3>
    <td></td>
      <td align="center">SUPPLY VOLTS</td>
      <td align="center">3U-3V</td>
      <td align="center">3V-3W</td>
      <td align="center">3W-3U</td>
     </h3>
    
  </tr>
  <tr>
    <td align="center">3U-3V :</td>
    <td align="center"><input name="1" type="text" id="1" value="<%=s10%>"></td>
    <td align="center"><input name="2" type="text" id="2" value="<%=s1%>"></td>
    <td align="center"><input name="3" type="text" id="3" value="<%=s2%>"></td>
    <td align="center"><input name="4" type="text" id="4" value="<%=s3%>"></td>
    
  </tr>
  <tr>
    <td align="center">3V-3W :</td>
    <td align="center"><input name="5" type="text" id="5"value="<%=s11%>"></td>
    <td align="center"><input name="6" type="text" id="6" value="<%=s4%>"></td>
    <td align="center"><input name="7" type="text" id="7" value="<%=s5%>"></td>
    <td align="center"><input name="8" type="text" id="8" value="<%=s6%>"></td>
    
  </tr>
  <tr>
    <td align="center">3W-3U :</td>
    <td align="center"><input name="9" type="text" id="9" value="<%=s12%>"></td>
    <td align="center"><input name="10" type="text" id="10" value="<%=s7%>"></td>
    <td align="center"><input name="11" type="text" id="11" value="<%=s8%>"></td>
    <td align="center"><input name="12" type="text" id="12" value="<%=s9%>"></td>
   
  </tr>
  </table>
  <% rs.close();%>
<table width="880" align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="save">
</td>
</tr>

</table>
</body>
</html>
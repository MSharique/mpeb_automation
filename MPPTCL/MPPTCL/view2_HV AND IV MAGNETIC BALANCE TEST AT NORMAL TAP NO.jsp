<%@page import="javax.servlet.http.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>HV AND IV MAGNETIC BALANCE TEST AT NORMAL TAP NO</title>
       <style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last3.jpg);
}
       </style>
    </head>

<body>
<form name="form1" method="post" action="view3_HV AND IV MAGNETIC BALANCE TEST AT NORMAL TAP NO.jsp">   
<h2 align="center">HV AND IV MAGNETIC BALANCE TEST AT NORMAL TAP NO.</h2>
<table border="2" align="center">
  <tr >
      <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from hv_and_iv_magnetic_balance_test_at_normal_tap_no");%>
<% if(rs.next()){%>
<% String s1 = rs.getString("1U_N_1U_N");%>
<% String s2 = rs.getString("1V_N_1U_N");%>
<% String s3 = rs.getString("1W_N_1U_N");%>
<% String s4 = rs.getString("2U_N_1U_N");%>
<% String s5 = rs.getString("2V_N_1U_N");%>
<% String s6 = rs.getString("2W_N_1U_N");%>
<% String s7 = rs.getString("1U_N_1V_N");%>
<% String s8 = rs.getString("1V_N_1V_N");%>
<% String s9 = rs.getString("1W_N_1V_N");%>
<% String s10 = rs.getString("2U_N_1V_N");%>
<% String s11 = rs.getString("2V_N_1V_N");%>
<% String s12 = rs.getString("2W_N_1V_N");%>
<% String s13 = rs.getString("1U_N_1W_N");%>
<% String s14 = rs.getString("1V_N_1W_N");%>
<% String s15 = rs.getString("1W_N_1W_N");%>
<% String s16 = rs.getString("2U_N_1W_N");%>
<% String s17 = rs.getString("2V_N_1W_N");%>
<% String s18 = rs.getString("2W_N_1W_N");%>
    <h3>
      <td align="center">SUPPLY VOLTS</td>
      <td align="center">1 U-N</td>
      <td align="center">1V-N</td>
      <td align="center">1W-N</td>
      <td align="center">2U-N</td>
      <td align="center">2V-N</td>
      <td align="center">2W-N</td>
    </h3>
  </tr>
  <tr>
    <td align="center">1U-N:</td>
    <td align="center"><input type="text" name="1" value="<%=s1%>"/></td>
    <td align="center"><input type="text" name="2" value="<%=s2%>"/></td>
    <td align="center"><input type="text" name="3" value="<%=s3%>"/></td>
    <td align="center"><input type="text" name="4" value="<%=s4%>"/></td>
    <td align="center"><input type="text" name="5" value="<%=s5%>"/></td>
    <td align="center"><input type="text" name="6" value="<%=s6%>"/></td>
  </tr>
  <tr>
    <td align="center">1V-N :</td>
    <td align="center"><input type="text" name="7" value="<%=s7%>"/></td>
    <td align="center"><input type="text" name="8" value="<%=s8%>"/></td>
    <td align="center"><input type="text" name="9" value="<%=s9%>"/></td>
    <td align="center"><input type="text" name="10" value="<%=s10%>"/></td>
    <td align="center"><input type="text" name="11" value="<%=s11%>"/></td>
    <td align="center"><input type="text" name="12" value="<%=s12%>"/></td>
  </tr>
  <tr>
    <td align="center">1W-N :</td>
    <td align="center"><input type="text" name="13" value="<%=s13%>"/></td>
    <td align="center"><input type="text" name="14" value="<%=s14%>"/></td>
    <td align="center"><input type="text" name="15" value="<%=s15%>"/></td>
    <td align="center"><input type="text" name="16" value="<%=s16%>"/></td>
    <td align="center"><input type="text" name="17" value="<%=s17%>"/></td>
    <td align="center"><input type="text" name="18" value="<%=s18%>"/></td>
  </tr>
  <% } %>
</table>
<% rs.close(); %>
<p>&nbsp;</p>
<center>
</center>
</p>
    <center>
    <input type="submit" name="button" id="button" value="Insert Data" />
  </center>
</body>
</html>

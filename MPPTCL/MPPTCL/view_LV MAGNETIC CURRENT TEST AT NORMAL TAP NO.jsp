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
        <title>LV MAGNETIC CURRENT TEST AT NORMAL TAP NO</title>
       <style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last3.JPG);
}
       </style>
    </head>
<body>
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
    <form name="form1" method="post" action="view2_LV MAGNETIC CURRENT TEST AT NORMAL TAP NO.jsp">
<h2 align="center">
LV MAGNETIC CURRENT TEST AT NORMAL TAP NO</h2>

<table border="2" align="center">
  <tr >
   <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from lv_magnetic_current_test_at_normal_tap_no");%>
<% if(rs.next()){%>
<% String s1 = rs.getString("3U_3V_3U_3V");%>
<% String s2 = rs.getString("3V_3W_3U_3V");%>
<% String s3 = rs.getString("3W_3U_3U_3V");%>
<% String s4 = rs.getString("3U_3V_3V_3W");%>
<% String s5 = rs.getString("3V_3W_3V_3W");%>
<% String s6 = rs.getString("3W_3U_3V_3W");%>
<% String s7 = rs.getString("3U_3V_3W_3U");%>
<% String s8 = rs.getString("3V_3W_3W_3U");%>
<% String s9 = rs.getString("3W_3U_3W_3U");%>

      <td align="center">SUPPLY VOLTS</td>
      <td align="center">3U-3V</td>
      <td align="center">3V-3W</td>
      <td align="center">3W-3U</td>
    
  </tr>
  <tr>
    <td align="center">3U-3V :</td>
    <td align="center"><%=s1%></td>
    <td align="center"><%=s2%></td>
    <td align="center"><%=s3%></td>
    
  </tr>
  <tr>
    <td align="center">3V-3W :</td>
    <td align="center"><%=s4%></td>
    <td align="center"><%=s5%></td>
    <td align="center"><%=s6%></td>
  </tr>
  <tr>
    <td align="center">3W-3U :</td>
    <td align="center"><%=s7%></td>
    <td align="center"><%=s8%></td>
    <td align="center"><%=s9%></td>
    
  </tr>
 <% } %>   
</table>
<% rs.close(); %>

<p>&nbsp;</p>
<p>&nbsp;</p>
<center>
  <p><em>Press save button to save the changes</em> </p>
</center>

    <center>
    <input type="submit" name="button" id="button" value="Insert Data" />
  </center>
    </form>
</body>
</html>

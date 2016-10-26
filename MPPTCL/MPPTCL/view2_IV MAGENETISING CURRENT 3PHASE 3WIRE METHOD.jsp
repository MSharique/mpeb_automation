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
        <title>OLTC details</title>
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
<form name="form1" method="post" action="view3_IV MAGENETISING CURRENT 3PHASE 3WIRE METHOD.jsp">
  <h2 align="center">
IV MAGENETISING CURRENT 3PHASE 3WIRE METHOD
</h2>
<p>&nbsp;</p>
<table border="2" align="center">
  <tr >
    <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from iv_magenetising_current_3phase_3wire_method");%>
<% if(rs.next()){%>
<% String s1 = rs.getString("TAP_NO_2U_2V");%>
<% String s2 = rs.getString("2U_PHASE_2U_2V");%>
<% String s3 = rs.getString("2V_PHASE_2U_2V");%>
<% String s4 = rs.getString("2W_PHASE_2U_2V");%>
<% String s5 = rs.getString("TAP_NO_2V_2W");%>
<% String s6 = rs.getString("2U_PHASE_2V_2W");%>
<% String s7 = rs.getString("2V_PHASE_2V_2W");%>
<% String s8 = rs.getString("2W_PHASE_2V_2W");%>
<% String s9 = rs.getString("TAP_NO_2W_2U");%>
<% String s10 = rs.getString("2U_PHASE_2W_2U");%>
<% String s11 = rs.getString("2V_PHASE_2W_2U");%>
<% String s12 = rs.getString("2W_PHASE_2W_2U");%>
      <td align="center">SUPPLY VOLTS</td>
      <td align="center">TAP NO.</td>
      <td align="center">2U-PHASE</td>
      <td align="center">2V-PHASE</td>
      <td align="center">2W-WHASE</td>
    
  </tr>
  <tr>
    <td align="center">2U-2V :</td>
    <td align="center"><input type="text" name="1" value="<%=s1%>"/></td>
    <td align="center"><input type="text" name="2" value="<%=s2%>"/></td>
    <td align="center"><input type="text" name="3" value="<%=s3%>"/></td>
    <td align="center"><input type="text" name="4" value="<%=s4%>"/></td>
  </tr>
  <tr>
    <td align="center">2V-2W :</td>
    <td align="center"><input type="text" name="5" value="<%=s5%>"/></td>
    <td align="center"><input type="text" name="6" value="<%=s6%>"/></td>
    <td align="center"><input type="text" name="7" value="<%=s7%>"/></td>
    <td align="center"><input type="text" name="8" value="<%=s8%>"/></td>
  </tr>
  <tr>
    <td align="center">2W-2U :</td>
    <td align="center"><input type="text" name="9" value="<%=s9%>"/></td>
    <td align="center"><input type="text" name="10" value="<%=s10%>"/></td>
    <td align="center"><input type="text" name="11" value="<%=s11%>"/></td>
    <td align="center"><input type="text" name="12" value="<%=s12%>"/></td>
  </tr>
<% } %>
</table>
<% rs.close(); %>
<center>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</center>

    <center>
    <input type="submit" name="button" id="button" value="save" />
  </center>
</form>
</body>
</html>

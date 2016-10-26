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
        <title>HV MAGNETISING CURRENT SINGLE PHASE METHOD</title>
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
<form name="form1" method="post" action="view2_HV MAGNETISING CURRENT SINGLE PHASE METHOD.jsp">
  <h2 align="center">
	HV MAGENETISING CURRENT SINGLE PHASE  METHOD	</h2>
	


		<table border="2" align="center">
  	<tr >
    	<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from hv_magenetising_current_single_phase_method");%>
<% if(rs.next()){%>
<% String s1 = rs.getString("TAP_NO_1U_N");%>
<% String s2 = rs.getString("1U_PHASE_1U_N");%>
<% String s3 = rs.getString("1V_PHASE_1U_N");%>
<% String s4 = rs.getString("1W_PHASE_1U_N");%>
<% String s5 = rs.getString("TAP_NO_1V_N");%>
<% String s6 = rs.getString("1U_PHASE_1V_N");%>
<% String s7 = rs.getString("1V_PHASE_1V_N");%>
<% String s8 = rs.getString("1W_PHASE_1V_N");%>
<% String s9 = rs.getString("TAP_NO_1W_N");%>
<% String s10 = rs.getString("1U_PHASE_1W_N");%>
<% String s11 = rs.getString("1V_PHASE_1W_N");%>
<% String s12 = rs.getString("1W_PHASE_1W_N");%>
      	
<td align="center">SUPPLY VOLTS</td>
      	<td align="center">TAP NO.</td>
      	<td align="center">1U-PHASE</td>
      	<td align="center">1V-PHASE</td>
      	<td align="center">1W-WHASE</td>
    	
  	</tr>
  	<tr>
    	<td align="center">1U-N :</td>
        <td align="center"><input type="text" name="1" value="<%=s1%>"/></td>
    	<td align="center"><input type="text" name="1" value="<%=s2%>"/></td>
    	<td align="center"><input type="text" name="1" value="<%=s3%>"/></td>
    	<td align="center"><input type="text" name="1" value="<%=s4%>"/></td>
  	</tr>
  	<tr>
    	<td align="center">1V-N :</td>
    	<td align="center"><input type="text" name="1" value="<%=s5%>"/></td>
    	<td align="center"><input type="text" name="1" value="<%=s6%>"/></td>
    	<td align="center"><input type="text" name="1" value="<%=s7%>"/></td>
    	<td align="center"><input type="text" name="1" value="<%=s8%>"/></td>
  	</tr>
  	<tr>
    	<td align="center">1W-N :</td>
    	<td align="center"><input type="text" name="1" value="<%=s9%>"/></td>
    	<td align="center"><input type="text" name="1" value="<%=s10%>"/></td>
    	<td align="center"><input type="text" name="1" value="<%=s11%>"/></td>
    	<td align="center"><input type="text" name="1" value="<%=s12%>"/></td>
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

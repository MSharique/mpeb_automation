<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>OLTC Driver details</title>
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
    <form name="form1" method="post" action="view3_OLTC_Driver_Details.jsp">
      
  <table align="center" border="2">
<caption><h2>OLTC Driver Details<br>
</h2></caption>
<h4>
    <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from oltc_driver_details");%>
<% if(rs.next()){%>
<% String s1 = rs.getString("Motor_rating_Data");%>
<% String s2 = rs.getString("Power");%>
<% String s3 = rs.getString("Voltage");%>
<% String s4 = rs.getString("Current");%>
<% String s5 = rs.getString("Frequency");%>
<% String s6 = rs.getString("Synchronous_Speed");%>
<% String s7 = rs.getString("Revolution_of_Driving_Shaft_per_tap_change");%>
<% String s8 = rs.getString("Running_Speed_for_one_tap_change_operation");%>
<% String s9 = rs.getString("Revoluion_of_Crank_Shaft_per_tap_change_operation");%>
<% String s10 = rs.getString("Maximum_No_of_Operating_positions");%>
<% String s11 = rs.getString("Control_Voltage");%>
<% String s12 = rs.getString("Wieght");%>
<% String s13 = rs.getString("Total_No_of_Taps");%>
<% String s14 = rs.getString("Sr_No");%>
<tr>
		<td width="30">(a).</td>
		<td width="339">Motor rating Data </td>
        <td width="156"> : 
            <input type="text" name="1" value="<%=s1%>"/></td>
</tr>

<tr>
		<td>(1).</td>
		<td>Power</td>
                <td> : <input type="text" name="2" value="<%=s2%>"/></td>
</tr>

<tr>
		<td>(2).</td>
		<td>Voltage</td>
                <td> :<input type="text" name="3" value="<%=s3%>"/></td>
</tr>



<tr>
		<td>(3).</td>
		<td>Current</td>
                <td> :<input type="text" name="4" value="<%=s4%>"/></td>        
</tr>

<tr>
		<td>(4).</td>
		<td>Frequency</td>
                <td> :<input type="text" name="5" value="<%=s5%>"/></td>        
</tr>

<tr>
		<td>(5).</td>
		<td>Synchronous Speed</td>
                <td> :<input type="text" name="6" value="<%=s6%>"/></td>        
</tr>

<tr>
		<td>(6).</td>
		<td>Revolution of Driving Shaft per tap change</td>
                <td> :<input type="text" name="7" value="<%=s7%>"/></td>        
</tr>

<tr>
		<td>(7).</td>
		<td>Running Speed for one tap change operation</td>
                <td> :<input type="text" name="8" value="<%=s8%>"/></td>        
</tr>

<tr>
		<td>(8).</td>
		<td>Revoluion of Crank Shaft  per tap change operation</td>
                <td> :<input type="text" name="9" value="<%=s9%>"/></td>        
</tr>

<tr>
		<td>(9).</td>
		<td>Maximum No. of Operating positions</td>
                <td> :<input type="text" name="10" value="<%=s10%>"/></td>        
</tr>

<tr>
		<td>(10).</td>
		<td>Control Voltage</td>
                <td> :<input type="text" name="11" value="<%=s11%>"/></td>        
</tr>

<tr>
		<td>(11).</td>
		<td>Weight</td>
                <td> : <input type="text" name="12"value="<%=s12%>"/></td>        
</tr>

<tr>
		<td>(12).</td>
		<td>Total No.of Taps</td>
                <td> :<input type="text" name="13" value="<%=s13%>"/></td>        
</tr>

<tr>
		<td>(13).</td>
		<td>Sr No.</td>
                <td> :<input type="text" name="14" value="<%=s14%>"/></td>        
</tr>

</h4>
<% }%>
</table>
<% rs.close();%>
<p>&nbsp;</p>
<center>
</center>
</p>
    <center>
    <input type="submit" name="button" id="button" value="Insert Data" />
  </center>

</form>
        
    </body>
</html>

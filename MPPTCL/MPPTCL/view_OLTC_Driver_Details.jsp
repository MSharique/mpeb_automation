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
        <form name="form1" method="post" action="view2_OLTC_Driver_Details.jsp">

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
		<th width="30">(a).</th>
		<th width="339">Motor rating Data </th>
        <th width="156"> : 
            <%=s1%></th>
</tr>

<tr>
		<th>(1).</th>
		<th>Power</th>
                <th> : <%=s2%></th>
</tr>

<tr>
		<th>(2).</th>
		<th>Voltage</th>
                <th> : <%=s3%></th>
</tr>



<tr>
		<th>(3).</th>
		<th>Current</th>
                <th> : <%=s4%></th>        
</tr>

<tr>
		<th>(4).</th>
		<th>Frequency</th>
                <th> : <%=s5%></th>        
</tr>

<tr>
		<th>(5).</th>
		<th>Synchronous Speed</th>
                <th> : <%=s6%></th>        
</tr>

<tr>
		<th>(6).</th>
		<th>Revolution of Driving Shaft per tap change</th>
                <th> : <%=s7%></th>        
</tr>

<tr>
		<th>(7).</th>
		<th>Running Speed for one tap change operation</th>
                <th> : <%=s8%></th>        
</tr>

<tr>
		<th>(8).</th>
		<th>Revoluion of Crank Shaft  per tap change operation</th>
                <th> : <%=s9%></th>        
</tr>

<tr>
		<th>(9).</th>
		<th>Maximum No. of Operating positions</th>
                <th> : <%=s10%></th>        
</tr>

<tr>
		<th>(10).</th>
		<th>Control Voltage</th>
                <th> : <%=s11%></th>        
</tr>

<tr>
		<th>(11).</th>
		<th>Weight</th>
                <th> : <%=s12%></th>        
</tr>

<tr>
		<th>(12).</th>
		<th>Total No.of Taps</th>
                <th> : <%=s13%></th>        
</tr>

<tr>
		<th>(13).</th>
		<th>Sr No.</th>
                <th> : <%=s14%></th>        
</tr>

</h4>

<% }%>
</table>
 <% rs.close();%>
<p>&nbsp;</p>
<center>
  <p>
     <input type="submit" name="button" id="button" value="Insert Data" />
  </p>
 </center>

</form>
        
    </body>
</html>

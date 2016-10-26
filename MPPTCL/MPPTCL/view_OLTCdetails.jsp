<%@page import="javax.servlet.http.*"%>
<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>OLTC details</title>
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
    <form name="form1" method="post" action="view2_OLTCdetails.jsp">

<table align="center" border="2">
<caption><h2>OLTC Details<br>
</h2></caption>
<h4>
     <tr>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from oltc_details");%>
<% if(rs.next()){%>
<% String s1 = rs.getString("Make");%>
<% String s2 = rs.getString("Type");%>
<% String s3 = rs.getString("Reted_Voltahe_to_Earth");%>
<% String s4 = rs.getString("Rated_Current");%>
<% String s5 = rs.getString("Number_of_Steps");%>
<% String s6 = rs.getString("Variation_in_Step_voltage_percent_Per_Step");%>
<% String s7 = rs.getString("Serial_No");%>
<% String s8 = rs.getString("Ohmic_Values");%>
<% String s9 = rs.getString("Time_for_Complete_Tap_Change");%>
<% String s10 = rs.getString("OLTC_Provided_on_HV_IV_Side");%>
<% String s11 = rs.getString("Divertor_Selecter_Switch_Transient_time");%>
   
		<th width="233">Make :</th>
                <th width="197"><%=s1%></th>
                <th width="296">Type :</th><th width="240"><%=s2%></th>
</tr>

<tr>
    <th>Reted Voltahe to Earth :</th><th width="240"><%=s3%>KV</th>
        <th>Rated Current :</th><th><%=s4%>A</th>
</tr>

<tr>
    <th>Number of Steps :</th><th><%=s5%></th>
    <th>Variation in Step voltage(%) Per Step :</th><th><%=s6+"%"%> </th>
</tr>

<tr>
    <th>Serial No. :</th><th><%=s7%></th>
    <th>Ohmic Values :</th><th><%=s8%>Ohms</th>
</tr>

<tr>
    <th>Time for Complete Tap Change :</th><th><%=s9%>Secs</th>						        </td>
    <th rowspan="2">Divertor Selecter Switch Transient time :</th><th><%=s10%>cycles</th>
</tr>

<tr>

    <th>OLTC Provided on HV/IV Side :</th><th><%=s11%></th>
</tr>       
<% }%>
</h4>
</table>
 <% rs.close();%>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  <center>
    <input type="submit" name="button" id="button" value="Insert Data" />
  </center>
</form>
</body>
</html>


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
    <form name="form1" method="post" action="view3_OLTCdetails.jsp">
      
  <table align="center" border="2">
<caption><h2>OLTC Details<br>
</h2></caption>
<h4>
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
    <tr>
		<td width="233">Make :</td>
                <td width="197"><input type="text" name="1" value="<%=s1%>"/></td>
                <td width="296">Type :</td><td width="240"><input type="text" name="2" value="<%=s2%>"/></td>
</tr>

<tr>
    <td>Reted Voltahe to Earth :</td><td width="240"><input type="text" name="3" value="<%=s3%>"/>KV</td>
        <td>Rated Current :</td><td><input type="text" name="4" value="<%=s4%>"/>A</td>
</tr>

<tr>
    <td>Number of Steps :</td><td><input type="text" name="5" value="<%=s5%>"/></td>
    <td>Variation in Step voltage(%) Per Step :</td><td><input type="text" name="6" value="<%=s6%>"/>%</td>
</tr>

<tr>
    <td>Serial No. :</td><td><input type="text" name="7" value="<%=s7%>"/></td>
    <td>Ohmic Values :</td><td><input type="text" name="8" value="<%=s8%>"/>Ohms</td>
</tr>

<tr>
    <td>Time for Complete Tap Change :</td><td><input type="text" name="9" value="<%=s9%>"/>Secs</td>						        </td>
    <td rowspan="2">Divertor Selecter Switch Transient time :</td><td><input type="text" name="10" value="<%=s10%>"/>cycles</td>
</tr>

<tr>

    <td>OLTC Provided on HV/IV Side :</td><td><input type="text" name="11" value="<%=s11%>"/></td>
</tr>
        

</h4>        
<% }%>
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

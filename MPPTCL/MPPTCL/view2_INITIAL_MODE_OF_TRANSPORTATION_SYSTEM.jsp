<%@page import= "java.io.*"%>
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
        <title>INITIAL MODE OF TRANSPORTATION SYSTEM</title>
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
    <form method="post" action="view3_INITIAL_MODE_OF_TRANSPORTATION_SYSTEM.jsp">
  <table  border="2" align="center">
    <h4>
        <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from initial_mode_of_transportation_system");%>
<% if(rs.next()){ %>
<% String s1 = rs.getString("By_rail");%>
<% String s2 = rs.getString("By_road");%>
<% String s3 = rs.getString("With_Oil");%>
<% String s4 = rs.getString("Without_Oil");%>
<% String s5 = rs.getString("N2_Pressure_Checked_at_Site");%>
<% String s6 = rs.getString("N2_Cylinder_Returnable");%>
    <caption><h2 align="center" style="font-family:Tahoma, Geneva, sans-serif"><u>INITIAL MODE OF TRANSPORTATION SYSTEM</u> <br>
  <br>
</h2></caption>
        
<tr>
    <td width="259">By rail :</td><td width="258"><input type="text" name="1" value="<%=s1%>"/></td>
        <td width="259">By Road :</td><td width="258"><input type="text" name="2" value="<%=s2%>"/></td>
</tr>

<tr>
		<td>With Oil :</td><td><input type="text" name="3" value="<%=s3%>"/></td>
        <td>Without Oil:</td><td><input type="text" name="4" value="<%=s4%>"/></td>
</tr>
<tr>
		<td height="44"> N<sub>2</sub>  Pressure Checked at Site :</td>
        <td>
    <input type="text" name="5" value="<%=s5%>"/></td>
        <td>N<sub>2</sub> Cylinder Returnable :</td><td><input type="radio" value="Y" name="rad">Yes<input type="radio" value="Y" name="rad">No</td></tr>
<% } %>
 </h4>
</table>
<% rs.close(); %>
<p>&nbsp;</p>
<center>
    <input type="submit" name="button" id="button" value="Insert Data" />
  </center>

</form>
</body>
</html>

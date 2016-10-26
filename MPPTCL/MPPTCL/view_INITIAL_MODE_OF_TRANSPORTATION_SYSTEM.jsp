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
<form method="post" action="view2_INITIAL_MODE_OF_TRANSPORTATION_SYSTEM.jsp">
<table  border="2" align="center">
    <caption><h2>INITIAL MODE OF TRANSPORTATION SYSTEM<br>I
</h2></caption>
    <h4>
        <tr>
        <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from initial_mode_of_transportation_system");%>
<% if(rs.next()){%>
<% String s1 = rs.getString("By_rail");%>
<% String s2 = rs.getString("By_road");%>
<% String s3 = rs.getString("With_Oil");%>
<% String s4 = rs.getString("Without_Oil");%>
<% String s5 = rs.getString("N2_Pressure_Checked_at_Site");%>
<% String s6 = rs.getString("N2_Cylinder_Returnable");%>
    
        

		<th width="259">By rail :</th><th width="258"><%=s1%></th>
        <th width="259">By Road :</th><th width="258"><%=s2%></th>
</tr>

<tr>
		<th>With Oil :</th><th><%=s3%></th>
        <th>Without Oil:</th><th><%=s4%></th>
</tr>
<tr>
		<th height="44"> N<sub>2</sub>  Pressure Checked at Site :</th>
        <th>
    <%=s5%></th>
        <th>N<sub>2</sub> Cylinder Returnable :</th><th><%=s6%></th></tr>
<% }%>
</h4>
</table>

<% rs.close();%>
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

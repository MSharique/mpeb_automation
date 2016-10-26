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
        <title>DETAILS OF SPARES TOOLS TACKLES ETC. RECEIVED WITH TRANSFORMER</title>
       <style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last3.jpg);
}
       </style>
       <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
	  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
	  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
  
	  <script>
	  $(document).ready(function() {
	    $(".cal").datepicker();
	  });
	  </script>
    </head>
    <body>
    <form method="post" action="view3_DETAILS_OF_SPARES_TOOLS_TACKLES_ETC._RECEIVED_WITH_TRANSFORMER.jsp">
  <table border="2" align="center">
    <h4>
        <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from details_of_spares_tools_tackles_etc");%>
<% if(rs.next()){%>
<% String s1 = rs.getString("Jacks_Make");%>
<% String s2 = rs.getString("Jacks_Year_of_Manufacture");%>
<% String s3 = rs.getString("Jacks_Capacity");%>
<% String s4 = rs.getString("Jacks_Type");%>
<% String s5 = rs.getString("Set_of_Squares_Size_1");%>
<% String s6 = rs.getString("Set_of_Squares_Size_2");%>
<% String s7 = rs.getString("Set_of_Squares_Size_3");%>
<caption><h2 align="center" style="font-family:Tahoma, Geneva, sans-serif"><u>DETAILS OF SPARES,TOOLS & TACKLES ETC. RECELVED WITH TRANSFORMER</u><br>
  <br>
</h2></caption>
<tr>
		<td colspan="2">
        I. Jacks.</td>
        <td colspan="2">II. Set of Squares</td>
</tr>


<tr>
    <td width="233">a. Make :</td><td width="282"><input type="text" name="1" value="<%=s1%>"/></td>
        <td colspan="2"> Size :</td>
</tr>
<tr>
		<td>b. Year of Manufacture:</td><td>
		  <input type="text" name="2" value="<%=s2%>"/></td>
        <td width="81">i).</td><td width="438">
          <input type="text" name="3" value="<%=s3%>"/></td>
</tr>
<tr>
		<td>c. Capacity :</td><td>
		  <input type="text" name="4" value="<%=s4%>"/></td>
        <td> ii).</td><td> <input type="text" name="5" value="<%=s5%>"/></td>
</tr>
<tr>
		<td>d. Type :</td><td>
		  <input type="text" name="6" value="<%=s6%>"/></td>
        <td> iii).</td><td><input type="text" name="7" value="<%=s7%>"/></td>
</tr>
<% } %>
</h4>
</table>

<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4>
<h4>&nbsp;</h4>
<p>&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="Insert Data" />
  </p>
</form>
</body>
</html>

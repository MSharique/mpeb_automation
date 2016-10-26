<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>TRANSFORMER FOUNDATION DETAILS</title>
       <style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last3.JPG);
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
<form method="post" action="view3_TRANSFORMER_FOUNDATION_DETAILS.jsp">
  <table width="1064" border="2" align="center" >	<h4>
<caption><h2 align="center" style="font-family:Tahoma, Geneva, sans-serif"><u>TRANSFORMER FOUNDATION DETAILS</u><br>
  <br>
</h2></caption>	
 <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from transformer_foundation_details");%>
<% if(rs.next()){%>
<% String s1 = rs.getString("Rail_Pole_Gauge");%>
<% String s2 = rs.getString("Rail_Pole_Center_to_Center");%>
<% String s3 = rs.getString("Rail_Pole_Length_of_Rails");%>
<% String s4 = rs.getString("Rail_Pole_Whether_Across_or_Along_the_bus");%>
<% String s5 = rs.getString("Foundation_Bearing_Capacity_Main_tank_Foundation");%>
<% String s6 = rs.getString("Foundation_Bearing_Capacity_Radiator_Bank_Foundation");%>
<% String s7 = rs.getString("Foundation_Bearing_Capacity_Foundation_made_as_per_Drawing");%>

				<tr>
                		<td colspan="2">Rail Pole :</td>
                		<td colspan="2">Foundation Bearing Capacity :</td>
  </tr>
                 <tr>
                     <td width="259" colspan>a)Gauge(inner mm):</td><td width="258"><input type="text" name="1" value="<%=s1%>"/></td><td width="259"> a)Main tank Foundation:</td><td width="258"><input type="text" name="5" value="<%=s5%>"/>
                            </td>
                 <tr>       					
                     <td>b)Center to 		Center(mm):</td><td><input type="text" name="2" value="<%=s2%>"/></td>
                 <td>b)Radiator Bank Foundation : </td>
                 <td>
                     <input type="text" name="6" value="<%=s6%>"/>
                   </td>
</tr>
                <tr >
                    <td> c)Length of Rails(mm):</td><td><input type="text" name="3" value="<%=s3%>"/></td>
                    <td height="55" rowspan="2">Foundation made as per Drawing 				(Civil P & D reference Drawing NO.):</td><td rowspan="2"><input type="text" name="7" value="<%=s7%>"/>
</td></tr>
                 <tr>
                     <td height="26" rowspan="2">d)Whether(Across/Along) the bus :</td><td><input type="text" name="4"value="<%=s4%>"/> </td></tr> </h4>     
<% }%>
</table>
 <% rs.close();%>
<p>&nbsp;</p>
<p>&nbsp;</p>
 <center>
    <p>&nbsp;</p>
 </center>
</p>
    <center>
    <input type="submit" name="button" id="button" value="update" />
  </center>
</form>
</body>
</html>

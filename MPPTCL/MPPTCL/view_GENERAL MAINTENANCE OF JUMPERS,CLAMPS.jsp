<%@page import= "java.io.*"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
body {
	background-image: url(last3.JPG);
}
</style>

<style type="text/css">
body,td,th {
	color: #000;
}
</style>
</head>
<body style="background-color: lavender">

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
<form id="form1" name="form1" method="post" action="view2_GENERAL MAINTENANCE OF JUMPERS,CLAMPS.jsp">
<center>
  <h1 align="center">GENERAL MAINTENANCE (JUMPERS,CLAMPS etc.)</h1>
  
</center>
<p>&nbsp;</p>
<table width="1258" border="1" style="border-collapse: collapse">
<tr>
<th width="60" scope="col">#</th>
<th width="60" scope="col" >S.No.</th>
<th width="78" scope="col" >Date</th>
<th width="225" scope="col">Reason for Maintenance Routine / Forced</th>
<th width="609" scope="col">Details of Works Carried out</th>
<th width="252" scope="col">Remarks &amp; Name of Engineer</th>
</tr>

<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from general_maintenance");%>
<% int i=1;%>

<% if(rs.next()){%>

<tr>
<% do{%>
<% String s1 = rs.getString("date");%>
<% String s2 = rs.getString("reason_for_maintenance_Routine_forced");%>
<% String s3 = rs.getString("details_of_works_carried_out");%>
<% String s4 = rs.getString("remarks_and_name_of_Engineer");%>
<th width="60" scope="col"><a href="update.html">edit</a></th>
<th width="60" scope="col"><%=i%></th>
<th width="78" scope="col"><%=s1%></th>
<th width="225" scope="col"><p><%=s2%></p></th>
<th width="609" scope="col"><%=s3%></th>
<th width="252" scope="col"><%=s4%></th>
</tr>
<% i++;%>
<% }while(rs.next());%>
<% }%>
</table>
<% rs.close();%>
<p align="center">&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="add data">
</p>
<p align="center">&nbsp;</p>

</form>
<p align="center"><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass">&nbsp;</p>
<p align="right">&lt;&lt; <a href="view_BREATHING_ARRANGMENT_MAINTENANCE_viz_CONSERVATOR_BREATHER.jsp">prev</a> ... <a href="view_TRANSFORMER EARTHPITS RESSISTANCE MEASUREMENT.jsp">next</a> &gt;&gt;</p>
</body>


</html>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DETAILS OF OIL REPLACEMENT/RECONDITIONING WORKS</title>
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

<body bgcolor="lavender">
<form id="form1" name="form1" method="post" action="view3_DETAILS_OF_OIL_REPLACEMENT_OR_RECONDITIONING_WORKS.jsp">
  <center>
<h1 align="center">DETAILS OF OIL REPLACEMENT/RECONDITIONING WORKS</h1>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<table width="1290" border="1">
  <tr>
    <th width="45" rowspan="2" scope="col">S.No.</th>
    <th width="197" rowspan="2" scope="col">Activity</th>
    <th width="197" rowspan="2" scope="col">Purpose</th>
    <th colspan="2" scope="col">Parameters </th>
    <th width="120" rowspan="2" scope="col">From Date/Time</th>
    <th width="120" rowspan="2" scope="col">To Date/Time</th>
    <th width="120" rowspan="2" scope="col">Duration Hrs.</th>
    <th width="193" rowspan="2" scope="col">Remarks &amp; Name of Engineer</th>
  </tr>
     <tr>
    <td width="120"><div align="center">Temperature</div></td>
    <td width="120"><div align="center">Vaccum</div></td>
  </tr>

   <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from details_of_oil_placement_and_reconditioning_works");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr align="center">
      <% do{%>
     <% String s1 = rs.getString("activity");%>
     <% String s2 = rs.getString("purpose");%>
     <% String s3 = rs.getString("parameters_temperature");%>
     <% String s4 = rs.getString("parameters_vaccum");%>
      <% String s5 = rs.getString("from_date_time");%>
      <% String s6 = rs.getString("to_date_time");%>
      <% String s7 = rs.getString("duration_hrs");%>
      <% String s8 = rs.getString("remarks_and_name_of_engineer");%>
      
    <th width="45" scope="col"><%=i%></th>
    <th width="197"  scope="col"><%=s1%></th>
    <th width="197" scope="col"><%=s2%></th>
    <td width="120" scope="col" ><%=s3%></td>
    <td width="120" scope="col"><%=s4%></td>
    <th width="120"  scope="col"><%=s5%></th>
    <th width="120"  scope="col"><%=s6%></th>
    <th width="120" scope="col"><%=s7%></th>
    <th width="193" scope="col"><%=s8%></th>
  </tr>
  <% i++;%>
<% }while(rs.next());%>
<% }%>
 <tr>
    <td><div align="center"><%=i%></div></td>
    <td><textarea name="textarea1" id="textarea3" cols="30" rows="4"></textarea></td>
    <td><textarea name="textarea2" id="textarea14" cols="30" rows="4"></textarea></td>
    <td><input name="textfield3" type="text" id="textfield6" size="20" /></td>
    <td><input name="textfield4" type="text" id="textfield16" size="20" /></td>
    <td><input name="textfield5" type="text" class="cal" id="textfield26" size="20" /></td>
    <td><input name="textfield6" type="text" class="cal" id="textfield36" size="20" /></td>
    <td><input name="textfield7" type="text" id="textfield46" size="20" /></td>
    <td><textarea name="textarea8" id="textarea24" cols="30" rows="4"></textarea></td>
  </tr>
 </table>
      <% rs.close();%>
      <p align="center">&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="save">
</p>


</body>
</html>
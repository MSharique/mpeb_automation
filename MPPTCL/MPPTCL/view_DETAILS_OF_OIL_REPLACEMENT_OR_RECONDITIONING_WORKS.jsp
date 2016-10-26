
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
	background-image: url(last3.JPG);
}
</style>
</head>

<body bgcolor="lavender">
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
<form id="form1" name="form1" method="post" action="view2_DETAILS_OF_OIL_REPLACEMENT_OR_RECONDITIONING_WORKS.jsp">
  <center>
<h1 align="center">DETAILS OF OIL REPLACEMENT/RECONDITIONING WORKS</h1>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<table width="1290" border="1">
  <tr>
         <th width="60"  rowspan="2" scope="col">#</th>
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
      
     
     <th width="56" scope="col"><input type="radio" name="radio" id="radio" value="<%=i%>">
  <label for="radio"></label></th>
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
</table>
<% rs.close();%>
<p>&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="insert data">
</p>
<p align="center"><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass">
</p>
<p align="center">&nbsp;</p>
<p align="right">&lt;&lt; <a href="view_CHECKING_OF_NEUTRAL_EARTHING_ARRANGEMENT_LIKE_CONDITION_OF_CLAMPS_and_CONDUCTORS.jsp">prev</a> ... <a href="view_MAJOR MAINTENANCE WORKS DONE ON THE TRANSFORMER.jsp">next</a> &gt;&gt;&nbsp;</p>
</body>
</html>

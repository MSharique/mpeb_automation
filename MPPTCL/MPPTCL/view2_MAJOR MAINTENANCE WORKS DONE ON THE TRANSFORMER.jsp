<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MAJOR MAINTENANCE WORKS DONE ON THE TRANSFORMER</title>
<style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last3.jpg);
}
</style>
</head>

<body style="background-color: lavender">
<form id="form1" name="form1" method="post" action="view3_MAJOR MAINTENANCE WORKS DONE ON THE TRANSFORMER.jsp">
  <center>
<h1 align="center">MAJOR MAINTENANCE WORKS DONE ON THE TRANSFORMER
</h1>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<table width="1207" border="1">
  <tr>
    <th width="52" rowspan="2" scope="col">S.No.</th>
    <th width="70" rowspan="2" scope="col">Date</th>
    <th width="197" rowspan="2" scope="col">Reasons &amp; Details of Activity</th>
    <th colspan="5" scope="col">Details of Work Done by Dept./Firm's Engineer</th>
  </tr>
  <tr>
    <td width="197">Name of Agency</td>
    <td width="197">Duration of work</td>
    <td width="197">Details of Spare Parts Used </td>
    <td width="197">Achievements</td>
    <td width="52">Name of Engineer</td>
  </tr>

    <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from major_maintenance_works_done_on_the_transformer");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr>
       <% do{%>
<% String s1 = rs.getString("date");%>
<% String s2 = rs.getString("reasons_and_details_of_activity");%>
<% String s3 = rs.getString("name_of_agency");%>
<% String s4 = rs.getString("duration_of_work");%>
<% String s5 = rs.getString("details_of_spare_parts_used");%>
<% String s6 = rs.getString("achievements");%>
<% String s7 = rs.getString("name_of_engineer");%>

<th width="52"  scope="col"><%=i%></th>
    <th width="70"scope="col"><%=s1%></th>
    <th width="197" scope="col"><%=s2%></th>
    <td width="197"><%=s3%></td>
    <td width="197"><%=s4%></td>
    <td width="197"><%=s5%></td>
    <td width="197"><%=s6%></td>
    <td width="52"><%=s7%></td>
</tr>
     <% i++;%>
<% }while(rs.next());%>
<% }%>
 <tr>
    <td><div align="center"><%=i%></div></td>
    <td><input name="textfield1" type="text" id="textfield" size="15" /></td>
    <td><textarea name="textarea2" id="textarea" cols="30" rows="4"></textarea></td>
    <td><textarea name="textarea3" id="textarea2" cols="30" rows="4"></textarea></td>
    <td><textarea name="textarea4" id="textarea3" cols="30" rows="4"></textarea></td>
    <td><textarea name="textarea5" id="textarea4" cols="30" rows="4"></textarea></td>
    <td><textarea name="textarea6" id="textarea5" cols="30" rows="4"></textarea></td>
    <td><textarea name="textarea7" id="textarea6" cols="30" rows="4"></textarea></td>
  </tr>
 </table>
      <% rs.close();%>
      <p align="center">&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="save">
</p>


</body>
</html>
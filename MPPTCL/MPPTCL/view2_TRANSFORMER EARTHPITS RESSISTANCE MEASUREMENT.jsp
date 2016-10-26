<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TRANSFORMER EARTHPITS RESSISTANCE MEASUREMENT</title>
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

<body style="background-color: lavender">
<form id="form1" name="form1" method="post" action="view3_TRANSFORMER EARTHPITS RESSISTANCE MEASUREMENT.jsp">
  <center>

<h1 align="center">TRANSFORMER EARTHPITS RESSISTANCE MEASUREMENT</h1>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<table border="1" width="100%">
  <tr>
    <th width="37" scope="col">S.No.</th>
    <th width="90" scope="col">Date</th>
    <th width="120" scope="col">HV Side Neutral Earthing</th>
    <th width="120" scope="col">LV Side Neutral Earthing</th>
    <th width="120" scope="col">HV side L.A. Earthing</th>
    <th width="120" scope="col">IV side L.A. Earthing</th>
    <th width="120" scope="col">LV side L.A. Earthing</th>
    <th width="312" scope="col">Remarks &amp; Name of Engineer</th>
  </tr>

<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from transformer_earthpits_ressistance_measurement");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr>
       <% do{%>
<% String s1 = rs.getString("date");%>
<% String s2 = rs.getString("HV_side_neutral_earthing");%>
<% String s3 = rs.getString("LV_side_neutral_earthing");%>
<% String s4 = rs.getString("HV_side_LA_earthing");%>
<% String s5 = rs.getString("IV_side_LA_earthing");%>
<% String s6 = rs.getString("LV_side_LA_earthing");%>
<% String s7 = rs.getString("remarks_and_name_of_engineer");%>

    <th width="37" scope="col"><%=i%></th>
    <th width="90" scope="col"><%=s1%></th>
    <th width="120" scope="col"><%=s2%></th>
    <th width="120" scope="col"><%=s3%></th>
    <th width="120" scope="col"><%=s4%></th>
    <th width="120" scope="col"><%=s5%></th>
    <th width="120" scope="col"><%=s6%></th>
    <th width="312" scope="col"><%=s7%></th>
  </tr>
  <% i++;%>
<% }while(rs.next());%>
<% }%>
<tr>
     <td><div align="center"><%=i%></div></td>
    <td><input name="Date" type="text" class="cal" id="textfield2" style="width:100%" /></td>
    <td><input name="HV Side Neutral Earthing" type="text" style="width:100%" id="textfield13"  /></td>
    <td><input name="LV Side Neutral Earthing" type="text" style="width:100%" id="textfield24"  /></td>
    <td><input name="HV side L.A. Earthing type"text" style="width:100%" id="textfield35"  /></td>
    <td><input name="IV side L.A. Earthing" type="text" style="width:100%" id="textfield46"  /></td>
    <td><input name="LV side L.A. Earthing" type="text" style="width:100%" id="textfield57"  /></td>
    <td><input name="Remarks & Name of Engineer" type="text" style="width:100%" id="textfield68"  /></td>
</tr>
</table>
      <% rs.close();%>
      <p align="center">&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="save">
</p>


</body>
</html>
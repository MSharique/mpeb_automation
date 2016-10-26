<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>I.R. VALUES BETWEEN CORE / END FRAME (CORE CLAMP) / TANK  </title>
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

<body style="background-color: lavender">
<form id="form1" name="form1" method="post" action="view3_IR_VALUES_BETWEEN_CORE _END_FRAME_CORE_CLAMP_TANK.jsp">
  <center>
<p align="center"><strong>Only during major maintenance / tripping</strong></p>
<p align="center"><strong>I.R. VALUES BETWEEN CORE / END FRAME (CORE CLAMP) / TANK  </strong></p>
<div align="center">
  <table width="100%" border="1" cellpadding="0">
    <tr>
      <th rowspan="2" scope="col">S.No.</th>
      <th  rowspan="2" scope="col">Date</th>
      <th  rowspan="2" scope="col">Tap No. </th>
      <th  rowspan="2" scope="col">Megger</th>
      <th  rowspan="2" scope="col"><p >Oil</p><p > Temp </p></th>
      <th colspan="3" scope="col">I.R. VALUES </th>
      <th  rowspan="2" >Remarks Name  Sign. of Engineer</th>
    </tr>
    <tr>
      <th  scope="col">Core-Tank</th>
      <th scope="col">
      Core-Core Clamp </th>
      <th scope="col">Core Clamp-Tank</th>
    </tr>
      <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from ir_values_between_core_or_end_frame_or_tank");%>
<% int i=1;%>
<% if(rs.next()){%>
<tr>
    <% do{%>
<% String s1 = rs.getString("Date");%>
<% String s2 = rs.getString("tap_no");%>
<% String s3 = rs.getString("megger");%>
<% String s4 = rs.getString("oil_temp");%>
<% String s5 = rs.getString("IR_core_tank");%>
<% String s6 = rs.getString("core_coreclamp");%>
<% String s7 = rs.getString("IR_core_clamp_tank");%>
<% String s8 = rs.getString("remarks_and_name_of_engineer");%>

<th scope="col"><%=i%></th>
      <th   scope="col"><%=s1%></th>
      <th   scope="col"><%=s2%></th>
      <th scope="col"><%=s3%></th>
      <th scope="col"><%=s4%></th>
      <th  scope="col"><%=s5%></th>
      <th scope="col"><%=s6%></th>
      <th scope="col"><%=s7%></th>
      <th  ><%=s8%></th>
    </tr>
    <% i++;%>
<% }while(rs.next());%>
<% }%>


<tr>
    <td align="center"><%=i%></td>
      <td><input name="Date" type="text" class="cal" style="width:100%"   /></td>
      <td><input name="Tap No." type="text" style="width:100%"  /></td>
      <td><input name="Megger" type="text" style="width:100%" /></td>
      <td><input name="Oil Temp" type="text" style="width:100%"   /></td>
      <td><input name="Core-Tank" type="text" style="width:100%"   /></td>
      <td><input name="Core-Core Clamp" type="text" style="width:100%" /></td>
      <td><input name="Core Clamp-Tank" type="text" style="width:100%"   /></td>
      <td><input name="Remarks Name Sign. of Engineer" type="text" style="width:100%"   /></td>
</tr>
  </table>
      <% rs.close();%>
      <p align="center">&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="save">
</p>


</body>
</html>
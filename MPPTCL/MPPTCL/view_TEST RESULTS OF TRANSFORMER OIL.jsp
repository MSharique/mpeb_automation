<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TEST RESULTS OF TRANSFORMER OIL </title><style type="text/css">

body,td,th {
	color: #000;
}
body {
	background-image: url(last4.JPG);
}
</style>
</head>

<body style="background-color: lavender">
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
<form id="form1" name="form1" method="post" action="view2_TEST RESULTS OF TRANSFORMER OIL.jsp">
  <center>
<div align="center"><strong><h1>TEST RESULTS OF TRANSFORMER OIL </h1></strong></br>
</div>
<table width="100%" border="1">
  <tr>
    <th width="60" rowspan="2"  scope="col">#</th>
    <th  rowspan="2" scope="col">S.No.</th>
    <th  rowspan="2" scope="col">Date of sampling</th>
    <th  rowspan="2" scope="col"> Weather Condition &amp; Temp </th>
    <th  rowspan="2" scope="col"><p >
      Top/</p>
    <p >Bottom Sample </p></th>
    <th  rowspan="2" scope="col">Date of Testing  </th>
    <th rowspan="2" scope="col">Name of Testing lab. </th>
    <th  rowspan="2" scope="col">Routine / Tripping </th>
    <th  rowspan="2" scope="col">Tan Delta at 90 C </th>
    <th  rowspan="2" scope="col">Moisture Content (PPM) </th>
    <th  rowspan="2" scope="col">Density (gm/cm<code>3</code>) </th>
    <th  rowspan="2" scope="col">IFT (N/M)</th>
    <th  rowspan="2" scope="col">Flash Point (C) </th>
    <th  rowspan="2" scope="col">Resistivity (ohm-cm) at 90 C </th>
    <th  rowspan="2" scope="col">BDV (KV)</th>
    <th  rowspan="2" scope="col"><p >Acidity </p>
      <p >(Mg/KOH</p>
      <p >/g) </p>
    </th>
    <th colspan="2" scope="col">OLTC TANK </th>
    <th  rowspan="2" scope="col">Relative Saturation </th>
    <th  rowspan="2" scope="col"><p >Remarks Name &amp;</p>
    <p > Sign of Engineer </p></th>
  </tr>
  <tr>
    <th scope="col">Moisture Content (PPM) </th>
    <th scope="col">BDV (KV)</th>
  </tr>

      <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from test_results_of_transformer_oil");%>
<% int i=1;%>
<% if(rs.next()){%>
  <tr>
      <% do{%>
<% String s1 = rs.getString("date_of_sampling");%>
<% String s2 = rs.getString("weather_condition_and_temp");%>
<% String s3 = rs.getString("top_bottom_sample");%>
<% String s4 = rs.getString("date_of_testing");%>
<% String s5 = rs.getString("name_of_testing_lab");%>
<% String s6 = rs.getString("routing_tripping");%>
<% String s7 = rs.getString("tan_delta_at_90_C");%>
<% String s8 = rs.getString("moisture_content_PPM");%>
<% String s9 = rs.getString("density");%>
<% String s10 = rs.getString("IFT");%>
<% String s11 = rs.getString("flash_point");%>
<% String s12 = rs.getString("resistivity");%>
<% String s13 = rs.getString("BDV");%>
<% String s14 = rs.getString("acidity");%>
<% String s15 = rs.getString("OLTC_moisture_content");%>
<% String s16 = rs.getString("OLTC_BDV");%>
<% String s17 = rs.getString("relative_saturation");%>
<% String s18 = rs.getString("remarks_and_name_of_engineer");%>


      <th width="56" scope="col"><input type="radio" name="radio" id="radio" value="<%=i%>">
  <label for="radio"></label></th>
    <th  scope="col"><%=i%></th>
    <th   scope="col"><%=s1%></th>
    <th   scope="col"><%=s2%></th>
    <th   scope="col"><%=s3%></th>
    <th  scope="col"><%=s4%></th>
    <th  scope="col"><%=s5%></th>
    <th   scope="col"><%=s6%></th>
    <th   scope="col"><%=s7%></th>
    <th   scope="col"><%=s8%></th>
    <th   scope="col"><%=s9%></th>
    <th   scope="col"><%=s10%></th>
    <th   scope="col"><%=s11%></th>
    <th   scope="col"><%=s12%></th>
    <th  scope="col"><%=s13%></th>
    <th   scope="col"><%=s14%></th>
    <th scope="col"><%=s15%></th>
    <th scope="col"><%=s16%></th>
    <th   scope="col"><%=s17%></th>
    <th   scope="col"><%=s18%></th>
  </tr>
  <% i++;%>
<% }while(rs.next());%>
<% }%>
</table>
<% rs.close();%>
<p>&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="add data">
</p>
<p align="center"><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass">&nbsp;</p>
<p align="center">&nbsp;</p>
<h4 align="right">&lt;&lt; <a href="view_IR_VALUES_BETWEEN_CORE _END_FRAME_CORE_CLAMP_TANK.jsp">prev</a> ... <a href="view_TAN DELTA CAPACITANCE MEASUREMENT - BUSHING.jsp">next</a> &gt;&gt;</h4>
</body>
</html>
    

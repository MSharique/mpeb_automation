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

<form id="form1" name="form1" method="post" action="view2_TRANSFORMER EARTHPITS RESSISTANCE MEASUREMENT.jsp">
  <center>

<h1 align="center">TRANSFORMER EARTHPITS RESSISTANCE MEASUREMENT</h1>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<table border="1" width="100%">
  <tr>
       <th width="60"  scope="col">#</th>
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

    <th width="56" scope="col"><input type="radio" name="radio" id="radio" value="<%=i%>">
  <label for="radio"></label></th>
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
</table>
<% rs.close();%>
<p>&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="insert data">
</p>
<p align="center"><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass">&nbsp;</p>
<p align="center">&nbsp;</p>
<h4 align="right">&lt;&lt; <a href="view_GENERAL MAINTENANCE OF JUMPERS,CLAMPS.jsp">prev</a> ... <a href="view_CHECKING_OF_NEUTRAL_EARTHING_ARRANGEMENT_LIKE_CONDITION_OF_CLAMPS_and_CONDUCTORS.jsp">next</a> &gt;&gt;</h4>

</body>
</html>
    
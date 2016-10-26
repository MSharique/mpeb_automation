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
<form id="form1" name="form1" method="post" action="view2_IR_VALUES_BETWEEN_CORE _END_FRAME_CORE_CLAMP_TANK.jsp">
  <center>
<p align="center"><strong>Only during major maintenance / tripping</strong></p>
<p align="center"><strong>I.R. VALUES BETWEEN CORE / END FRAME (CORE CLAMP) / TANK  </strong></p>
<div align="center">
  <table width="100%" border="1" cellpadding="0">
    <tr>
        <th width="60" rowspan="2" scope="col">#</th>
      <th rowspan="2" scope="col">S.No.</th>
      <th  rowspan="2" scope="col">
        Date
        
      </th>
      <th  rowspan="2" scope="col">Tap No. </th>
      <th  rowspan="2" scope="col">Megger</th>
      <th  rowspan="2" scope="col"><p >
        Oil</p>
        <p > Temp </p></th>
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

<th width="56" scope="col"><input type="radio" name="radio" id="radio" value="<%=i%>">
  <label for="radio"></label></th>
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
</table>
<% rs.close();%>
<p>&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="insert data">
<a href=" " onclick="window.print();return false;"></p>
<p align="center">
  <input style="" type="button" value="print" class="textboxclass">
</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<h4 align="right">&lt;&lt; <a href="view_IR VALUES DETAILS OF TRANSFORMER II.jsp">prev</a> ... <a href="view_TEST RESULTS OF TRANSFORMER OIL.jsp">next</a> &gt;&gt;</h4>
</body>
</html>
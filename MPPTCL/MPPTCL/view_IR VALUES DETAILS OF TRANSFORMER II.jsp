<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>IR VALUES DETAILS OF TRANSFORMER</title>
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
<form id="form1" name="form1" method="post" action="view2_IR VALUES DETAILS OF TRANSFORMER II.jsp">
  <center>

<body>
<div align="center">
  <p><strong><h1>IR VALUES DETAILS OF TRANSFORMER</h1></strong>  </p>
</div>
<table width="100%" border="1">
  <tr>
       <th width="60" rowspan="3"  scope="col">#</th>
    <th width="30" rowspan="3" scope="col">S.No.</th>
    <th width="48" rowspan="3" scope="col">Date</th>
    <th width="30" rowspan="3" scope="col"><p >Time</p>
    <p >(hr)</p></th>
    <th colspan="15" scope="col">IR Values recorded </th>
    <th width="108" rowspan="3" scope="col">Remarks Name &amp; Signature of Engineer </th>
  </tr>
  <tr>
    <th colspan="3">HV-LV</th>
    <th width="36" rowspan="2"><p >PI 600 /</p>
    <p >60/15 sec </p></th>
    <th width="78" rowspan="2">I.R. Value (60sec) Converted at 60C </th>
    <th colspan="3">HV-IV</th>
    <th width="36" rowspan="2"><p >PI 600 /</p>
    <p >60/15 sec </p></th>
    <th width="78" rowspan="2">I.R. Value (60sec) Converted at 60C </th>
    <th colspan="3">LV-IV</th>
    <th width="36" rowspan="2"><p >PI 600 /</p>
    <p >60/15 sec </p></th>
    <th width="78" rowspan="2">
      I.R. Value (60sec) Converted at 60C</th>
  </tr>
  <tr>
    <th height="63">15 sec </th>
    <th>60 sec </th>
    <th>600 sec </th>
    <th>15 sec</th>
    <th>60 sec </th>
    <th>600 sec</th>
    <th>15 sec</th>
    <th>60 sec </th>
    <th>600 sec</th>
  </tr>

    <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from ir_values_details_of_transformer_ii");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr>
      <% do{%>
<% String s1 = rs.getString("date");%>
<% String s2 = rs.getString("time");%>
<% String s3 = rs.getString("HV_LV_15_sec");%>
<% String s4 = rs.getString("HV_LV_60_sec");%>
<% String s5 = rs.getString("HV_LV_600_sec");%>
<% String s6 = rs.getString("HV_LV_PI_600_60_15_sec");%>
<% String s7 = rs.getString("HV_LV_IR_value_converted_at_60_C");%>
<% String s8 = rs.getString("HV_IV_15_sec");%>
<% String s9 = rs.getString("HV_IV_60_sec");%>
<% String s10 = rs.getString("HV_IV_600_sec");%>
<% String s11 = rs.getString("HV_IV_PI_600_60_15_sec");%>
<% String s12 = rs.getString("HV_IV_IR_value_converted_at_60_C");%>
<% String s13 = rs.getString("LV_IV_15_sec");%>
<% String s14 = rs.getString("LV_IV_60_sec");%>
<% String s15 = rs.getString("LV_IV_600_sec");%>
<% String s16 = rs.getString("LV_IV_PI_600_60_15_sec");%>
<% String s17 = rs.getString("LV_IV_IR_value_converted_at_60_C");%>
<% String s18 = rs.getString("remarks_name_and_sign_of_Engineer");%>



<th width="56" scope="col"><a href="update.html">edit</a></th>
<th width="30"  scope="col"><%=i%></th>
 <th width="48"  scope="col"><%=s1%></th>
 <th width="30" scope="col"><%=s2%></th>
     <th height="63"><%=s3%></th>
    <th><%=s4%></th>
    <th><%=s5%></th>
     <th width="36" ><%=s6%></th>
    <th width="78" ><%=s7%></th>
    <th><%=s8%></th>
    <th><%=s9%></th>
    <th><%=s10%></th>
      <th width="36" ><%=s11%></th>
    <th width="78" ><%=s12%></th>
    <th><%=s13%></th>
    <th><%=s14%></th>
    <th><%=s15%></th>
    <th width="36" ><%=s16%></th>
    <th width="78" ><%=s17%></th>
    <th width="108"  scope="col"><%=s18%></th>
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
<h4 align="right">&lt;&lt; <a href="view_IR VALUES DETAILS OF TRANSFORMER I.jsp">prev</a> ... <a href="view_IR_VALUES_BETWEEN_CORE _END_FRAME_CORE_CLAMP_TANK.jsp">next</a> &gt;&gt;</h4>
</body>
</html>

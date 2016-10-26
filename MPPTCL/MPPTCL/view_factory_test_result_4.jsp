<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>


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

<form id="form1" name="form1" method="post" action="view2_factory_test_result_4.jsp">
<body>
<div align="center"><span class="style1">
  <p>
 <%String s1=new String();%>
<%String s2=new String();%>
<%String s3=new String();%>
<%String s4=new String();%>
<%String s5=new String();%>
<%String s6=new String();%>
<%String s7=new String();%>
<%String s8=new String();%>
<%String s9=new String();%>
<%String s10=new String();%>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from d2_2");%>
<% int i=1;%>
<%rs.last();%>
<%  s1 = rs.getString("Vector_Group_as_per_name_plate");%>
<%  s2 = rs.getString("Voltage_1_1U_N");%>
<%  s3 = rs.getString("Voltage_2_1U_2U");%>
<% s4 = rs.getString("Voltage_3_1V_3V");%>
<%  s5 = rs.getString("Voltage_1_3W_N");%>
<%  s6 = rs.getString("Voltage_2_2U_N");%>
<% s7 = rs.getString("Voltage_3_3W_2V");%>
<%  s8 = rs.getString("Voltage_1_1U_3W");%>
<%  s9 = rs.getString("Voltage_2_1W_3V");%>
<%  s10 = rs.getString("Voltage_3_3W_2W");%>

<p><strong><span class="style1">IV. (a) Vector Group and Polarity Test </span></strong></p>
<p><span class="style1">Vector Group as per name plate </span><%=s1%>
</p>
<p>3ph AC supply applied to HV (With 1U-2U shorted) </p>
<table width="635" border="1">
  <tr>
    <th width="67" height="32" scope="col">Terminals</th>
    <th width="129" scope="col">Voltage</th>
    <th width="75" scope="col">Terminals</th>
    <th width="127" scope="col">Voltage</th>
    <th width="69" scope="col">Terminals</th>
    <th width="128" scope="col">Voltage</th>
  </tr>
  <tr>
    <td>1U-N</td>
    <td> <%=s2%>Volts</td>
    <td>1U-2U</td>
    <td> <%=s3%>Volts</td>
    <td>1V-3V</td>
    <td> <%=s4%>Volts</td>
  </tr>
  <tr>
    <td>3W-N</td>
    <td> <%=s5%>Volts</td>
    <td>2U-N</td>
    <td> <%=s6%>Volts</td>
    <td>3W-2V</td>
    <td><%=s7%> Volts</td>
  </tr>
  <tr>
    <td>1U-3W</td>
    <td> <%=s8%>Volts</td>
    <td>1W-3V</td>
    <td> <%=s9%>Volts</td>
    <td>3W-2W</td>
    <td> <%=s10%>Volts</td>
  </tr>
</table>
<p>(1U-N) = (3W-N) + (1U-3W)</p>
<p>(1U-1N) = (1U-2U) + (2U-N)</p>
<p>(1W-3V) &gt; (1V-3V)</p>
<p>(3W-2V) = (3W-2W)</p>
<table width="880" align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="update">
</td>
</tr>
</table>
<p align="center"><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass"></p>
<p align="right">&lt;&lt; <a href="view_factory_test_result_3.jsp">prev</a> ...... <a href="view_factory_test_result_4_2.jsp">next</a> &gt;&gt;</p>

</form>
</body>
</html>

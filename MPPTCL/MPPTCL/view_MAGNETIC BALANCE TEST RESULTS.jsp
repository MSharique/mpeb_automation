<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>MAGNETIC BALANCE TEST RESULTS </title>
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
<form id="form1" name="form1" method="post" action="view2_MAGNETIC BALANCE TEST RESULTS.jsp">
  <center>
<div align="center"><strong><h1>MAGNETIC BALANCE TEST RESULTS</h1> </br></strong>
</div>
<table  border="1">
  <tr>
      <th width="60" rowspan="3" scope="col">#</th>
    <th  rowspan="3" scope="col">S.No.</th>
    <th  rowspan="3" scope="col">Date</th>
    <th  rowspan="3" scope="col">Routine/ Tripping</th>
    <th colspan="4" scope="col">HV Magnetic Balance Test </th>
    <th colspan="4" scope="col">IV Magnetic Balance Test</th>
    <th colspan="4" scope="col">LV Magnetic Balance Test At Normal Tap No. </th>
    <th  rowspan="3" scope="col">Remarks &amp; Sign of Engineer </th>
  </tr>
  <tr>
    <th rowspan="2" scope="col">Terminal where Voltage Applied </th>
    <th colspan="3" scope="col">Voltage measured in Volts </th>
    <th rowspan="2" scope="col">Terminal where Voltage Applied </th>
    <th colspan="3" scope="col">Voltage measured in Volts </th>
    <th rowspan="2" scope="col">Terminal where Voltage Applied </th>
    <th colspan="3" scope="col">Voltage measured in Volts </th>
  </tr>
  <tr>
    <th  scope="col">1U-N</th>
    <th  scope="col">1V-N</th>
    <th  scope="col">1W-N</th>
    <th  scope="col">2U-N</th>
    <th  scope="col">2V-N</th>
    <th  scope="col">2W-N</th>
    <th  scope="col">3U-3V</th>
    <th  scope="col">3V-3W</th>
    <th  scope="col">3W-3U</th>
  </tr>

    <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from magnetic_balance_test_results");%>
<% int i=1;%>
<% if(rs.next()){%>

    <tr>
          <% do{%>
<% String s1 = rs.getString("date");%>
<% String s2 = rs.getString("Routing_Tripping");%>
<% String s3 = rs.getString("HV_terminal_where_voltage_applied");%>
<% String s4 = rs.getString("HV_1U_N");%>
<% String s5 = rs.getString("HV_1V_N");%>
<% String s6 = rs.getString("HV_1W_N");%>
<% String s7 = rs.getString("IV_1U_N");%>
<% String s8 = rs.getString("IV_terminal_where_voltage_applied");%>
<% String s9 = rs.getString("IV_1V_N");%>
<% String s10 = rs.getString("IV_1W_N");%>
<% String s11 = rs.getString("LV_terminal_where_voltage_applied");%>
<% String s12 = rs.getString("LV_1U_N");%>
<% String s13 = rs.getString("LV_1V_N");%>
<% String s14 = rs.getString("LV_1W_N");%>
<% String s15 = rs.getString("remarks_and_name_of_engineer");%>

<th width="56" scope="col"><input type="radio" name="radio" id="radio" value="<%=i%>">
  <label for="radio"></label></th>

    <th   scope="col"><%=i%></th>
    <th   scope="col"><%=s1%></th>
    <th   scope="col"><%=s2%></th>
      <th  scope="col"><%=s3%></th>
      <th  scope="col"><%=s4%></th>
    <th  scope="col"><%=s5%></th>
    <th  scope="col"><%=s6%></th>
     <th  scope="col"><%=s7%></th>
     <th  scope="col"><%=s8%></th>
    <th  scope="col"><%=s9%></th>
    <th  scope="col"><%=s10%></th>
     <th  scope="col"> <%=s11%></th>
      <th  scope="col"><%=s12%></th>
    <th  scope="col"><%=s13%></th>
    <th  scope="col"><%=s14%></th>
    <th   scope="col"><%=s15%></th>
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
<h4 align="right">&lt;&lt; <a href="view_MAGNETISING CURRENT TEST RESULT.jsp">prev</a> ... <a href="view_MEASUREMENT OF VIBRATION AND NOISE.jsp">next</a> &gt;&gt;</h4>
</body>
</html>
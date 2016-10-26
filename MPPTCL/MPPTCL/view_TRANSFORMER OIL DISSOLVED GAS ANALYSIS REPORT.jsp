
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TRANSFORMER OIL DISSOLVED GAS ANALYSIS REPORT </title><style type="text/css">

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
<form id="form1" name="form1" method="post" action="view2_TRANSFORMER OIL DISSOLVED GAS ANALYSIS REPORT.jsp">
<div align="center">
  <p>&nbsp;</p>
  <p><strong></strong><h1 align="center"><strong>TRANSFORMER OIL DISSOLVED GAS ANALYSIS REPORT </strong></h1>
  </p>
  <div align="center"><br/>
  </div>
</div>
<div align="center">
  <table width="100%" border="1">
    <tr>
      <th width="60"  scope="col"><div align="center">#</div></th>
      <th  scope="col"><div align="center">S.No </div></th>
      <th  scope="col"><div align="center">Date of Sam-pling </div></th>
      <th  scope="col"><div align="center">Date of Testing </div></th>
      <th scope="col"><div align="center">Tested at Lab. </div></th>
      <th width="60" scope="col"><div align="center">Total Gas Content </div></th>
      <th scope="col"><div align="center">Methane CH4 PPM </div></th>
      <th scope="col"> <div align="center">Ethane c2h6 PPM </div></th>
      <th scope="col">
        <div align="center">EThy-lene C2H4 PPM</div></th>
      <th scope="col">
        <div align="center">Ace-tylene C2H2 PPM </div></th>
      <th scope="col"><div align="center">Nitr-ogen N2 PPM </div></th>
      <th scope="col"><div align="center">Hydr-ogen H2 PPM </div></th>
      <th width="43" scope="col"><div align="center">Carbon mono-oxide CO PPM </div></th>
      <th width="43" scope="col"><div align="center">Carbon di-oxide CO2 PPM </div></th>
      <th scope="col"><div align="center">Other Gases </div></th>
      <th width="102" scope="col"><div align="center">Interpretation By Testing Lab. </div></th>
      <th width="90" scope="col"><div align="center">Corrective Action Taken </div></th>
      <th width="60" scope="col">
        <div align="center">Remarks</div></th>
    </tr>
  <% Class.forName("com.mysql.jdbc.Driver");%>
  <% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
  <% Statement st = con.createStatement();%>
  <% ResultSet rs = st.executeQuery("select * from transformer_oil_dissolved_gas_analysis_report");%>
  <% int i=1;%>
  <% if(rs.next()){%>

    <tr>
      <% do{%>
      <% String s1 = rs.getString("date_of_sampling");%>
      <% String s2 = rs.getString("date_of_testing");%>
      <% String s3 = rs.getString("tested_at_lab");%>
      <% String s4 = rs.getString("total_gas_content");%>
      <% String s5 = rs.getString("methan_ppm");%>
      <% String s6 = rs.getString("ethane_ppm");%>
      <% String s7 = rs.getString("ethylene_ppm");%>
      <% String s8 = rs.getString("acetylene_ppm");%>
      <% String s9 = rs.getString("nitrogen_ppm");%>
      <% String s10 = rs.getString("hydrogen_ppm");%>
      <% String s11 = rs.getString("carbon_monooxide_ppm");%>
      <% String s12 = rs.getString("carbon_di_oxode_ppm");%>
      <% String s13 = rs.getString("other_gases");%>
      <% String s14 = rs.getString("interpretation_by_testing_lab");%>
      <% String s15 = rs.getString("corrective_action_taken");%>
      <% String s16 = rs.getString("remarks");%>
      <th width="56" scope="col"><div align="center"><input type="radio" name="radio" id="radio" value="<%=i%>">
  <label for="radio"></label></div></th>
      <th  scope="col"><div align="center"><%=i%></div></th>
      <th  scope="col"><div align="center"><%=s1%></div></th>
      <th  scope="col"><div align="center"><%=s2%></div></th>
      <th scope="col"><div align="center"><%=s3%></div></th>
      <th width="60" scope="col"><div align="center"><%=s4%></div></th>
      <th scope="col"><div align="center"><%=s5%></div></th>
      <th scope="col"><div align="center"><%=s6%></div></th>
      <th scope="col"><div align="center"><%=s7%></div></th>
      <th scope="col"><div align="center"><%=s8%></div></th>
      <th scope="col"><div align="center"><%=s9%></div></th>
      <th scope="col"><div align="center"><%=s10%></div></th>
      <th width="43" scope="col"><div align="center"><%=s11%></div></th>
      <th width="43" scope="col"><div align="center"><%=s12%></div></th>
      <th scope="col"><div align="center"><%=s13%></div></th>
      <th width="102" scope="col"><div align="center"><%=s14%></div></th>
      <th width="90" scope="col"><div align="center"><%=s15%></div></th>
      <th width="60" scope="col"><div align="center"><%=s16%></div></th>
      </tr>
    <% i++;%>
    <% }while(rs.next());%>
    <% }%>
    </table>
  <% rs.close();%>
  
</div>
<p>&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="insert data">

</p>
<p align="center"><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass"></p>
<h4 align="right">&lt;&lt; <a href="view_IR VALUES OF BUSHING.jsp">prev</a> ...... <a href="view_MAGNETISING CURRENT TEST RESULT.jsp">next</a> &gt;&gt;</h4>

</body>
</html>
    
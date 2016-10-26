
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>MAGNETISING CURRENT TEST RESULT </title>
<style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-color: #D6D6D6;
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
<form id="form1" name="form1" method="post" action="view2_MAGNETISING CURRENT TEST RESULT.jsp">
  <center>
<div align="center"><strong><h1>MAGNETISING CURRENT TEST RESULT</h1> </strong>
</div>
<table width="100%" border="1">
  <tr>
      <th width="60" rowspan="4"  scope="col">#</th>
    <th width="30" rowspan="4" scope="col">S.No.</th>
    <th width="48" rowspan="4" scope="col">Date</th>
    <th width="54" rowspan="4" scope="col">Routine/ Tripping </th>
    <th colspan="12" scope="col">HV Magnetising Current Details </th>
    <th colspan="12" scope="col">IV/LV Magnetising Current Details </th>
    <th width="72" rowspan="4" scope="col">Remarks Name &amp; Sign of Engineer </th>
  </tr>
  <tr>
    <th colspan="6" scope="col">3-Phase 3W Method </th>
    <th colspan="6" scope="col">Single Phase Method </th>
    <th colspan="6" scope="col">3-Phase 3W Method </th>
    <th colspan="6" scope="col">Single Phase Method </th>
  </tr>
  <tr>
    <th height="38" colspan="3" scope="col">Voltage Applied in Volts </th>
    <th colspan="3" scope="col">Measured Current  </th>
    <th colspan="3" scope="col">Voltage Applied in Volts </th>
    <th colspan="3" scope="col">Measured Current </th>
    <th colspan="3" scope="col">Voltage Applied in Volts </th>
    <th colspan="3" scope="col">Measured Current </th>
    <th colspan="3" scope="col">Voltage Applied in Volts </th>
    <th colspan="3" scope="col">Measured Current </th>
  </tr>
  <tr>
    <th scope="col">1U-1V</th>
    <th scope="col">1V-1W</th>
    <th scope="col">1W-1U</th>
    <th scope="col">1U</th>
    <th scope="col">1V</th>
    <th scope="col">1W</th>
    <th scope="col">1U-N</th>
    <th scope="col">1V-N</th>
    <th scope="col">1W-N</th>
    <th scope="col">1U</th>
    <th scope="col">1V</th>
    <th scope="col">1W</th>
    <th scope="col">1U-1V</th>
    <th scope="col">1V-1W</th>
    <th scope="col">1W-1U</th>
    <th scope="col">1U</th>
    <th scope="col">1V</th>
    <th scope="col">1W</th>
    <th scope="col">1U-N</th>
    <th scope="col">1V-N</th>
    <th scope="col">1W-N</th>
    <th scope="col">1U</th>
    <th scope="col">1V</th>
    <th scope="col">1W</th>
  </tr>

      <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from magnetising_current_test_result");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr>
      <% do{%>
<% String s1 = rs.getString("date");%>
<% String s2 = rs.getString("Routing_Tripping");%>
<% String s3 = rs.getString("HV_3phase_volt_1U_1V");%>
<% String s4 = rs.getString("HV_3phase_volt_1V_1W");%>
<% String s5 = rs.getString("HV_3phase_volt_1W_1U");%>
<% String s6 = rs.getString("HV_3phase_current_1U");%>
<% String s7 = rs.getString("HV_3phase_current_1V");%>
<% String s8 = rs.getString("HV_3phase_current_1W");%>
<% String s9 = rs.getString("HV_single_phase_volt_1U_1N");%>
<% String s10 = rs.getString("HV_single_phase_volt_1V_1N");%>
<% String s11 = rs.getString("HV_single_phase_volt_1W_1N");%>
<% String s12 = rs.getString("HV_single_phase_current_1U");%>
<% String s13 = rs.getString("HV_single_phase_current_1V");%>
<% String s14 = rs.getString("HV_single_phase_current_1W");%>
<% String s15 = rs.getString("IVLV_3phase_volt_1U_1V");%>
<% String s16 = rs.getString("IVLV_3phase_volt_1V_1W");%>
<% String s17 = rs.getString("IVLV_3phase_volt_1W_1U");%>
<% String s18 = rs.getString("IVLV_3phase_current_1U");%>
<% String s19 = rs.getString("IVLV_3phase_current_1V");%>
<% String s20 = rs.getString("IVLV_3phase_current_1W");%>
<% String s21 = rs.getString("IVLV_single_phase_volt_1U_1N");%>
<% String s22 = rs.getString("IVLV_single_phase_volt_1V_1N");%>
<% String s23 = rs.getString("IVLV_single_phase_volt_1W_1N");%>
<% String s24 = rs.getString("IVLV_single_phase_current_1U");%>
<% String s25 = rs.getString("IVLV_single_phase_current_1V");%>
<% String s26 = rs.getString("IVLV_single_phase_current_1W");%>
<% String s27 = rs.getString("remarks_and_name_of_engineer");%>

      <th width="56" scope="col"><input type="radio" name="radio" id="radio" value="<%=i%>">
  <label for="radio"></label></th>
    <th width="30"  scope="col"><%=i%></th>
    <th width="48"  scope="col"><%=s1%></th>
    <th width="54" scope="col"><%=s2%></th>
     <th scope="col"><%=s3%></th>
    <th scope="col"><%=s4%></th>
    <th scope="col"><%=s5%></th>
    <th scope="col"><%=s6%></th>
    <th scope="col"><%=s7%></th>
    <th scope="col"><%=s8%></th>
    <th scope="col"><%=s9%></th>
    <th scope="col"><%=s10%></th>
    <th scope="col"><%=s11%></th>
    <th scope="col"><%=s12%></th>
    <th scope="col"><%=s13%></th>
    <th scope="col"><%=s14%></th>
    <th scope="col"><%=s15%></th>
    <th scope="col"><%=s16%></th>
    <th scope="col"><%=s17%></th>
    <th scope="col"><%=s18%></th>
    <th scope="col"><%=s19%></th>
    <th scope="col"><%=s20%></th>
    <th scope="col"><%=s21%></th>
    <th scope="col"><%=s22%></th>
    <th scope="col"><%=s23%></th>
    <th scope="col"><%=s24%></th>
    <th scope="col"><%=s25%></th>
    <th scope="col"><%=s26%></th>
     <th width="72"  scope="col"><%=s27%></th>
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
<h4 align="right">&lt;&lt; <a href="view_TRANSFORMER OIL DISSOLVED GAS ANALYSIS REPORT.jsp">prev</a> ... next &gt;&gt;</h4>
</body>
</html>
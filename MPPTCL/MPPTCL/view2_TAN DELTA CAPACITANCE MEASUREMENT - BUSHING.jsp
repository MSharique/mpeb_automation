
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TAN DELTA CAPACITANCE MEASUREMENT - BUSHING</title>
<style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-color: #D6D6D6;
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
<form id="form1" name="form1" method="post" action="view3_TAN DELTA CAPACITANCE MEASUREMENT - BUSHING.jsp">
  <center>
<div align="center"><h1>TAN DELTA CAPACITANCE MEASUREMENT - BUSHING</h1>
</div>
<table width="1500" border="1">
  <tr>
      <th width="30" rowspan="3" scope="col">S.No.</th>
    <th width="48" rowspan="3" scope="col">Date</th>
    <th width="72" rowspan="3" scope="col">Measuring Instrument make S.No. </th>
    <th width="60" rowspan="3" scope="col">Voltage of mesure--ment </p>    </th>
    <th width="60" rowspan="3" scope="col">Weather Condition fair/rainy </th>
    <th width="60" rowspan="3" scope="col">Ambient Temp(C)</th>
    <th colspan="6" scope="col">Capacitance &amp; Tan delta of HV bushings </th>
    <th colspan="2" rowspan="2" scope="col">Neutral Bushing S.No. </th>
    <th colspan="6" scope="col">Capacitance &amp; Tan delta of IV bushings </th>
     <th colspan="2" rowspan="2" scope="col">Neutral Bushing S.No. </th>
    <th colspan="6" scope="col">Capacitance &amp; Tan delta of LV bushings </th>
    <th colspan="2" rowspan="2" scope="col">Neutral Bushing S.No.</th>
  </tr>
  <tr>
    <th colspan="2" scope="col">1 U phase S.No. </th>
    <th colspan="2" scope="col">1 V phase S.No. </th>
    <th colspan="2" scope="col">1 W phase S.No. </th>
    <th colspan="2" scope="col">2 U phase S.No. </th>
    <th colspan="2" scope="col">2 V phase S.No. </th>
    <th colspan="2" scope="col">2 W phase S.No. </th>
    <th colspan="2" scope="col">3 U phase S.No. </th>
    <th colspan="2" scope="col">3 V phase S.No. </th>
    <th colspan="2" scope="col">3 W phase S.No. </th>
  </tr>
  <tr>
    <th scope="col">Capa-citance pf </th>
    <th scope="col">tan delta % </th>
    <th scope="col">Capa-citance pf </th>
    <th scope="col">tan delta % </th>
    <th scope="col"><p >Capa-citance pf </p></th>
    <th scope="col">tan delta % </th>
    <th scope="col">Capa-citance pf </th>
    <th scope="col">tan delta % </th>
    <th scope="col">Capa-citance pf</th>
    <th scope="col">tan delta % </th>
    <th scope="col">Capa-citance pf </th>
    <th scope="col">tan delta % </th>
    <th scope="col">Capa-citance pf </th>
    <th scope="col">tan delta % </th>
    <th scope="col"> Capa-citance pf </th>
    <th scope="col"> tan delta % </th>
    <th scope="col">Capa-citance pf </th>
    <th scope="col">tan delta % </th>
    <th scope="col">Capa-citance pf </th>
    <th scope="col">tan delta % </th>
    <th scope="col">Capa-citance pf </th>
    <th scope="col">tan delta % </th>
    <th scope="col">Capa-citance pf </th>
    <th scope="col">tan delta % </th>
  </tr>

      <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from tan_delta_capacitance_measurement_bushing");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr>
      <% do{%>
<% String s1 = rs.getString("date");%>
<% String s2 = rs.getString("measuring_instrument_make_S.No");%>
<% String s3 = rs.getString("voltage_of_measurement");%>
<% String s4 = rs.getString("weather_condition_fair_rainy");%>
<% String s5 = rs.getString("ambient_temp");%>
<% String s6 = rs.getString("HV_1U_capacitance_pf");%>
<% String s7 = rs.getString("HV_1U_tan_delta");%>
<% String s8 = rs.getString("HV_1V_capacitance_pf");%>
<% String s9 = rs.getString("HV_1V_tan_delta");%>
<% String s10 = rs.getString("HV_1W_capacitance_pf");%>
<% String s11 = rs.getString("HV_1W_tan_delta");%>
<% String s12 = rs.getString("HV_neutral_capacitance_pf");%>
<% String s13 = rs.getString("HV_neutral_tan_delta");%>
<% String s14 = rs.getString("IV_2U_capacitance_pf");%>
<% String s15 = rs.getString("IV_2U_tan_delta");%>
<% String s16 = rs.getString("IV_2V_capacitance_pf");%>
<% String s17 = rs.getString("IV_2V_tan_delta");%>
<% String s18 = rs.getString("IV_2W_capacitance_pf");%>
<% String s19 = rs.getString("IV_2W_tan_delta");%>
<% String s20 = rs.getString("IV_neutral_capacitance_pf");%>
<% String s21 = rs.getString("IV_neutral_tan_delta");%>
<% String s22 = rs.getString("LV_3U_capacitance_pf");%>
<% String s23 = rs.getString("LV_3U_tan_delta");%>
<% String s24 = rs.getString("LV_3V_capacitance_pf");%>
<% String s25 = rs.getString("LV_3V_tan_delta");%>
<% String s26 = rs.getString("LV_3W_capacitance_pf");%>
<% String s27 = rs.getString("LV_3W_tan_delta");%>
<% String s28 = rs.getString("LV_neutral_capacitance_pf");%>
<% String s29 = rs.getString("LV_neutral_tan_delta");%>

      <th width="30" scope="col"><%=i%></th>
    <th width="48" scope="col"><%=s1%></th>
    <th width="72"  scope="col"><%=s2%></th>
    <th width="60"  scope="col"><%=s3%></th>
    <th width="60"  scope="col"><%=s4%></th>
    <th width="60"  scope="col"><%=s5%></th>
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
    <th scope="col"><%=s27%></th>
    <th scope="col"><%=s28%></th>
    <th scope="col"><%=s29%></th>
  </tr>
  
  <% i++;%>
<% }while(rs.next());%>
<% }%>
<tr>
      <td><div align="center"><%=i%></div></td>
    <td><input name="textfield1" type="text"  class="cal" /></td>
    <td><input name="textfield2" type="text" /></td>
    <td><input name="textfield3" type="text"   /></td>
    <td><input name="textfield4" type="text"   /></td>
    <td><input name="textfield5" type="text"   /></td>
    <td><input name="textfield6" type="text" /></td>
    <td ><input name="textfield7" type="text" /></td>
    <td ><input name="textfield8" type="text" /></td>
    <td ><input name="textfield9" type="text" /></td>
    <td ><input name="textfield10" type="text" /></td>
    <td ><input name="textfield11" type="text" /></td>
    <td ><input name="textfield12" type="text" /></td>
    <td ><input name="textfield13" type="text" /></td>
    <td ><input name="textfield14" type="text" /></td>
    <td ><input name="textfield15" type="text" /></td>
    <td ><input name="textfield16" type="text" /></td>
    <td ><input name="textfield17" type="text" /></td>
    <td ><input name="textfield18" type="text" /></td>
    <td ><input name="textfield19" type="text" /></td>
    <td ><input name="textfield20" type="text" /></td>
    <td ><input name="textfield21" type="text" /></td>
    <td ><input name="textfield22" type="text" /></td>
    <td ><input name="textfield23" type="text" /></td>
    <td ><input name="textfield24" type="text" /></td>
    <td ><input name="textfield25" type="text" /></td>
    <td ><input name="textfield26" type="text" /></td>
    <td ><input name="textfield27" type="text" /></td>
    <td ><input name="textfield28" type="text" /></td>
    <td ><input name="textfield29" type="text" /></td>
  </tr>
</table>
    <p align="center">

  </p>
<p align="center">&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="save">
</p>

</form>
</body>


  
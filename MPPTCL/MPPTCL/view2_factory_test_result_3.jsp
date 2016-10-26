
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


<form id="form1" name="form1" method="post" action="view3_factory_test_result_3.jsp" >
<body>

<%String s1=new String();%>

body,td,th {
	color: #000;
}
body {
	background-image: url(last3.JPG);
}
</style>
<form id="form1" name="form1" method="post" action="view3_factory_test_result_3.jsp" >


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
</style>
<%String s2=new String();%>
<%String s3=new String();%>
<%String s4=new String();%>
<%String s5=new String();%>
<%String s6=new String();%>
<%String s7=new String();%>
<%String s8=new String();%>
<%String s9=new String();%>
<%String s10=new String();%>
<%String s11=new String();%>
<%String s12=new String();%>
<%String s13=new String();%>
<%String s14=new String();%>
<%String s15=new String();%>
<%String s16=new String();%>
<%String s17=new String();%>
<%String s18=new String();%>
<%String s19=new String();%>
<%String s20=new String();%>
<%String s21=new String();%>
<%String s22=new String();%>
<%String s23=new String();%>
<%String s24=new String();%>
<%String s25=new String();%>
<%String s26=new String();%>
<%String s27=new String();%>
<%String s28=new String();%>
<%String s29=new String();%>
<%String s30=new String();%>
<%String s31=new String();%>
<%String s32=new String();%>
<%String s33=new String();%>

<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from d2_1");%>
<% int i=1;%>
<%rs.last();%>
<%  s1 = rs.getString("Voltage_1U_1V");%>
<%  s2 = rs.getString("1U_1U_1V");%>
<%  s3 = rs.getString("1V_1U_1V");%>
<% s4 = rs.getString("1W_1U_1V");%>
<%  s5 = rs.getString("Voltage_1V_1W");%>
<%  s6 = rs.getString("1U_1V_1W");%>
<% s7 = rs.getString("1V_1V_1W");%>
<%  s8 = rs.getString("1W_1V_1W");%>
<%  s9 = rs.getString("Voltage_1W_1U");%>
<% s10 = rs.getString("1U_1W_1U");%>
<%  s11 = rs.getString("1V_1W_1U");%>
<% s12 = rs.getString("1W_1W_1U");%>
<%  s13 = rs.getString("Voltage_1U_1V_2_1U_1V");%>
<%  s14 = rs.getString("Current_in_HV_1U_1U_1V");%>
<%  s15 = rs.getString("Current_in_HV_1V_1U_1V");%>
<% s16 = rs.getString("Current_in_HV_1W_1U_1V");%>
<% s17 = rs.getString("Current_in_LV_1U_1U_1V");%>
<% s18 = rs.getString("Current_in_LV_1V_1U_1V");%>
<%  s19 = rs.getString("Current_in_LV_1W_1U_1V");%>
<%  s20 = rs.getString("Voltage_1V_1W_2_1V_1W");%>
<% s21 = rs.getString("Current_in_HV_1U_1V_1W");%>
<%  s22 = rs.getString("Current_in_HV_1V_1V_1W");%>
<% s23 = rs.getString("Current_in_HV_1W_1V_1W");%>
<% s24 = rs.getString("Current_in_LV_1U_1V_1W");%>
<%  s25 = rs.getString("Current_in_LV_1V_1V_1W");%>
<% s26 = rs.getString("Current_in_LV_1W_1V_1W");%>
<%  s27 = rs.getString("Voltage_1W_1U_2_1W_1U");%>
<% s28 = rs.getString("Current_in_HV_1U_1W_1U");%>
<% s29 = rs.getString("Current_in_HV_1V_1W_1U");%>
<% s30 = rs.getString("Current_in_HV_1W_1W_1U");%>
<%  s31 = rs.getString("Current_in_LV_1U_1W_1U");%>
<%  s32 = rs.getString("Current_in_LV_1V_1W_1U");%>
<%  s33 = rs.getString("Current_in_LV_1W_1W_1U");%>
<p><span class="style1">III.</span> <span class="style1">Low Voltage Current test</span></p>
<p class="style5">IV side short circuited and 3 phase 400 V, 50Hz AC applied on HV side at normal tap (without earthing neutral) (LV kept open) </p>

<table width="607" border="1">
  <tr>
    <th width="71" rowspan="2" scope="col">Terminals</th>
    <th width="127" rowspan="2" scope="col">Voltage</th>
    <th colspan="3" scope="col">Current in HV </th>
  </tr>
  <tr>
    <th scope="col">1U</th>
    <th scope="col">1V</th>
    <th scope="col">1W</th>
  </tr>
  <tr>
    <td>1U-1V</td>
    <td>     <input name="1" type="text" size="15" value=<%=s1%> />
      Volts
   </td>
    <td width="124">
      <input name="2" type="text" size="15" id="2" value=<%=s2%> />
      Amp
   </td>
    <td width="124">
      <input name="3" type="text" size="15" id="3" value=<%=s3%> />
      Amp
    </td>
    <td width="127">
      <input name="4" type="text" size="15" id="4" value=<%=s4%> />
      Amp
    </td>
  </tr>
  <tr>
    <td>1V-1W</td>
    <td>
      <input name="5" type="text" size="15" id="5"value=<%=s5%> />
      Volts
    </td>
    <td>
      <input name="6" type="text" size="15" id="6" value=<%=s6%> />
      Amp
    </td>
    <td>      <input name="7" type="text" size="15" id="7" value=<%=s7%> />
      Amp
    </td>
    <td>     <input name="8" type="text" size="15" id="8"  value=<%=s8%> />
      Amp
   </td>
  </tr>
  <tr>
    <td>1W-1U</td>
    <td>
      <input name="9" type="text" size="15" id="9" value=<%=s9%> />
      Volts
    </td>
    <td>      <input name="10" type="text" size="15" id="10" value=<%=s10%>  />
      Amp
   </td>
    <td>
      <input name="11" type="text" size="15" id="11" value=<%=s11%> />
      Amp
    </td>
    <td>      <input name="12" type="text" size="15" id="12" value=<%=s12%> />
      Amp
    </td>
  </tr>
</table>
<p class="style5">LV side short circuited and 3 phase 400 V, 50Hz AC applied on HV side at normal tap (without earthing neutral) (IV kept open) </p>
<table width="1000" border="1">
  <tr>
    <th width="70" rowspan="2" scope="col">Terminals</th>
    <th width="127" rowspan="2" scope="col">Voltage</th>
    <th colspan="3" scope="col">Current in HV </th>
    <th colspan="3" scope="col">Current in LV</th>
  </tr>
  <tr>
    <th width="124" scope="col">1U</th>
    <th width="125" scope="col">1V</th>
    <th width="126" scope="col">1W</th>
    <th width="124" scope="col">2U</th>
    <th width="128" scope="col">2V</th>
    <th width="124" scope="col">2W</th>
  </tr>
  <tr>
    <td>1U-1V</td>
    <td><input name="13" type="text" size="15" id="13" value=<%=s13%> />
Volts</td>
    <td><input name="14" type="text" size="15" id="14" value=<%=s14%> />
Amp</td>
    <td><input name="15" type="text" size="15" id="15" value=<%=s15%> />
Amp</td>
    <td><input name="16" type="text" size="15" id="16" value=<%=s16%> />
Amp</td>
    <td><input name="17" type="text" size="15" id="17" value=<%=s17%> />
Amp</td>
    <td><input name="18" type="text" size="15" id="18"  value=<%=s18%> />
Amp</td>
    <td><input name="19" type="text" size="15" id="19" value=<%=s19%> />
Amp</td>
  </tr>
  <tr>
    <td>1V-1W</td>
    <td><input name="20" type="text" size="15" id="20" value=<%=s20%> />
Volts</td>
    <td><input name="21" type="text" size="15" id="21" value=<%=s21%> />
Amp</td>
    <td><input name="22" type="text" size="15" id="22" value=<%=s22%> />
Amp</td>
    <td><input name="23" type="text" size="15" id="23" value=<%=s23%> />
Amp</td>
    <td><input name="24" type="text" size="15" id="24" value=<%=s24%> />
Amp</td>
    <td><input name="25" type="text" size="15" id="25" value=<%=s25%> />
Amp</td>
    <td><input name="26" type="text" size="15" id="26" value=<%=s26%> />
Amp</td>
  </tr>
  <tr>
    <td>1W-1U</td>
    <td><input name="27" type="text" size="15" id="27" value=<%=s27%> />
Volts</td>
    <td><input name="28" type="text" size="15" id="28" value=<%=s28%> />
Amp</td>
    <td><input name="29" type="text" size="15" id="29" value=<%=s29%> />
Amp</td>
    <td><input name="30" type="text" size="15" id="30" value=<%=s30%> />
Amp</td>
    <td><input name="31" type="text" size="15" id="31"  value=<%=s31%> />
Amp</td>
    <td><input name="32" type="text" size="15" id="32" value=<%=s32%> />
Amp</td>
    <td><input name="33" type="text" size="15" id="33" value=<%=s33%> />
Amp</td>
  </tr>
</table>
<table width="880" align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="save">
</td>
</tr>
</table>
</form>
</body>
</html>



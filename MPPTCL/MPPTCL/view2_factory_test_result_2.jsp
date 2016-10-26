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
</style>

<form id="form1" name="form1" method="post" action="view3_factory_test_result_2.jsp">

<body>
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
<%String s34=new String();%>
<%String s35=new String();%>

  <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from d1_2");%>
<% int i=1;%>
<%rs.last();%>
<%  s1 = rs.getString("Tap_No_HV_1");%>
<%  s2 = rs.getString("1U_N_V");%>
<%  s3 = rs.getString("1U_C");%>
<% s4 = rs.getString("1V_1W_V");%>
<%  s5 = rs.getString("1V_C");%>
<%  s6 = rs.getString("1W_1U_V");%>
<% s7 = rs.getString("1W_C");%>
<%  s8 = rs.getString("Tap_No_HV_2");%>
<%  s9 = rs.getString("1U_1V");%>
<% s10 = rs.getString("1U");%>
<%  s11 = rs.getString("1V_1W");%>
<% s12 = rs.getString("1V");%>
<%  s13 = rs.getString("1W_1U");%>
<%  s14 = rs.getString("1W");%>
<%  s15 = rs.getString("Tap_No_IV_1");%>
<% s16 = rs.getString("2U_N");%>
<% s17 = rs.getString("2U");%>
<% s18 = rs.getString("2V_N");%>
<%  s19 = rs.getString("2V");%>
<%  s20 = rs.getString("2W_N");%>
<% s21 = rs.getString("2W");%>
<%  s22 = rs.getString("Tap_No_IV_2");%>
<% s23 = rs.getString("2U_2V");%>
<% s24 = rs.getString("2U_C");%>
<%  s25 = rs.getString("2V_2W");%>
<% s26 = rs.getString("2V_C");%>
<%  s27 = rs.getString("2W_2U");%>
<% s28 = rs.getString("2W_C");%>
<% s29 = rs.getString("Tap_No_LV_1");%>
<% s30 = rs.getString("3U_3V");%>
<% s31 = rs.getString("3U");%>
<% s32 = rs.getString("3V_3W");%>
<% s33 = rs.getString("3V");%>
<% s34 = rs.getString("3W_3U");%>
<% s35 = rs.getString("3W");%>

<p><strong><span class="style1">II. Magnetising Current and low voltage Short Circuit Test</span></strong></p>
<p class="style1">Magnetising  current from HV side : Tap No. 
  <input name="1" type="text" id="1" value="<%=s1%>" />
</p>
<p class="style1">Single Phase Method </p>
<table width="419" border="1">
  <tr>
    <th width="71" scope="col">Suuply Terminals </th>
    <th width="132" scope="col">Voltage</th>
    <th colspan="2" scope="col">Current in mA </th>
  </tr>
  <tr>
    <td>1U-N</td>
    <td>      <input name="2" type="text" id="2" size="15" value="<%=s2%>" />
    Volts
    </td>
    <td width="61">1U</td>
    <td width="127"><input name="3" type="text" id="3" size="15" value="<%=s3%>"/>
Volts</td>
  </tr>
  <tr>
    <td>1V-N</td>
    <td><input name="4" type="text" id="4" size="15" value="<%=s4%>" />
Volts</td>
    <td>1V</td>
    <td><input name="5" type="text" id="5" size="15" value="<%=s5%>"/>
Volts</td>
  </tr>
  <tr>
    <td>1W-N</td>
    <td><input name="6" type="text" id="6" size="15" value="<%=s6%>" />
Volts</td>
    <td>1W</td>
    <td><input name="7" type="text" id="7" size="15" value="<%=s7%>" />
Volts</td>
  </tr>
</table>
<p class="style1">Magnetising  current from HV side : Tap No.
  <input name="8" type="text" id="8" value="<%=s8%>"/>
</p>
<p class="style1">Three Phase Method </p>
<table width="419" border="1">
  <tr>
    <th width="71" scope="col">Suuply Terminals </th>
    <th width="132" scope="col">Voltage</th>
    <th colspan="2" scope="col">Current in mA </th>
  </tr>
  <tr>
    <td>1U-1V</td>
    <td>     <input name="9" type="text" id="9" size="15" value="<%=s9%>" />
      Volts
    </td>
    <td width="61">1U</td>
    <td width="127"><input name="10" type="text" id="10" size="15" value="<%=s10%>" />
      Volts</td>
  </tr>
  <tr>
    <td>1V-1W</td>
    <td><input name="11" type="text" id="11" size="15" value="<%=s11%>"/>
      Volts</td>
    <td>1V</td>
    <td><input name="12" type="text" id="12" size="15" value="<%=s12%>" />
      Volts</td>
  </tr>
  <tr>
    <td>1W-1U</td>
    <td><input name="13" type="text" id="13" size="15" value="<%=s13%>"/>
      Volts</td>
    <td>1W</td>
    <td><input name="14" type="text" id="14" size="15" value="<%=s14%>"/>
      Volts</td>
  </tr>
</table>
<p>&nbsp;</p>
<p class="style1">Magnetising  current from IV side : Tap No.
  <input name="15" type="text" id="15" value="<%=s15%>"/>
</p>
<p class="style1">Single Phase Method </p>
<table width="419" border="1">
  <tr>
    <th width="71" scope="col">Suuply Terminals </th>
    <th width="132" scope="col">Voltage</th>
    <th colspan="2" scope="col">Current in mA </th>
  </tr>
  <tr>
    <td>2U-N</td>
    <td>
      <input name="16" type="text" id="16" size="15" value="<%=s16%>" />
      Volts
    </td>
    <td width="61">2U</td>
    <td width="127"><input name="17" type="text" id="17" size="15" value="<%=s17%>" />
      Volts</td>
  </tr>
  <tr>
    <td>2V-N</td>
    <td><input name="18" type="text" id="18" size="15" value="<%=s18%>"/>
      Volts</td>
    <td>2V</td>
    <td><input name="19" type="text" id="19" size="15" value="<%=s19%>"/>
      Volts</td>
  </tr>
  <tr>
    <td>2W-N</td>
    <td><input name="20" type="text" id="20" size="15" value="<%=s20%>"/>
      Volts</td>
    <td>2W</td>
    <td><input name="21" type="text" id="21" size="15" value="<%=s21%>"/>
      Volts</td>
  </tr>
</table>
<p class="style1">Magnetising  current from IV side : Tap No.
  <input name="22" type="text" id="22" value="<%=s22%>"/>
</p>
<p class="style1">Three Phase Method </p>
<table width="419" border="1">
  <tr>
    <th width="71" scope="col">Suuply Terminals </th>
    <th width="132" scope="col">Voltage</th>
    <th colspan="2" scope="col">Current in mA </th>
  </tr>
  <tr>
    <td>2U-2V</td>
    <td>
      <input name="23" type="text" id="23" size="15" value="<%=s23%>" />
      Volts
    </td>
    <td width="61">2U</td>
    <td width="127"><input name="24" type="text" id="24" size="15" value="<%=s24%>" />
      Volts</td>
  </tr>
  <tr>
    <td>2V-2W</td>
    <td><input name="25" type="text" id="25" size="15" value="<%=s25%>"/>
      Volts</td>
    <td>2V</td>
    <td><input name="26" type="text" id="26" size="15" value="<%=s26%>"/>
      Volts</td>
  </tr>
  <tr>
    <td>2W-2U</td>
    <td><input name="27" type="text" id="27" size="15" value="<%=s27%>"/>
      Volts</td>
    <td>2W</td>
    <td><input name="28" type="text" id="28" size="15" value="<%=s28%>"/>
      Volts</td>
  </tr>
</table>
<p class="style1">Magnetising  current from LV side : Tap No.
  <input name="29" type="text" id="29" value="<%=s29%>"/>
</p>
<p class="style1">Three Phase Method </p>
<table width="419" border="1">
  <tr>
    <th width="71" scope="col">Suuply Terminals </th>
    <th width="132" scope="col">Voltage</th>
    <th colspan="2" scope="col">Current in mA </th>
  </tr>
  <tr>
    <td>3U-3W</td>
    <td>
      <input name="30" type="text" id="30" size="15" value="<%=s30%>" />
      Volts
    </td>
    <td width="61">3U</td>
    <td width="127"><input name="31" type="text" id="31" size="15" value="<%=s31%>" />
      Volts</td>
  </tr>
  <tr>
    <td>3V-3U</td>
    <td><input name="32" type="text" id="32" size="15" value="<%=s32%>"/>
      Volts</td>
    <td>3V</td>
    <td><input name="33" type="text" id="33" size="15" value="<%=s33%>"/>
      Volts</td>
  </tr>
  <tr>
    <td>3W-3V</td>
    <td><input name="34" type="text" id="34" size="15" value="<%=s34%>"/>
      Volts</td>
    <td>3W</td>
    <td><input name="35" type="text" id="35" size="15" value="<%=s35%>"/>
      Volts</td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p class="style1">&nbsp;</p>
<p>&nbsp;</p>
<p class="style1">&nbsp;</p>
 <table width="880"  align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="save">
</td>
</tr>
</table>

</form>
</body>
</html>




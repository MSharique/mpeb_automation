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
<form id="form1" name="form1" method="post" action="view2_factory_test_result_2.jsp">
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
<p class="style1">Magnetising  current from HV side : Tap No. <%=s1%></p>
<p class="style1">Single Phase Method </p>
<table width="419" border="1">
  <tr>
    <th width="71" scope="col">Suuply Terminals </th>
    <th width="132" scope="col">Voltage</th>
    <th colspan="2" scope="col">Current in mA </th>
  </tr>
  <tr>
    <td>1U-N</td>
    <td><%=s2%>
    Volts
    </td>
    <td width="61">1U</td>
    <td width="127"><%=s3%> Volts</td>
  </tr>
  <tr>
    <td>1V-N</td>
    <td><%=s4%> Volts</td>
    <td>1V</td>
    <td><%=s5%> Volts</td>
  </tr>
  <tr>
    <td>1W-N</td>
    <td><%=s6%> Volts</td>
    <td>1W</td>
    <td><%=s7%> Volts</td>
  </tr>
</table>
<p class="style1">Magnetising  current from HV side : Tap No.<%=s8%></p>
<p class="style1">Three Phase Method </p>
<table width="419" border="1">
  <tr>
    <th width="71" scope="col">Suuply Terminals </th>
    <th width="132" scope="col">Voltage</th>
    <th colspan="2" scope="col">Current in mA </th>
  </tr>
  <tr>
    <td>1U-1V</td>
    <td>   <%=s9%>      Volts
    </td>
    <td width="61">1U</td>
    <td width="127"><%=s10%>      Volts</td>
  </tr>
  <tr>
    <td>1V-1W</td>
    <td><%=s11%>      Volts</td>
    <td>1V</td>
    <td><%=s12%>      Volts</td>
  </tr>
<tr>
    <td>1W-1U</td>
    <td><%=s13%>      Volts</td>
    <td>1W</td>
    <td><%=s14%>      Volts</td>
  </tr>
  </table>
<p>&nbsp;</p>
<p class="style1">Magnetising  current from IV side : Tap No.<%=s15%></p>
<p class="style1">Single Phase Method </p>
<table width="419" border="1">
  <tr>
    <th width="71" scope="col">Suuply Terminals </th>
    <th width="132" scope="col">Voltage</th>
    <th colspan="2" scope="col">Current in mA </th>
  </tr>
  <tr>
    <td>2U-N</td>
    <td><%=s16%>
      Volts
    </td>
    <td width="61">2U</td>
    <td width="127"><%=s17%>
      Volts</td>
  </tr>
  <tr>
    <td>2V-N</td>
    <td><%=s18%>      Volts</td>
    <td>2V</td>
    <td><%=s19%>      Volts</td>
  </tr>
  <tr>
    <td>2W-N</td>
    <td><%=s20%>      Volts</td>
    <td>2W</td>
    <td><%=s21%>      Volts</td>
  </tr>
</table>
<p class="style1">Magnetising  current from IV side : Tap No.
 <%=s22%></p>
<p class="style1">Three Phase Method </p>
<table width="419" border="1">
  <tr>
    <th width="71" scope="col">Suuply Terminals </th>
    <th width="132" scope="col">Voltage</th>
    <th colspan="2" scope="col">Current in mA </th>
  </tr>
  <tr>
    <td>2U-2V</td>
    <td> <%=s23%>      Volts
   </td>
    <td width="61">2U</td>
    <td width="127"><%=s24%>      Volts</td>
  </tr>
  <tr>
    <td>2V-2W</td>
    <td><%=s25%>      Volts</td>
    <td>2V</td>
    <td><%=s26%>      Volts</td>
  </tr>
  <tr>
    <td>2W-2U</td>
    <td><%=s27%>      Volts</td>
    <td>2W</td>
    <td><%=s28%>      Volts</td>
  </tr>
</table>
<p class="style1">Magnetising  current from LV side : Tap No.<%=s29%></p>
<p class="style1">Three Phase Method </p>
<table width="419" border="1">
  <tr>
    <th width="71" scope="col">Suuply Terminals </th>
    <th width="132" scope="col">Voltage</th>
    <th colspan="2" scope="col">Current in mA </th>
  </tr>
  <tr>
    <td height="38">3U-3W</td>
    <td><%=s30%>
      Volts
   </td>
    <td width="61">3U</td>
    <td width="127"><%=s31%>      Volts</td>
  </tr>
  <tr>
    <td height="44">3V-3U</td>
    <td><%=s32%>      Volts</td>
    <td>3V</td>
    <td><%=s3%>      Volts</td>
  </tr>
  <tr>
    <td height="43">3W-3V</td>
    <td><%=s4%>      Volts</td>
    <td>3W</td>
    <td><%=s35%>      Volts</td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p class="style1">&nbsp;</p>
<p>&nbsp;</p>
<p class="style1">&nbsp;</p>
 <% rs.close();%>
<table width="880" align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="update">
</td>
</tr>
</table>
<p align="center"><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass"></p>
<p align="right">&lt;&lt; <a href="view_factory_test_result_1.jsp">prev</a> ...... <a href="view_factory_test_result_3.jsp">next</a> &gt;&gt;</p>

</form>
</body>
</html>






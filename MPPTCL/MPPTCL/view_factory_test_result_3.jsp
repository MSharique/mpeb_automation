
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
<form id="form1" name="form1" method="post" action="view2_factory_test_result_3.jsp">
<body>
<p><span class="style1">III.</span> <span class="style1">Low Voltage Current test</span></p>
<p class="style5">IV side short circuited and 3 phase 400 V, 50Hz AC applied on HV side at normal tap (without earthing neutral) (LV kept open) </p>

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
    <td>
     <%=s1%>
      Volts
   </td>
    <td width="124"><%=s2%>
      Amp
    </td>
    <td width="124"><%=s3%>      Amp
    </td>
    <td width="127"><%=s4%> Amp
    </td>
  </tr>
  <tr>
    <td>1V-1W</td>
    <td><%=s5%>
      Volts
    </td>
    <td><%=s6%>    Amp
    </td>
    <td><%=s7%> Amp
    </td>
    <td><%=s8%>  Amp
    </td>
  </tr>
  <tr>
    <td>1W-1U</td>
    <td><%=s9%> Volts
    </td>
    <td><%=s10%>
      Amp
    </td>
    <td><%=s11%> Amp
    </td>
    <td><%=s12%> Amp
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
    <td><%=s13%>
Volts</td>
    <td><%=s14%>
Amp</td>
    <td><%=s15%>
Amp</td>
    <td><%=s16%>
Amp</td>
    <td><%=s17%>
Amp</td>
    <td><%=s18%>
Amp</td>
    <td><%=s19%>
Amp</td>
  </tr>
  <tr>
    <td>1V-1W</td>
    <td><%=s20%>Volts</td>
    <td><%=s21%>
Amp</td>
    <td><%=s22%>
Amp</td>
    <td><%=s23%>Amp</td>
    <td><%=s24%>
Amp</td>
    <td><%=s25%>
Amp</td>
    <td><%=s26%>
Amp</td>
  </tr>
  <tr>
    <td>1W-1U</td>
    <td><%=s27%>
Volts</td>
    <td><%=s28%>
Amp</td>
    <td><%=s29%>
Amp</td>
    <td><%=s30%>
Amp</td>
    <td><%=s31%>Amp</td>
    <td><%=s32%>
Amp</td>
    <td><%=s33%>
Amp</td>
  </tr>
</table>
<p>&nbsp;</p>
 <% rs.close();%>
<table width="880" align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="update">
</td>
</tr>
</table>
<p align="center"><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass"></p>
<p align="right">&lt;&lt; <a href="view_IR VALUES OF BUSHING.jsp">prev</a> ...... <a href="view_MAGNETISING CURRENT TEST RESULT.jsp">next</a> &gt;&gt;</p>

</form>
</body>
</html>




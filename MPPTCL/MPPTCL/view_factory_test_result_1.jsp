
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

<form id="form1" name="form1" method="post" action="view2_factory_test_result_1.jsp">
<body>
<div align="center"><span class="style1">
  <p>
  <h2 align="center">FACTORY TEST RESULTS</h2>
  </p>
  </span>
  <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from d1_1");%>
<% int i=1;%>
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
<%String s20=new String();%><%String s21=new String();%>
<%String s22=new String();%>
<%String s23=new String();%>
<%String s24=new String();%><%String s25=new String();%>
<%String s26=new String();%>
<%String s27=new String();%>
<%String s28=new String();%>

<%rs.last();%>
<%  s1 = rs.getString("Tap_no");%>
<%  s2 = rs.getString("Magnetic_Balance_Test_Carried_out_on_HV_1U_N_1U_N");%>
<%  s3 = rs.getString("Magnetic_Balance_Test_Carried_out_on_HV_1U_N_1V_N");%>
<%  s4 = rs.getString("Magnetic_Balance_Test_Carried_out_on_HV_1U_N_1W_N");%>
<%  s5 = rs.getString("Magnetic_Balance_Test_Carried_out_on_HV_1V_N_1U_N");%>
<%  s6 = rs.getString("Magnetic_Balance_Test_Carried_out_on_HV_1V_N_1V_N");%>
<%  s7 = rs.getString("Magnetic_Balance_Test_Carried_out_on_HV_1V_N_1W_N");%>
<%  s8 = rs.getString("Magnetic_Balance_Test_Carried_out_on_HV_1W_N_1U_N");%>
<%  s9 = rs.getString("Magnetic_Balance_Test_Carried_out_on_HV_1W_N_1V_N");%>
<%  s10 = rs.getString("Magnetic_Balance_Test_Carried_out_on_HV_1W_N_1W_N");%>
<%  s11 = rs.getString("Magnetic_Balance_Test_Carried_out_on_IV_2U_N_2U_N");%>
<%  s12 = rs.getString("Magnetic_Balance_Test_Carried_out_on_IV_2U_N_2V_N");%>
<%  s13 = rs.getString("Magnetic_Balance_Test_Carried_out_on_IV_2U_N_2W_N");%>
<%  s14 = rs.getString("Magnetic_Balance_Test_Carried_out_on_IV_2V_N_2U_N");%>
<%  s15 = rs.getString("Magnetic_Balance_Test_Carried_out_on_IV_2V_N_2V_N");%>
<%  s16 = rs.getString("Magnetic_Balance_Test_Carried_out_on_IV_2V_N_2W_N");%>
<%  s17 = rs.getString("Magnetic_Balance_Test_Carried_out_on_IV_2W_N_2U_N");%>
<%  s18 = rs.getString("Magnetic_Balance_Test_Carried_out_on_IV_2W_N_2V_N");%>
<%  s19 = rs.getString("Magnetic_Balance_Test_Carried_out_on_IV_2W_N_2W_N");%>
<%  s20 = rs.getString("Magnetic_Balance_Test_Carried_out_on_LV_3U_N_3U_N");%>
<%  s21 = rs.getString("Magnetic_Balance_Test_Carried_out_on_LV_3U_N_3V_N");%>
<%  s22 = rs.getString("Magnetic_Balance_Test_Carried_out_on_LV_3U_N_3W_N");%>
<%  s23 = rs.getString("Magnetic_Balance_Test_Carried_out_on_LV_3V_N_3U_N");%>
<%  s24 = rs.getString("Magnetic_Balance_Test_Carried_out_on_LV_3V_N_3V_N");%>
<%  s25 = rs.getString("Magnetic_Balance_Test_Carried_out_on_LV_3V_N_3W_N");%>
<%  s26 = rs.getString("Magnetic_Balance_Test_Carried_out_on_LV_3W_N_3U_N");%>
<%  s27 = rs.getString("Magnetic_Balance_Test_Carried_out_on_LV_3W_N_3V_N");%>
<%  s28 = rs.getString("Magnetic_Balance_Test_Carried_out_on_LV_3W_N_3W_N");%>
  <p align="center"></h3>Low voltage magnetic balance and Magnetising Current Test</h3></p>
  <p align="center" class="style2">Magnetic Balance Test : Tap no.<%=s1%></p>
  <p align="center" class="style2">Carried out on HV</p>
  <div align="center">
    <table width="427" border="1" align="center">
      <tr>
        <th width="146" scope="col">Supply Terminals </th>
        <th width="75" scope="col">1 U-N </th>
        <th width="80" scope="col">Measured Terminal 1V-N </th>
        <th width="98" scope="col">1W-N</th>
      </tr>
      <tr>
        <td>1U-N</td>
        <td><%=s2%></td>
        <td><%=s3%></td>
        <td><%=s4%></td>
      </tr>
      <tr>
        <td>1V-N</td>
        <td><%=s5%></td>
        <td><%=s6%></td>
        <td><%=s7%></td>
      </tr>
<tr>
        <td>1W-N</td>
        <td><%=s8%></td>
        <td><%=s9%></td>
        <td><%=s10%></td>
      </tr>
      </table>
<p>&nbsp;</p>
  <p align="center" class="style2">Magnetic Balance Test carried out on IV</p>
  <div align="center">
    <table width="421" border="1" align="center">
      <tr>
        <th width="152" rowspan="2" scope="col">Supply Terminals </th>
        <th colspan="3" scope="col">Measured Terminal</th>
      </tr>
      <tr>
        <th scope="col">2U-N</th>
        <th scope="col">2V-N</th>
        <th scope="col">2W-N</th>
      </tr>
      <tr>
        <td>2U-N</td>
        <td width="74"><%=s11%></td>
        <td width="73"><%=s12%></td>
        <td width="94"><%=s13%></td>
      </tr>
      <tr>
        <td>2V-N</td>
        <td><%=s14%></td>
        <td><%=s15%></td>
        <td><%=s16%></td>
      </tr>
      <tr>
        <td>2W-N</td>
        <td><%=s17%></td>
        <td><%=s18%></td>
        <td><%=s19%></td>
      </tr>
    </table>
  </div>
  <p align="center" class="style2">Magnetic Balance Test carried out on LV </p>
  <div align="center">
    <table width="424" border="1"align="center">
      <tr>
        <th width="152" rowspan="2" scope="col">Supply Terminals </th>
        <th height="24" colspan="3" scope="col">Measured Terminal</th>
      </tr>
      <tr>
        <th scope="col">3U-W</th>
        <th scope="col">3V-U</th>
        <th scope="col">3W-V</th>
      </tr>
      <tr>
        <td>3U-3W</td>
        <td width="69"><%=s20%></td>
        <td width="77"><%=s21%></td>
        <td width="98"><%=s22%></td>
      </tr>
      <tr>
        <td>3V-3U</td>
        <td><%=s23%></td>
        <td><%=s24%></td>
        <td><%=s25%></td>
      </tr>
      <tr>
        <td>3W-3V</td>
        <td><%=s26%></td>
        <td><%=s27%></td>
        <td><%=s28%></td>
      </tr>
    </table>
  </div>
  <% rs.close();%>
<table width="880" align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="update">
        <p align="center"><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass"></p>
<p align="right"><a href="view_factory_test_result_2.jsp">next</a> &gt;&gt;</p>

</td>
</tr>
</table>

</form>
</body>
</html>



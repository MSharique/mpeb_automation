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

<form id="form1" name="form1" method="post" action="view2_pre_commisioning_test_result_5.jsp">

</head>


<body>
<body>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from hv_and_iv_magnetic_balance_test_at_normal_tap_no");%>
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
<%String s20=new String();%>
<%String s21=new String();%>
<%String tap_no=new String();%>



<%rs.last();%>
<%  s1 = rs.getString("1U_N_1U_N");%>
<%  s2 = rs.getString("1V_N_1U_N");%>
<%  s3 = rs.getString("1W_N_1U_N");%>
<%  s4 = rs.getString("2U_N_1U_N");%>
<%  s5 = rs.getString("2V_N_1U_N");%>
<%  s6 = rs.getString("2W_N_1U_N");%>
<%  s7 = rs.getString("1U_N_1V_N");%>
<%  s8 = rs.getString("1V_N_1V_N");%>
<%  s9 = rs.getString("1W_N_1V_N");%>
<%  s10 = rs.getString("2U_N_1V_N");%>
<%  s11 = rs.getString("2V_N_1V_N");%>
<%  s12 = rs.getString("2W_N_1V_N");%>
<%  s13 = rs.getString("1U_N_1W_N");%>
<%  s14 = rs.getString("1V_N_1W_N");%>
<%  s15 = rs.getString("1W_N_1W_N");%>
<%  s16 = rs.getString("2U_N_1W_N");%>
<%  s17 = rs.getString("2V_N_1W_N");%>
<%  s18 = rs.getString("2W_N_1W_N");%>
<%  s19 = rs.getString("voltage_1");%>
<%  s20 = rs.getString("voltage_2");%>
<%  s21 = rs.getString("voltage_3");%>
<%  tap_no = rs.getString("tap_no");%>



<table align="center">
<tr align="center">
	<td width="33" height="293">&nbsp;</td>
    <td width="966">


<p  align="center">
<h2 align="center">
I. HV&amp; IV MAGNETIC TEST AT NOMAL TAP NO.<%=tap_no%></h2>
<table align="center" border="1">
  <tr >
    <h3>
    <td width="48"></td>
      <td width="134" align="center">SUPPLY VOLTS</td>
      <td width="41" align="center">1U-N</td>
      <td width="41" align="center">1V-N</td>
      <td width="45" align="center">1W-N</td>
      <td width="41" align="center">2U-N</td>
      <td width="41" align="center">2V-N</td>
      <td width="55" align="center">2W-N</td>
    </h3>
  </tr>
  <tr>
    <td align="center">1U-N :</td>
    <td align="center"><%=s19%></td>
    <td align="center"><%=s1%></td>
    <td align="center"><%=s2%></td>
    <td align="center"><%=s3%></td>
    <td align="center"><%=s4%></td>
    <td align="center"><%=s5%></td>
    <td align="center"><%=s6%></td>
  </tr>
  <tr>
    <td align="center">1V-N :</td>
    <td align="center"><%=s20%></td>
    <td align="center"><%=s7%></td>
    <td align="center"><%=s8%></td>
    <td align="center"><%=s9%></td>
    <td align="center"><%=s10%></td>
    <td align="center"><%=s11%></td>
    <td align="center"><%=s12%></td>
  </tr>
  <tr>
    <td align="center">1W-N :</td>
    
    <td align="center"><%=s21%></td>
    <td align="center"><%=s13%></td>
    <td align="center"><%=s14%></td>
    <td align="center"><%=s15%></td>
    <td align="center"><%=s16%></td>
    <td align="center"><%=s17%></td>
    <td align="center"><%=s18%></td>
  </tr>
</table>
 <% rs.close();%>
<table width="880" align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="update">
</td>
</tr>
</table>


</body>
</html>
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

<form id="form1" name="form1" method="post" action="view2_pre_commisioning_test_result_3.jsp">

<body>

<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from iv_magenetising_current_3phase_3wire_method");%>
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


<%rs.last();%>
<%  s1 = rs.getString("TAP_NO_2U_2V");%>
<%  s2 = rs.getString("2U_PHASE_2U_2V");%>
<%  s3 = rs.getString("2V_PHASE_2U_2V");%>
<%  s4 = rs.getString("2W_PHASE_2U_2V");%>
<%  s5 = rs.getString("TAP_NO_2V_2W");%>
<%  s6 = rs.getString("2U_PHASE_2V_2W");%>
<%  s7 = rs.getString("2V_PHASE_2V_2W");%>
<%  s8 = rs.getString("2W_PHASE_2V_2W");%>
<%  s9 = rs.getString("TAP_NO_2W_2U");%>
<%  s10 = rs.getString("2U_PHASE_2W_2U");%>
<%  s11 = rs.getString("2V_PHASE_2W_2U");%>
<%  s12 = rs.getString("2W_PHASE_2W_2U");%>
<%  s13 = rs.getString("voltage_1");%>
<%  s14 = rs.getString("voltage_2");%>
<%  s15 = rs.getString("voltage_3");%>

<tr>
<td>&nbsp;</td>
<td>
<h2 align="center">
IV MAGENETISING CURRENT 3PHASE 3WIRE METHOD
</h2>
<table align="center" border="1">
  <tr >
    <h3><td></td>
      <td align="center">SUPPLY VOLTS</td>
      <td align="center">TAP NO.</td>
      <td align="center">2U-PHASE</td>
      <td align="center">2V-PHASE</td>
      <td align="center">2W-PHASE</td>
    </h3>
  </tr>
  <tr>
    <td align="center">2U-2V :</td>
    <td align="center"><%=s13%></td>
    <td align="center"><%=s1%></td>
    <td align="center"><%=s2%></td>
    <td align="center"><%=s3%></td>
    <td align="center"><%=s4%></td>
  </tr>
  <tr>
    <td align="center">2V-2W :</td>
    <td align="center"><%=s14%></td>
    <td align="center"><%=s5%></td>
     <td align="center"><%=s6%></td>
    <td align="center"><%=s7%></td>
    <td align="center"><%=s8%></td>
  </tr>
  <tr>
    <td align="center">2W-2U :</td>
    <td align="center"><%=s15%></td>
    <td align="center"><%=s9%></td>
    <td align="center"><%=s10%></td>
    <td align="center"><%=s11%></td>
     <td align="center"><%=s12%></td>
  </tr>
</table>

</p></td>
</tr>
 <% rs.close();%>
<table width="880" align="center" >
<tr> <td width="880" height="46" align="center"><p>
  <input type="submit" name="submit" value="update">
</p>
    <p><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass">
    </p>
</td>
</tr>
</table>


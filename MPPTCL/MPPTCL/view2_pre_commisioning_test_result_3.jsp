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

</head>

<body bgcolor="lavender">
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



<form id="form1" name="form1" method="post" action="view3_pre_commisioning_test_result_3.jsp">

</head>

<body>


<table align="center" border="1">

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
    <td align="center"><input name="1" type="text" id="1" value="<%=s13%>"></td>
    <td align="center"><input name="2" type="text" id="2" value="<%=s1%>"></td>
    <td align="center"><input name="3" type="text" id="3" value="<%=s2%>"></td>
    <td align="center"><input name="4" type="text" id="4" value="<%=s3%>"></td>
    <td align="center"><input name="5" type="text" id="5" value="<%=s4%>"></td>
  </tr>
  <tr>
    <td align="center">2V-2W :</td>
    <td align="center"><input name="6" type="text" id="6" value="<%=s14%>"></td>
    <td align="center"><input name="7" type="text" id="7" value="<%=s5%>"></td>
     <td align="center"><input name="8" type="text" id="8" value="<%=s6%>"></td>
    <td align="center"><input name="9" type="text" id="9" value="<%=s7%>"></td>
    <td align="center"><input name="10" type="text" id="10" value="<%=s8%>"></td>
  </tr>
  <tr>
    <td align="center">2W-2U :</td>
    <td align="center"><input name="11" type="text" id="11" value="<%=s9%>"></td>
    <td align="center"><input name="12" type="text" id="12" value="<%=s10%>"></td>
    <td align="center"><input name="13" type="text" id="13" value="<%=s11%>"></td>
    <td align="center"><input name="14" type="text" id="14" value="<%=s12%>"></td> 
     <td align="center"><input name="15" type="text" id="15" value="<%=s15%>"></td>
  </tr>
</table>

</p></td>
</tr>
<table width="880"  align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="save">
</td>
</tr>
</table>


</body>
</html>

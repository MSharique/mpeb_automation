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
<% ResultSet rs = st.executeQuery("select * from hv_magenetising_current_single_phase_method");%>
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
<%  s1 = rs.getString("TAP_NO_1U_N");%>
<%  s2 = rs.getString("1U_PHASE_1U_N");%>
<%  s3 = rs.getString("1V_PHASE_1U_N");%>
<%  s4 = rs.getString("1W_PHASE_1U_N");%>
<%  s5 = rs.getString("TAP_NO_1V_N");%>
<%  s6 = rs.getString("1U_PHASE_1V_N");%>
<%  s7 = rs.getString("1V_PHASE_1V_N");%>
<%  s8 = rs.getString("1W_PHASE_1V_N");%>
<%  s9 = rs.getString("TAP_NO_1W_N");%>
<%  s10 = rs.getString("1U_PHASE_1W_N");%>
<%  s11 = rs.getString("1V_PHASE_1W_N");%>
<%  s12 = rs.getString("1W_PHASE_1W_N");%>
<%  s13 = rs.getString("voltage_1");%>
<%  s14 = rs.getString("voltage_2");%>
<%  s15 = rs.getString("voltage_3");%>




<form id="form1" name="form1" method="post" action="view3_pre_commisioning_test_result_2.jsp">
<tr>
	<td>&nbsp;</td>
	<td align="center">
	<p>
	<h2 align="center">
	HV MAGENETISING CURRENT SINGLE PHASE  METHOD
	</h2></p>


		<table align="center" border="1">
  	<tr >
    	<h3>
        <TD></TD>
      	<td align="center">SUPPLY VOLTS</td>
      	<td align="center">TAP NO.</td>
      	<td align="center">1U-PHASE</td>
      	<td align="center">1V-PHASE</td>
      	<td align="center">1W-WHASE</td>
    	</h3>
  	</tr>
<tr>
    	<td align="center">1U-N :</td>
  <td align="center"><input name="1" type="text" id="1" value="<%=s13%>"></td>
    <td align="center"><input name="2" type="text" id="2" value="<%=s1%>"></td>
    <td align="center"><input name="3" type="text" id="3" value="<%=s2%>"></td>
    <td align="center"><input name="4" type="text" id="4" value="<%=s3%>"></td>
    <td align="center"><input name="5" type="text" id="5" value="<%=s4%>"></td>
  </tr>
  	<tr>
    	<td align="center">1V-N :</td>
  <td align="center"><input name="6" type="text" id="6" value="<%=s14%>"></td>
    <td align="center"><input name="7" type="text" id="7" value="<%=s5%>"></td>
    <td align="center"><input name="8" type="text" id="8"value="<%=s6%>"></td>
    <td align="center"><input name="9" type="text" id="9" value="<%=s7%>"></td>
    <td align="center"><input name="10" type="text" id="10" value="<%=s8%>"></td>
  </tr>
 <tr>
    	<td align="center">1W-N :</td>
        <td align="center"><input name="11" type="text" id="11" value="<%=s15%>"></td>
    <td align="center"><input name="12" type="text" id="12" value="<%=s9%>"></td>
    <td align="center"><input name="13" type="text" id="13" value="<%=s10%>"></td>
    <td align="center"><input name="14" type="text" id="14" value="<%=s11%>"></td>
    <td align="center"><input name="15" type="text" id="15" value="<%=s12%>"></td>
  </tr>
</table>
</p>
</td>
</tr>
<table width="880"  align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="save">
</td>
</tr>
</table>

</body>
</html>



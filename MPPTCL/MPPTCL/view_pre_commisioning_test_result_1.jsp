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
<form id="form1" name="form1" method="post" action="view2_pre_commisioning_test_result_1.jsp">

</head>

<body>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from hv_magenetising_current_3phase_3wire_method");%>
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
<%  s1 = rs.getString("TAP_NO_1U_1V");%>
<%  s2 = rs.getString("1U_PHASE_1U_1V");%>
<%  s3 = rs.getString("1V_PHASE_1U_1V");%>
<%  s4 = rs.getString("1W_PHASE_1U_1V");%>
<%  s5 = rs.getString("TAP_NO_1V_1W");%>
<%  s6 = rs.getString("1U_PHASE_1V_1W");%>
<%  s7 = rs.getString("1V_PHASE_1V_1W");%>
<%  s8 = rs.getString("1W_PHASE_1V_1W");%>
<%  s9 = rs.getString("TAP_NO_1W_1U");%>
<%  s10 = rs.getString("1U_PHASE_1W_1U");%>
<%  s11 = rs.getString("1V_PHASE_1W_1U");%>
<%  s12 = rs.getString("1W_PHASE_1W_1U");%>
<%  s13 = rs.getString("voltage_1");%>
<%  s14 = rs.getString("voltage_2");%>
<%  s15 = rs.getString("voltage_3");%>


<table align="center">
<tr align="center">
	<td width="33" height="293">&nbsp;</td>
    <td width="966">


<p  align="center">
<h2 align="center">
I. HV MAGENETISING CURRENT 3PHASE 3WIRE METHOD
</h2>
<table align="center" border="1">
  <tr>
    <h3>
    <td></td>
      <td align="center">SUPPLY VOLTS</td>
      <td align="center">TAP NO.</td>
      <td align="center">1U-PHASE</td>
      <td align="center">1V-PHASE</td>
      <td align="center">1W-PHASE</td>
    </h3>
  </tr>
  <tr>
    <td align="center">1U-1V :</td>
    <td align="center"><%=s13%></td>
    <td align="center"><%=s1%></td>
    <td align="center"><%=s2%></td>
    <td align="center"><%=s3%></td>
    <td align="center"><%=s4%></td>
  </tr>
  <tr>
    <td align="center">1V-1W :</td>
    <td align="center"><%=s14%></td>
    <td align="center"><%=s5%></td>
    <td align="center"><%=s6%></td>
    <td align="center"><%=s7%></td>
    <td align="center"><%=s8%></td>
  </tr>
  <tr>
    <td align="center">1W-1U :</td>
    
    <td align="center"><%=s15%></td>
    <td align="center"><%=s9%></td>
    <td align="center"><%=s10%></td>
    <td align="center"><%=s11%></td>
    <td align="center"><%=s12%></td>
  </tr>
</table>
</p>
</td>
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

</form>
</body>
</html>

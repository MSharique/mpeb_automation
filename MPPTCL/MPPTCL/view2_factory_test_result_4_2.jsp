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
	background-image: url(last4.JPG);
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
<form id="form1" name="form1" method="post" action="view3_factory_test_result_4_2.jsp">

<body>

<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from d3");%>
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
<%if(rs.last()){%>
<% s1 = rs.getString("Vector_Group_as_per_name_plate");%>
<%  s2 = rs.getString("1U_1V");%>
<%  s3 = rs.getString("1U_1W");%>
<%  s4 = rs.getString("1W_1V");%>
<%  s5 = rs.getString("1U_2V");%>
<%  s6 = rs.getString("1U_2W");%>
<%  s7 = rs.getString("1W_2V");%>
<%  s8 = rs.getString("1V_2V");%>
<%  s9 = rs.getString("1V_2W");%>
<%  s10 = rs.getString("2W_1W");%>
<%  s11 = rs.getString("2N_1N");%>
<%  s12 = rs.getString("1U_1N");%>
<%  s13 = rs.getString("1U_2N");%>
<%}%>
<p><strong><span class="style1"><h2 align="center">IV. (b) Vector Group and Polarity Test </h2></span></strong></p>
<p><span class="style1">
<h3 align="center">Vector Group as per name plate <input type="text" name="1" value="<%=s1%>"/></h3></span>
    
</p>
<p align="center">Voltage applied on  terminals (With 1U-2U shorted) </p>
<table width="228" height="130" border="1" align="center">
  <tr>
    <td width="60" height="43" scope="col">1U-1V</td>
    <td width="152" scope="col"><input name="2" type="text" size="15" id="2" value="<%=s2%>"  />
Volts</td>
  </tr>
  <tr>
    <td>1U-1W</td>
    <td><input name="3" type="text" size="15" id="3" value="<%=s3%>" />
Volts</td>
  </tr>
  <tr>
    <td>1W-1V</td>
    <td><input name="4" type="text" size="15" id="4" value="<%=s4%>" />
Volts</td>
  </tr>
</table>
<p align="center">Voltage Measured on terminals :</p>
<table width="230" border="1" align="center">
  <tr>
    <td width="56" scope="col">1U-2V</td>
    <td width="158" scope="col"><input name="5" type="text" size="15" id="5" value="<%=s5%>" />
Volts</td>
  </tr>
  <tr>
    <td>1U-2W</td>
    <td><input name="6" type="text" size="15" id="6" value="<%=s6%>" />
Volts</td>
  </tr>
  <tr>
    <td>1W-2V</td>
    <td><input name="7" type="text" size="15" id="7"  value="<%=s7%>"/>
Volts</td>
  </tr>
  <tr>
    <td>1V-2V</td>
    <td><input name="8" type="text" size="15" id="8"  value="<%=s8%>"/>
Volts</td>
  </tr>
  <tr>
    <td>1V-2W</td>
    <td><input name="9" type="text" size="15" id="9"  value="<%=s9%>"/>
Volts</td>
  </tr>
  <tr>
    <td>2W-1W</td>
    <td><input name="10" type="text" size="15" id="10"  value="<%=s10%>"/>
Volts</td>
  </tr>
  <tr>
    <td>2N-1N</td>
    <td><input name="11" type="text" size="15" id="11"  value="<%=s11%>"/>
Volts</td>
  </tr>
  <tr>
    <td>1U-1N</td>
    <td><input name="12" type="text" size="15" id="12"  value="<%=s12%>"/>
Volts</td>
  </tr>
  <tr>
    <td>1U-2N</td>
    <td><input name="13" type="text" size="15" id="13"  value="<%=s13%>"/>
Volts</td>
  </tr>
</table>

<p align="center">Conditions:</p>
<p align="center">1V-2V ??? 1W-2W</p>
<p align="center">1V-2W ??? 1W-2V  </p>
<p align="center">1V-2V &lt; 1V-2W</p>
<p align="center">1W-2W &lt; 1W-2V</p>
<p align="center">1U-1N ??? (1U-2N) + (2N-1N) </p>
<p>&nbsp; </p>
<table width="880"  align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="save">
</td>
</tr>
</table>

<p>&nbsp;</p></p>
</body>
</html>
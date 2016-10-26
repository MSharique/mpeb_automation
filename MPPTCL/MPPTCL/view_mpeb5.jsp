
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
<div align="right"></div>
<form id="form1" name="form1" method="post" action="view2_mpeb5.jsp">

<h1 align="center" style="font-size:30px;">GENERAL INFORMATION OF TRANSFORMER</h1>

<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from general_information_of_transformer");%>
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
<%if(rs.next()){%>
<%do{%>
<%  s1 = rs.getString("Name_of_substation");%>
<% s2 = rs.getString("Make_of_Transformer");%>
<%  s3 = rs.getString("Voltage_Ratio_Source");%>
<%  s4 = rs.getString("Boards_Order_no");%>
<%  s5 = rs.getString("Boards_Date");%>
<%  s6 = rs.getString("Sr_No_of_Transformer");%>
<%  s7 = rs.getString("Cost_of_Transformer");%>
<% s8 = rs.getString("Date_of_Commissioning");%>
<%  s9 = rs.getString("Guarantee_period");%>
<%  s10 = rs.getString("Total_oil_filled_in");%>
<%  s11 = rs.getString("Impedance_at_normal_Tap");%>
<%  s12 = rs.getString("Total_No_of_Taps_Normal_Tap");%>
<% s13 = rs.getString("Voltage_variation");%>
<%  s14 = rs.getString("of_step_Voltage");%>
<% i++;%>
<%}while(rs.next());
}
%>
<table width="691" align="center">
<center>
<tr bgcolor="#979797">
<td width="67" height="20"><h3><strong>(I)</strong></h3></td>
<td width="386" height="20"> <h3><strong> Name of substation </strong></h2></td>
<td width="420" align="center"><%=s1%></td></tr>

<tr bgcolor="#E0E0E0">
<td width="67" height="20"><h3><strong>(II)</strong></h3></td>
<td width="386" height="20"> <h3><strong> Make of Transformer </strong></h2></td>
<td width="420" align="center"><%=s2%></td></tr>


<tr bgcolor="#979797">
<td width="67" height="20"><h3><strong>(III)</strong></h3></td>
<td width="386" height="20"> <h3><strong> Voltage Ratio/Source </strong></h2></td>
<td width="420" align="center"><%=s3%></td></tr>



<tr  bgcolor="#EEEEEE">
<td width="67" height="20"><h3><strong>(IV)</strong></h3></td>
<td width="386" height="20"> <h3><strong> Boards -Order no. <br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-Date </strong></h2></td>
<td align="center"><%=s4%>
  <br><%=s5%></td></tr>

<tr bgcolor="#979797">
<td width="67" height="20"><h3><strong>(V)</strong></h3></td>
<td width="386" height="20"> <h3><strong> Sr. No. of Transformer </strong></h2></td>
<td width="420" align="center"><%=s6%></td></tr>



<tr  bgcolor="#EEEEEE">
<td width="67" height="20"><h3><strong>(VI)</strong></h3></td>
<td width="386" height="20"> <h3><strong> Cost of Transformer </strong><strong>(including store incidental store)&nbsp;:</strong></h2></td>
<td width="420" align="center"><%=s7%></td></tr>


<tr bgcolor="#979797">
<td width="67" height="20"><h3><strong>(VII)</h3></td>
<td width="386" height="20"> <h3><strong>Date of Commissioning </strong></h2></td>
<td width="420" align="center"><%=s8%></td></tr>

<tr  bgcolor="#EEEEEE">
<td width="67" height="20"><h3><strong>(VIII)</strong></h3></td>
<td width="386" height="20"> <h3><strong> Guarantee period&nbsp; </strong></h2></td>
<td width="420" align="center"><%=s9%></td></tr>

<tr bgcolor="#979797">
<td width="67" height="20"><h3><strong>(IX)</strong></h3></td>
<td width="386" height="20"> <h3><strong>Total oil filled in (X-mer,radiator,consevator,OLTC &amp; OLTC converter </strong></h2></td>
<td width="420" align="center"><%=s10%></td></tr>

<tr  bgcolor="#EEEEEE">
<td width="67" height="20"><h3><strong>(X)</strong></h3></td>
<td width="386" height="20"> <h3><strong> % Impedance at normal Tap </strong></h2></td>
<td width="420" align="center"><%=s11%></td></tr>

<tr bgcolor="#979797">
<td width="67" height="20"><h3><strong>(XI)</strong></h3></td>
<td width="386" height="20"> <h3><strong>Total No. of Taps,Normal Tap No.</strong></h2></td>
<td width="420"align="center"><%=s12%></td></tr>

<tr  bgcolor="#EEEEEE">
<td width="67" height="20"><h3><strong>(XII)</strong></h3></td>
<td width="386" height="20"><h3><strong>% Voltage variation (+ ,-range)</strong></h2></td>
<td width="420" align="center"><%=s13%></td></tr>

<tr bgcolor="#979797">
<td width="67" height="20"><h3><strong>(XIII)</strong></h3></td>
<td width="386" height="20"> <h3><strong>%of step Voltage &nbsp; </strong></h2></td>
<td width="420" align="center"><%=s14%></td></tr>

</center>
</table>
<% rs.close();%>
<table width="880" bgcolor="#EEEEEE" align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="update">
</td>
</tr>
</table>

</form>
</body>
</html>
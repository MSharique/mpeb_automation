<%@page import= "java.io.*"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>winding ressistance measurement</title>
 <style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last3.JPG);
}
       </style>
</head>
<p>&nbsp;</p>
<p>&nbsp;</p>
  <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from wind_res_measur");%>
<% int i=1,p=3;%>
<%String s1=new String();
String s2=new String();
String s3=new String();
String s4=new String();
String s5=new String();
String s6=new String();
String s7=new String();
String s8=new String();
String s9=new String();
String s10=new String();
String s11=new String();
String s12=new String();
String s13=new String();
String s14=new String();

%>
<% if(rs.next()){%>

  
  <% do{%>
<%s1 = rs.getString("oil_temp");%>
<%s2 = rs.getString("res");%>
<%s3 = rs.getString("first_tap");%>
<%s4 = rs.getString("nor_tap");%>
<%s5 = rs.getString("last_tap");%>
<%s6 = rs.getString("hv_n_first");%>
<%s7 = rs.getString("hv_n_nor");%>
<%s8 = rs.getString("hv_n_last");%>
<%s9 = rs.getString("iv_n_first");%>
<% s10 = rs.getString("lv_n_first");%>
<% s11 = rs.getString("iv_n_nor");%>
<% s12 = rs.getString("lv_n_nor");%>
<% s13 = rs.getString("iv_n_last");%>
<% s14 = rs.getString("lv_n_last");%>



  <% i++;%>
<% }while(rs.next());%>
<% }%>
<form name="form1" method="post" action="view2_winding_resistance_measurement.jsp">
<h1 align="center">WINDING RESISTANCE MEASUREMENT</h1>
<div align="center">
  <table width="410" height="57" border="1">
    <tr>
      <td width="254" height="23">Average oil Temperature ( in celcius)</td>
      <td width="140" scope="col"><%=s1%></td>
    </tr>
    <tr>
      <td height="23">Average Ressistance/Ph </td>
      <td><%=s2%></td>
    </tr>
  </table>
</div>
<p align="center">&nbsp;</p>
<div align="center">
  <table width="499" height="113" border="1">
    <tr>
      <td width="105" height="23">#</td>
      <td width="90">Tap No.</td>
      <td width="90">HV-N</td>
      <td width="90">IV-N</td>
      <td width="90">LV</td>
    </tr>
    <tr>
      <td height="26">First Tap</td>
      <td><%=s3%></td>
      <td><%=s6%></td>
      <td><%=s9%></td>
      <td><%=s10%></td>
    </tr>
    <tr>
      <td height="26">Normal Tap</td>
      <td><%=s4%></td>
      <td><%=s7%></td>
      <td><%=s11%></td>
      <td><%=s12%>></td>
    </tr>
    <tr>
      <td height="26">Last Tap</td>
      <td><%=s5%></td>
      <td><%=s8%></td>
      <td><%=s13%></td>
      <td><%=s14%></td>
    </tr>
  </table>
</div>
<p align="center">&nbsp;</p>

  <div align="center">
    <input type="submit" name="update data" id="update data" value="update data">
  </div>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</form>
</html>





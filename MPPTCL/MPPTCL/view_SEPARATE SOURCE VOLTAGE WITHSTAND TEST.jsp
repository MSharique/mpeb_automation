<%@page import= "java.io.*"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>SEPARATE SOURCE VOLTAGE WITHSTAND TEST</title>
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
<% ResultSet rs = st.executeQuery("select * from separate_source_voltage");%>
<% int i=1,p=3;%>
<%String s1=new String();
String s2=new String();
String s3=new String();
String s4=new String();
String s5=new String();
String s6=new String();
String s7=new String();
String s8=new String();



%>
<% if(rs.next()){%>

  
  <% do{%>
<%s1 = rs.getString("frequency1");%>
<%s2 = rs.getString("frequency2");%>
<%s3 = rs.getString("KV1");%>
<%s4 = rs.getString("KV2");%>
<%s5 = rs.getString("time1");%>
<%s6 = rs.getString("time2");%>
<%s7 = rs.getString("result1");%>
<%s8 = rs.getString("result2");%>




  <% i++;%>
<% }while(rs.next());%>
<% }%>
<form name="form1" method="post" action="view2_SEPARATE SOURCE VOLTAGE WITHSTAND TEST.jsp">
<h1 align="center">SEPARATE SOURCE VOLTAGE WITHSTAND TEST</h1>
<p align="center">&nbsp;</p>
<div align="center">
  <p>The test carried out at power frequency (50 Hz) for a duration of 60 seconds :</p>
  <table width="511" height="85" border="1">
    <tr>
      <td width="117" height="23">Winding</td>
      <td width="90">Frequency</td>
      <td width="90">KV (rms)</td>
      <td width="90">Time in sec.</td>
      <td width="90">Result</td>
    </tr>
    <tr>
      <td height="23">HV + IV / LV + E</td>
      <td><div align="center"><%=s1%></div></td>
      <td><div align="center"><%=s3%></div></td>
      <td><div align="center"><%=s5%></div></td>
      <td><div align="center"><%=s7%></div></td>
    </tr>
    <tr>
      <td height="26">LV / HV + IV + E</td>
      <td><div align="center"><%=s2%></div></td>
      <td><div align="center"><%=s4%></div></td>
      <td><div align="center"><%=s6%></div></td>
      <td><div align="center"><%=s8%></div></td>
    </tr>
  </table>
  <p>&nbsp;</p>
</div>
<p align="center">&nbsp;</p>

  <div align="center">
    <input type="submit" name="update data" id="update data" value="insert">
  </div>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</form>
</html>





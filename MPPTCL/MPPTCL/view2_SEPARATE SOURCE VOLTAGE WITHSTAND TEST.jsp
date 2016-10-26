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
       <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
	  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
	  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
  
	  <script>
	  $(document).ready(function() {
	    $(".cal").datepicker();
	  });
	  </script>
       
       
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
<form name="form1" method="post" action="view3_SEPARATE SOURCE VOLTAGE WITHSTAND TEST.jsp">
<h1 align="center">SEPARATE SOURCE VOLTAGE WITHSTAND TEST</h1>
<p align="center">&nbsp;</p>
<div align="center">
  <p>The test carried out at power frequency (50 Hz) for a duration of 60 seconds :</p>
  <table width="714" height="85" border="1">
    <tr>
      <td width="320" height="23"><div align="center">Winding</div></td>
      <td width="90"><div align="center">Frequency</div></td>
      <td width="90"><div align="center">KV (rms)</div></td>
      <td width="90"><div align="center">Time in sec.</div></td>
      <td width="90"><div align="center">Result</div></td>
    </tr>
    <tr>
      <td height="23"><div align="center">HV + IV / LV + E</div></td>
      <td><label for="textfield"></label>
        <input name="1" type="text" id="textfield" size="15" value="<%=s1%>"></td>
      <td><input name="3" type="text" id="textfield2" size="15" value="<%=s3%>"></td>
      <td><input name="5" type="text" id="textfield3" size="15" value="<%=s5%>"></td>
      <td><input name="7" type="text" id="textfield4" size="15" value="<%=s7%>"></td>
    </tr>
    <tr>
      <td height="26"><div align="center">LV / HV + IV + E</div></td>
      <td><input name="2" type="text" id="textfield5" size="15" value="<%=s2%>"></td>
      <td><input name="4" type="text" id="textfield6" size="15" value="<%=s4%>"></td>
      <td><input name="6" type="text" id="textfield7" size="15" value="<%=s6%>"></td>
      <td><input name="8" type="text" id="textfield8" size="15" value="<%=s8%>"></td>
    </tr>
  </table>
  <p>&nbsp;</p>
</div>
<p align="center">&nbsp;</p>

  <div align="center">
    <input type="submit" name="update data" id="update data" value="save">
  </div>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</form>
</html>





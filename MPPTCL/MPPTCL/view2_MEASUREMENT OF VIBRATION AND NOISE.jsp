<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MEASUREMENT OF VIBRATION AND NOISE</title>
<style type="text/css">
body {
	background-image: url(last3.jpg);
}
</style>

<style type="text/css">
body,td,th {
	color: #000;
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

<body style="background-color: lavender">

<body>
<form id="form1" name="form1" method="post" action="view3_MEASUREMENT OF VIBRATION AND NOISE.jsp">
  <center>
<h1 align="center">MEASUREMENT OF VIBRATION AND NOISE
</h1>
<p align="center">&nbsp;</p>
<table width="1424" border="1">
  <tr>
      <th width="37" rowspan="2" scope="col">.No.</th>
    <th width="99" rowspan="2" scope="col">Date</th>
    <th colspan="6" scope="col">Point/Place of Measurement of Vibration and its Value (Velocity mm/sec)</th>
    <th colspan="6" scope="col">Point/Place of Measurement of Noise and its Value in db</th>
  </tr>
  <tr>
      
    <td width="60"><div align="center">1st Point</div></td>
    <td width="60"><div align="center">2nd Point</div></td>
    <td width="60"><div align="center">3rd Point</div></td>
    <td width="60"><div align="center">4th Point</div></td>
    <td width="60"><div align="center">5th Point</div></td>
    <td width="300"><div align="center">Remarks and Name of Engeineer</div></td>
    <td width="60"><div align="center">1st Point</div></td>
    <td width="60"><div align="center">2nd Point</div></td>
    <td width="60"><div align="center">3rd Point</div></td>
    <td width="60"><div align="center">4th Point</div></td>
    <td width="60"><div align="center">5th Point</div></td>
    <td width="300"><div align="center">Remarks and Name of Engeineer</div></td>
  </tr>
   
<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from measurement_of_vibration_and_noise");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr>
      <% do{%>
<% String s1 = rs.getString("date");%>
<% String s2 = rs.getString("vibration_1st_point");%>
<% String s3 = rs.getString("vibration_2nd_point");%>
<% String s4 = rs.getString("vibration_3rd_point");%>
<% String s5 = rs.getString("vibration_4th_point");%>
<% String s6 = rs.getString("vibration_5th_point");%>
<% String s7 = rs.getString("vibration_remarks_and_name_of_engineer");%>
<% String s8 = rs.getString("noise_1st_point");%>
<% String s9 = rs.getString("noise_2nd_point");%>
<% String s10 = rs.getString("noise_3rd_point");%>
<% String s11 = rs.getString("noise_4th_point");%>
<% String s12 = rs.getString("noise_5th_point");%>
<% String s13 = rs.getString("noise_remarks_and_name_of_engineer");%>
<td width="37"  scope="col"><%=i%></td>
    <td width="99"  scope="col"><%=s1%></td>
     <td width="60"><%=s2%></td>
    <td width="60"><%=s3%></td>
    <td width="60"><%=s4%></td>
    <td width="60"><%=s5%></td>
    <td width="60"><%=s6%></td>
    <td width="300"><%=s7%></td>
    <td width="60"><%=s8%></td>
    <td width="60"><%=s9%></td>
    <td width="60"><%=s10%></td>
    <td width="60"><%=s11%></td>
    <td width="60"><%=s12%></td>
    <td width="300"><%=s13%></td>
    </tr>
<% i++;%>
<% }while(rs.next());%>
<% }%>
<tr>
    <td><div align="center"><%=i%></div></td>
    <td><input name="Date" type="text" class="cal" id="textfield15" size="16" /></td>
    <td><input name="vib_1st Point" type="text" id="textfield27" size="10" /></td>
    <td><input name="vib_2nd Point" type="text" id="textfield39" size="10" /></td>
    <td><input name="vib_3rd Point" type="text" id="textfield51" size="10" /></td>
    <td><input name="vib_4th Point" type="text" id="textfield63" size="10" /></td>
    <td><input name="vib_5th Point" type="text" id="textfield75" size="10" /></td>
    <td><input name="vib_Remarks and Name of Engeineer" type="text" id="textfield147" size="50" /></td>
    <td><input name="noi_1st Point" type="text" id="textfield87" size="10" /></td>
    <td><input name="noi_2nd Point" type="text" id="textfield99" size="10" /></td>
    <td><input name="noi_3rd Point" type="text" id="textfield111" size="10" /></td>
    <td><input name="noi_4th Point" type="text" id="textfield123" size="10" /></td>
    <td><input name="noi_5th Point" type="text" id="textfield135" size="10" /></td>
    <td><input name="noi_Remarks and Name of Engeineer" type="text" id="textfield159" size="50" /></td>
</tr>
    </table>

<p align="center">

  </p>
<p align="center">&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="save">
</p>

</form>
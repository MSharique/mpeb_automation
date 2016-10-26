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
	background-image: url(website-backgrounds-download-hd-from-hd.jpg);
}
</style>

<style type="text/css">
body,td,th {
	color: #000;
}
</style>
</head>

<body style="background-color: lavender">
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

<body>
<form id="form1" name="form1" method="post" action="view2_MEASUREMENT OF VIBRATION AND NOISE.jsp">
  <center>
<h1 align="center">MEASUREMENT OF VIBRATION AND NOISE
</h1>
<p align="center">&nbsp;</p>
<table width="1424" border="1">
  <tr>
       <th width="60" rowspan="2"  scope="col">#</th>
    <th width="37" rowspan="2" scope="col">S.No.</th>
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
<td width="56" scope="col"><input type="radio" name="radio" id="radio" value="<%=i%>">
  <label for="radio"></label></td>
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
</table>
<% rs.close();%>
<p>&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="add data">
</p>
<p align="center"><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass">&nbsp;</p>
<p align="center">&nbsp;</p>
<h4 align="right">&lt;&lt; <a href="view_MAGNETIC BALANCE TEST RESULTS.jsp">prev</a> ... <a href="view_OLCT AND OLCT-DRIVE MECHANISM MAINTENANCE.jsp">next</a> &gt;&gt;</h4>
</body>
</html>
    

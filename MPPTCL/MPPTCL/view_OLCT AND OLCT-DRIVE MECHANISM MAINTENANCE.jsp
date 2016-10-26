<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OLCT AND OLCT-DRIVE MECHANISM MAINTENANCE</title>
<style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last4.JPG);
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

<form id="form1" name="form1" method="post" action="view2_OLCT AND OLCT-DRIVE MECHANISM MAINTENANCE.jsp">
  <center>
<h1 align="center">OLCT AND OLCT-DRIVE MECHANISM MAINTENANCE</h1>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table  border="1" width="100%" style="border-collapse: collapse">
  <tr>
      <th width="60" rowspan="2"  scope="col">#</th>
    <th width="37" rowspan="2" scope="col"><div align="center">S.No.</div></th>
    <th width="102" rowspan="2" scope="col"><div align="center">Date of Maint</div></th>
    <th width="102" rowspan="2" scope="col"><div align="center">Reason of Maint</div></th>
    <th colspan="3" scope="col"><div align="center">Details of Maintenance of OLTC chamber</div></th>
    <th colspan="3" scope="col"><div align="center">Details of Maintenance of Drive Mechanism</div></th>
    <th colspan="2" scope="col"><div align="center"></div></th>
    <th width="241" scope="col"><div align="center"></div></th>
  </tr>
  <tr>
    <td width="102" height="50"><div align="center">General Inspection</div></td>
    <td width="102"><div align="center">Oil Replacement</div></td>
    <td width="156"><div align="center">Ant other Maintenance carried out</div></td>
    <td width="102"><div align="center">Gear system Maintenance</div></td>
    <td width="102"><div align="center">Motor Maintenance</div></td>
    <td width="156"><div align="center">Ant other Maintenance carried out</div></td>
    <td width="102"><div align="center">oil topping</div></td>
    <td width="120"><div align="center">Silica gel Changing of OLTC Breather</div></td>
    <td><div align="center">Remarks and Name  of Engineer </div></td>
  </tr>
      <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from olct_and_olct_drive_mechanism_maintenanceor_oper");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr>
      <% do{%>
<% String s1 = rs.getString("date");%>
<% String s2 = rs.getString("reason");%>
<% String s3 = rs.getString("OLTC_general_inspection");%>
<% String s4 = rs.getString("OLTC_oil_replacement");%>
<% String s5 = rs.getString("OLTC_other_maintenance_carried_out");%>
<% String s6 = rs.getString("drive_gear_system_maintenance");%>
<% String s7 = rs.getString("drive_motor_maintenance");%>
<% String s8 = rs.getString("driveother_maintenance_carried_out");%>
<% String s9 = rs.getString("oil_topping");%>
<% String s10 = rs.getString("silica_gel_changing_of_OLTC_breather");%>
<% String s11 = rs.getString("remarks_and_name_of_engineer");%>
      <th width="56" scope="col"><input type="radio" name="radio" id="radio" value="<%=i%>">
  <label for="radio"></label></th>
    <td width="37" scope="col"><div align="center"><%=i%></div></td>
    <td width="102"  scope="col"><div align="center"><%=s1%></div></td>
    <td width="102"  scope="col"><div align="center"><%=s2%></div></td>
    <td width="102" height="50"><div align="center"><%=s3%></div></td>
    <td width="102"><div align="center"><%=s4%></div></td>
    <td width="156"><div align="center"><%=s5%></div></td>
    <td width="102"><div align="center"><%=s6%></div></td>
    <td width="102"><div align="center"><%=s7%></div></td>
    <td width="156"><div align="center"><%=s8%></div></td>
    <td width="102"><div align="center"><%=s9%></div></td>
    <td width="120"><div align="center"><%=s10%></div></td>
    <td><div align="center"><%=s11%></div></td>
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
<h4 align="right">&lt;&lt; <a href="view_MEASUREMENT OF VIBRATION AND NOISE.jsp">prev</a> ... <a href="view_BREATHING_ARRANGMENT_MAINTENANCE_viz_CONSERVATOR_BREATHER.jsp">next</a> &gt;&gt;</h4>
</body>
</html>
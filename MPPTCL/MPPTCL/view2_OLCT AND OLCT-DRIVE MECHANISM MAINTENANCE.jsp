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
	background-image: url(last3.jpg);
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
<form id="form1" name="form1" method="post" action="view3_OLCT AND OLCT-DRIVE MECHANISM MAINTENANCE.jsp">
  <center>
<h1 align="center">OLCT AND OLCT-DRIVE MECHANISM MAINTENANCE</h1>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table  border="1" width="100%" style="border-collapse: collapse">
  <tr>
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
    <td width="37" scope="col"><%=i%></td>
    <td width="102"  scope="col"><%=s1%></td>
    <td width="102"  scope="col"><%=s2%></td>
    <td width="102" height="50"><%=s3%></td>
    <td width="102"><%=s4%></td>
    <td width="156"><%=s5%></td>
    <td width="102"><%=s6%></td>
    <td width="102"><%=s7%></td>
    <td width="156"><%=s8%></td>
    <td width="102"><%=s9%></td>
    <td width="120"><%=s10%></td>
    <td><%=s11%></td>
    </tr>
<% i++;%>
<% }while(rs.next());%>
<% }%>
<tr>
    <td><div align="center"><%=i%></div></td>
    <td><div align="center"><input name="Date of Maint" type="text" class="cal" id="textfield14" size="17" /></div></td>
    <td><div align="center"><input name="Reason of Maint" type="text" id="textfield25" size="17" /></div></td>
    <td><div align="center"><input name="General Inspection" type="text" id="textfield34" size="17" /></div></td>
    <td><div align="center"><input name="Oil Replacement" type="text" id="textfield44" size="17" /></div></td>
    <td><div align="center"><input name="Ant other Maintenance carried out_1" type="text" id="textfield54" size="26" /></div></td>
    <td><div align="center"><input name="Gear system Maintenance" type="text" id="textfield64" size="17" /></div></td>
    <td><div align="center"><input name="Motor Maintenance" type="text" id="textfield74" size="17" /></div></td>
    <td><div align="center"><input name="Ant other Maintenance carried out_2" type="text" id="textfield84" size="26" /></div></td>
    <td><div align="center"><input name="oil topping" type="text" id="textfield94" size="17" /></div></td>
    <td><div align="center"><input name="Silica gel Changing of OLTC Breather" type="text" id="textfield104" size="20" /></div></td>
    <td><div align="center"><input name="Remarks and Name of Engineer" type="text" id="textfield114" size="40" /></div></td>
</tr>
</table>
      <% rs.close();%>
      <p align="center">&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="save">
</p>


</body>
</html>
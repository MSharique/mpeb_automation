<%@page import= "java.io.*"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Annuciation Test Details</title>
<style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last2.JPG);
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

<body bgcolor="lavender">
<form id="form1" name="form1" method="post" action="view3_Annuciation_Test_Details.jsp">
  <center>
<h1 align="center">ANNUNCIATION TEST DETAILS</h1>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="1680" border="1">
  <tr>
             		<th rowspan="2" >Date<br/>Of <br/>Testing</th>
                    <th rowspan="2">Reason of<br/>Testing <br/>Maintenanance/<br/>Tripping</th>
                    <th colspan="17">Actuation by Command</th>
                    <th rowspan="2">Remarks Name<br/>& Signature<br/>Of Engineer</th>
               </tr>  
            
                <tr align="center">
                	<td>OTA</td>
                    <td>OTT</td>
                    <td>WTA</td>
                    <td>WTT</td>
                    <td>PRV 1<br/>trip</td>
                    <td>PRV 2<br/>trip</td>
                    <td>PRV 3<br/>trip</td>
                    <td>OLTC <br/>buchh-<br/>oiztrip</td>
                    <td>Main<br/> buchh-<br/>Alarm</td>
                    <td>Main<br/>bucch<br/>trip</td>
                    <td>Low Oil<br/>Level<br/>Alarm</td>
                    <td>Differe-<br/>;ntial trip</td>
                    <td>HV over<br/>Current<br/>trip</td>
                    <td>IV over<br/>current &<br/>E/F trip</td>
                    <td>Master<br/>trip</td>
                    <td>CB low air<br/>pressure<br/>alarm</td>
                    <td>CB low<br/>SF6<br/>alarm</td>
                   
                </tr>


    <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from annunciation_test_details");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr>
  <% do{%>
<%String s1 = rs.getString("Date_of_Teting");%>
<%String s2 = rs.getString("Reason_of_testing_maintenance");%>
<%String s3 = rs.getString("OTA");%>
<%String s4 = rs.getString("OTT");%>
<%String s5 = rs.getString("WTA");%>
<%String s6 = rs.getString("WTT");%>
<%String s7 = rs.getString("PRV1_trip");%>
<%String s8 = rs.getString("PRV2_trip");%>
<%String s9 = rs.getString("PRV3_trip");%>
<%String s10 = rs.getString("OLTC_buchhoiztrip");%>
<%String s11 = rs.getString("main_buchhalarm");%>
<%String s12 = rs.getString("main_bucchtrip");%>
<%String s13 = rs.getString("low_oil_level_alarm");%>
<%String s14 = rs.getString("differential_trip");%>
<%String s15 = rs.getString("HV_over_current_trip");%>
<%String s16 = rs.getString("IV_over_current_and_EF_trip");%>
<%String s17 = rs.getString("master_trip");%>
<%String s18 = rs.getString("CB_low_air_pressure_alarm");%>
<%String s19 = rs.getString("CB_low_SF6_alarm");%>
<%String s20 = rs.getString("Remarks_and_name_of_Engineer");%>
     
  <th width="90" height="51" scope="col"><%=s1%></th>
    <th width="132" scope="col"><%=s2%></th>
    <th width="132" scope="col"><%=s3%></th>
    <th width="180" scope="col"><%=s4%></th>
    <th width="132" scope="col"><%=s5%></th>
    <th width="270" scope="col"><%=s6%></th>
    <th width="132" scope="col"><%=s7%></th>
    <th width="132" scope="col"><%=s8%></th>
    <th width="150" scope="col"><%=s9%></th>
    <th width="223" scope="col"><%=s10%></th>
    <th width="90" scope="col"><%=s11%></th>
    <th width="132" scope="col"><%=s12%></th>
    <th width="132" scope="col"><%=s13%></th>
    <th width="180" scope="col"><%=s14%></th>
    <th width="132" scope="col"><%=s15%></th>
    <th width="270" scope="col"><%=s16%></th>
    <th width="132" scope="col"><%=s17%></th>
    <th width="132" scope="col"><%=s18%></th>
    <th width="150" scope="col"><%=s19%></th>
    <th width="223" scope="col"><%=s20%></th>
</tr>
  <% i++;%>
<% }while(rs.next());%>
<% }%>


 <tr>
 					<td ><input type="text" name="date" class="cal" style="width: 100%"></td>
                    <td><input type="text" name="reason"  size="40" style="width: 100% "></td>
                    <td><input type="text" name="OTA"   style="width: 100% "></td>
                    <td><input type="text" name="OTT"   style="width: 100% "></td>
                    <td><input type="text" name="WTA"  style="width: 100%"></td>
                    <td><input type="text" name="WTT"   style="width: 100% "></td>
                    <td><input type="text" name="PRV1"   style="width: 100% "></td>
                    <td><input type="text" name="PRV2"  style="width: 100%"></td>
                    <td><input type="text" name="PRV3"  style="width: 100% "></td>
                    <td><input type="text" name="OLTC"   style="width: 100% "></td>
                    <td><input type="text" name="main_alarm"  style="width: 100% "></td>
                    <td><input type="text" name="main_trip"  style="width: 100%"></td>
                    <td><input type="text" name="oil" style="width: 100% "></td>
                    <td><input type="text" name="differential"  style="width: 100% "></td>
                    <td><input type="text" name="HV"   style="width: 100% "></td>
                    <td><input type="text" name="IV"  style="width: 100%"></td>
                    <td><input type="text" name="mastertrip"   style="width: 100%"></td>
                    <td><input type="text" name="CBair"   style="width: 100% "></td>
                    <td><input type="text" name="CBSF6"   style="width: 100%"></td>
                    <td><input type="text" name="remarks" size="40"  style="width: 100%"></td>
  </tr>
</table>


<% rs.close();%>
<p align="center">&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="save">
</p>


</body>
</html>
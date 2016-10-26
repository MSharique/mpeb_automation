<%@page import= "java.io.*"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
    <script language="javascript">
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='edit_ann.jsp?id='+id;
    f.submit();
}

</script>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Annuciation Test Details</title>
       <style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last4.JPG);
}
       </style>
    </head>
    <form id="form1" name="form1" method="post" action="view2_Annuciation_Test_Details.jsp">
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

  <center>

        <h1 align="center">ANNUNCIATION TEST DETAILS</h1><br/><br/>
  <table border="1" align="center" width="1413" >
            
             <tr>
             		<th width="41" rowspan="2" scope="col">#</th>
                    <th rowspan="2">S.<br/>No.</th>
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
                    <td>Differential trip</td>
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
<% int i=1,p=3;%>
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

<th></th>
    <th width="24" height="51" scope="col"><%=i%></th>
    <th width="54" scope="col"><%=s1%></th>
    <th width="108" scope="col"><%=s2%></th>
    <th width="40" scope="col"><%=s3%></th>
    <th width="41" scope="col"><%=s4%></th>
    <th width="41" scope="col"><%=s5%></th>
    <th width="41" scope="col"><%=s6%></th>
    <th width="44" scope="col"><%=s7%></th>
    <th width="44" scope="col"><%=s8%></th>
    <th width="42" scope="col"><%=s9%></th>
    <th width="45" scope="col"><%=s10%></th>
    <th width="44" scope="col"><%=s11%></th>
    <th width="43" scope="col"><%=s12%></th>
    <th width="86" scope="col"><%=s13%></th>
    <th width="83" scope="col"><%=s14%></th>
    <th width="84" scope="col"><%=s15%></th>
    <th width="65" scope="col"><%=s16%></th>
    <th width="66" scope="col"><%=s17%></th>
    <th width="82" scope="col"><%=s18%></th>
    <th width="47" scope="col"><%=s19%></th>
    <th width="134" scope="col"><%=s20%></th>
</tr>
  <% i++;%>
<% }while(rs.next());%>
<% }%>


                
</table>
  
          <% rs.close();%>
        <p>&nbsp;</p>
  
</p>

    <p>
  
<div align="center">
        <input type="button" name="button" id="button" value="insert data"/>
        
        </p>
</div>
    <p align="center">&nbsp;</p>
    
    </form>
    
 <a href=" " onclick="window.print();return false;" >
 <div align="center">
   <input style="" type="button" value="print" class="textboxclass">
 </div>
 <h3 align="right"> <a href="view_Oil_temp_indicator_and_winding.jsp">next</a> &gt;&gt;</h3>
    </body>
</html>

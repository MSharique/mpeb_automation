<%@page import= "java.io.*"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Oil temperature indicator and winding</title>
       <style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last3.JPG);
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
<form id="form1" name="form1" method="post" action="view2_Oil_temp_indicator_and_winding.jsp">
  <center>

        <h1 align="center">OIL TEMPERATURE INDICATOR AND WINDING TEMPERATURE INDICATOR OPERATIONAL CHECK</h1><br/><br/>
        <table border="1"  width="1600" align="center" >
          			<th width="60" rowspan="3" scope="col">#</th>
                    <th rowspan="3">S.<BR/>NO.</th>
                    <th rowspan="3">Date <br/>of<br/> Testing</th>
                    <th rowspan="3">Reason<br/>of<br/>Testing</th>
                    <th rowspan="3">OTI<br/>Alarm<br/>Setting</th>
                    <th rowspan="3">OTI<br/>Trip <br/>Setting</th>
                    <th height="24" colspan="2">WTI fan auto</th>
                  
                    <th rowspan="3">HV WTI<br/>Alarm</th>
                    <th rowspan="3">IV WTI <br/>Alarm</th>
                    <th rowspan="3">LV WTI<br/>Alarm</th>
                    <th rowspan="3">HV WTI<br/>Trip</th>
                    <th rowspan="3">IV WTI<br/>Trip</th>
                    <th rowspan="3">LV WTI<br/>Trip</th>
                    <th rowspan="3">Checking of Oil in<br/>OT & WT pocket</th>
                    <th rowspan="3">Any other check/<br/>maintenance<br/>carried out</th>
                     <th rowspan="3">Reamrks<br/>Name & Sign Of<br/>Engineer</th>
          
            
                <tr align="center">
                    <td rowspan="2">Start</td>
                    <td rowspan="2">Stop</td>
                   
                </tr>
                <tr>
                   
                </tr>
              
          <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from oil_temperature_indicator_and_winding_temperature_indicator_oper");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr>
  <% do{%>
<%String s1 = rs.getString("date");%>
<%String s2 = rs.getString("reason");%>
<%String s3 = rs.getString("OTI_alarm_setting");%>
<%String s4 = rs.getString("OTI_trip_setting");%>
<%String s5 = rs.getString("WTI_start");%>
<%String s6 = rs.getString("WTI_stop");%>
<%String s7 = rs.getString("HV_WTI_alarm");%>
<%String s8 = rs.getString("IV_WTI_alarm");%>
<%String s9 = rs.getString("LV_WTI_alarm");%>
<%String s10 = rs.getString("HV_WTI_trip");%>
<%String s11 = rs.getString("IV_WTI_trip");%>
<%String s12 = rs.getString("LV_WTI_trip");%>
<%String s13 = rs.getString("checking_of_oil_in_OTI_and_WT_pocket");%>
<%String s14 = rs.getString("any_other_check_maintenance_carried_out");%>
<%String s15 = rs.getString("remarks_and_name_of_engineer");%>


<th width="60" scope="col"><input type="radio" name="radio" id="radio" value="<%=i%>">
  <label for="radio"></label></th>
    <th width="37" height="51" scope="col"><%=i%></th>
    <th width="90" scope="col"><%=s1%></th>
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
  </tr>
  <% i++;%>
<% }while(rs.next());%>
<% }%>


                
    </table>
          <% rs.close();%>
    <p>&nbsp;</p>
  
</p>

    <h4>
      <input type="submit" name="button" id="button" value="insert data" />
    </h4>
    <p><a href=" " onclick="window.print();return false;">
  <input style="" type="button" value="print" class="textboxclass">&nbsp;</p>
  </center>
</form>
<h4 align="right">&lt;&lt; <a href="view_Annuciation_Test_Details.jsp">prev</a> ... <a href="view_INTERTRIP_TEST_DETAILS.jsp">next</a> &gt;&gt;</h4>
<p>&nbsp;</p>
       
    </body>
</html>

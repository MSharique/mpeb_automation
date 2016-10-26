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
    <form id="form1" name="form1" method="post" action="view3_Oil_temp_indicator_and_winding.jsp">
  <center>

        <h1 align="center">OIL TEMPERATURE INDICATOR AND WINDING TEMPERATURE INDICATOR OPERATIONAL CHECK</h1><br/><br/>
        <table border="1"  width="1600" align="center" >
          
          			
                    <th rowspan="3">S.<BR/>NO.</th>
                    <th rowspan="3">Date <br/>of<br/> Testing</th>
                    <th rowspan="3">Reason<br/>of<br/>Testing</th>
                    <th rowspan="3">OTI<br/>Alarm<br/>Setting</th>
                    <th rowspan="3">OTI<br/>Trip <br/>Setting</th>
                    <th colspan="2">WTI fan auto</th>
                  
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
<tr>
 					<td><div align="center"><%=i%></div></td>
    				<td ><input name="1" type="text" class="cal"  style="width: 100%"></td>
                    <td><input type="text" name="2"  size="40" style="width: 100% "></td>
                    <td><input type="text" name="3"   style="width: 100% "></td>
                    <td><input type="text" name="4"   style="width: 100% "></td>
                    <td><input type="text" name="5"  style="width: 100%"></td>
                    <td><input type="text" name="6"   style="width: 100% "></td>
                    <td><input type="text" name="7"   style="width: 100% "></td>
                    <td><input type="text" name="8"  style="width: 100%"></td>
                    <td><input type="text" name="9"  style="width: 100% "></td>
                    <td><input type="text" name="10"   style="width: 100% "></td>
                    <td><input type="text" name="11"  style="width: 100% "></td>
                    <td><input type="text" name="12"  style="width: 100%"></td>
                    <td><input type="text" name="13" style="width: 100% "></td>
                    <td><input type="text" name="14"  style="width: 100% "></td>
                    <td><input type="text" name="15"   style="width: 100% "></td>
                 
  </tr>


                
          </table>
          <% rs.close();%>
        <p>&nbsp;</p>
  
</p>

    <input type="submit" name="button" id="button" value="save" />
  </center>
</form>
       
    </body>
</html>

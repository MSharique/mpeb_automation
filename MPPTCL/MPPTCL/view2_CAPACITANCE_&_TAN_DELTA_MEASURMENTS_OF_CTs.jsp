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
        <title>Capacitance & Tan Delta Measure of CT</title>
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
    <form id="form1" name="form1" method="post" action="view3_CAPACITANCE_&_TAN_DELTA_MEASURMENTS_OF_CTs.jsp">
  <center>

        <h1 align="center">CAPACITANCE & TAN DELTA MEASURMENTS OF CTs</h1><br/><br/>
        <table border="1"  width="1600" align="center" >
          	
                   <tr>
                   	<td rowspan=3 align="center"><h3>S.<br>No.</h3> </td>
<td  rowspan=3 align="center"><h3>Date</h3> </td>
<td rowspan=3 align="center"><h3>Reason<br>of testing</h3> </td>
<td colspan=6 align="center" >HV CTS</td>
<td colspan=6 align ="center">IV CTS</td>
<td colspan=6 align ="center">LV CTS</td>
</tr>
<tr>

<td   colspan=2 align="center">R-Phase </td>
<td   colspan=2  align="center">Y-Phase </td>
<td   colspan=2  align="center">B-Phase </td>
<td   colspan=2 align="center">R-Phase </td>
<td   colspan=2  align="center">Y-Phase </td>
<td   colspan=2  align="center">B-Phase </td>
<td   colspan=2 align="center">R-Phase </td>
<td   colspan=2  align="center">Y-Phase </td>
<td   colspan=2  align="center">B-Phase </td>
</tr>
<tr>
<td align="center">CAP pf</td>
<td align="center">TAN DALTA%</td>
<td align="center">CAP pf</td>
<td align="center">TAN DALTA%</td>
<td align="center">CAP pf</td>
<td align="center">TAN DALTA%</td>
<td align="center">CAP pf</td>
<td align="center">TAN DALTA%</td>
<td align="center">CAP pf</td>
<td align="center">TAN DALTA%</td>
<td align="center">CAP pf</td>
<td align="center">TAN DALTA%</td>
<td align="center">CAP pf</td>
<td align="center">TAN DALTA%</td>
<td align="center">CAP pf</td>
<td align="center">TAN DALTA%</td>
<td align="center">CAP pf</td>
<td align="center">TAN DALTA%</td>

              
          <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from capacitance_and_tan_delta_measurements_of_cts");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr>
  <% do{%>
<%String s1 = rs.getString("date");%>
<%String s2 = rs.getString("reasonoftesting");%>
<%String s3 = rs.getString("HV_R_cap_pf");%>
<%String s4 = rs.getString("HV_R_tan_dalta");%>
<%String s5 = rs.getString("HV_Y_cap_pf");%>
<%String s6 = rs.getString("HV_Y_tan_dalta");%>
<%String s7 = rs.getString("HV_B_cap_pf");%>
<%String s8 = rs.getString("HV_B_tan_dalta");%>
<%String s9 = rs.getString("IV_R_cap_pf");%>
<%String s10 = rs.getString("IV_R_tan_dalta");%>
<%String s11 = rs.getString("IV_Y_cap_pf");%>
<%String s12 = rs.getString("IV_Y_tan_dalta");%>
<%String s13 = rs.getString("IV_B_cap_pf");%>
<%String s14 = rs.getString("IV_B_tan_dalta");%>
<%String s15 = rs.getString("LV_R_cap_pf");%>
<%String s16 = rs.getString("LV_R_tan_dalta");%>
<%String s17 = rs.getString("LV_Y_cap_pf");%>
<%String s18 = rs.getString("LV_Y_tan_dalta");%>
<%String s19 = rs.getString("LV_B_cap_pf");%>
<%String s20 = rs.getString("LV_B_tan_dalta");%>

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
     <th width="90" scope="col"><%=s16%></th>
    <th width="132" scope="col"><%=s17%></th>
    <th width="132" scope="col"><%=s18%></th>
    <th width="180" scope="col"><%=s19%></th>
    <th width="132" scope="col"><%=s20%></th>
    
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
                     <td><input type="text" name="16"   style="width: 100% "></td>
                    <td><input type="text" name="17"   style="width: 100% "></td>
                    <td><input type="text" name="18"  style="width: 100%"></td>
                    <td><input type="text" name="19"  style="width: 100% "></td>
                    <td><input type="text" name="20"   style="width: 100% "></td>
                 
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

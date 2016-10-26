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
        <title>intertrip test details</title>
       <style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last3.jpg);
}
       </style>
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
	  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
  
	  <script>
	  $(document).ready(function() {
	    $(".cal").datepicker();
	  });
	  </script>
    </head>
    <body style="background-color: lavender">
    <form id="form1" name="form1" method="post" action="view3_INTERTRIP_TEST_DETAILS.jsp">
  <center>

        <h1 align="center">INTERTRIP TEST DETAILS</h1><br/><br/>
        <table border="1" align="center" width="1451" >
           
                    <th>S.<br/>No.</th>
                    <th>Date</th>
                    <th>Reason of<br/>Testing Mainten-<br/>ance Tripping</th>
                    <th>Trip Test tak-<br/>en through<br/>Protection<br/>command</th>
                    <th><br/>HV CB<br/>Tripped</th>
                    <th><br/>IV CB<br/>Tripped</th>
                    <th><br/>LV CB<br/>Tripped</th>
                    <th><br/>Relay<br/>Indication</th>
                    <th><br/>Window<br/>Indication</th>
                    <th><br/>Remarks<br/>Name & Signature<br/>of Engineer</th>
          
                
              
          <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from intertrip_test_details");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr>
  <% do{%>
<%String s1 = rs.getString("date");%>
<%String s2 = rs.getString("reason_of_testing_maintenance_tripping");%>
<%String s3 = rs.getString("trip_test_taken_through_protection_command");%>
<%String s4 = rs.getString("HV_CB_tripped");%>
<%String s5 = rs.getString("IV_CB_tripped");%>
<%String s6 = rs.getString("LV_CB_tripped");%>
<%String s7 = rs.getString("relay_indication");%>
<%String s8 = rs.getString("window_indication");%>
<%String s9 = rs.getString("remarks_and_name_of_engineer");%>

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

  </tr>
  <% i++;%>
<% }while(rs.next());%>
<% }%>
<tr>
 					<td><div align="center"><%=i%></div></td>
    				<td ><input type="text" name="1" class="cal" style="width: 100%"></td>
                    <td><input type="text" name="2"  size="40" style="width: 100% "></td>
                    <td><input type="text" name="3"   style="width: 100% "></td>
                    <td><input type="text" name="4"   style="width: 100% "></td>
                    <td><input type="text" name="5"  style="width: 100%"></td>
                    <td><input type="text" name="6"   style="width: 100% "></td>
                    <td><input type="text" name="7"   style="width: 100% "></td>
                    <td><input type="text" name="8"  style="width: 100%"></td>
                    <td><input type="text" name="9"  style="width: 100% "></td>
                    
                 
  </tr>


                
          </table>
          <% rs.close();%>
        <p>&nbsp;</p>
  
</p>

    <input type="submit" name="button" id="button" value="insert data" />
  </center>
</form>
       
    </body>
</html>

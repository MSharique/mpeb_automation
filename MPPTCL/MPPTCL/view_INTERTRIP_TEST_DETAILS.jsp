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
<form id="form1" name="form1" method="post" action="view2_INTERTRIP_TEST_DETAILS.jsp">
  <center>

        <h1 align="center">INTERTRIP TEST DETAILS</h1><br/><br/>
        <table border="1" align="center" width="1600" >
           <th width="60" rowspan="4" scope="col">#</th>
                    <th rowspan="4">S.<br/>No.</th>
                    <th rowspan="4">Date</th>
                    <th rowspan="4">Reason of<br/>Testing Mainten-<br/>ance Tripping</th>
                    <th rowspan="4">Trip Test tak-<br/>en through<br/>Protection<br/>command</th>
                    <th rowspan="4"><br/>HV CB<br/>Tripped</th>
                    <th rowspan="4"><br/>IV CB<br/>Tripped</th>
                    <th rowspan="4"><br/>LV CB<br/>Tripped</th>
                    <th rowspan="4"><br/>Relay<br/>Indication</th>
                    <th rowspan="4"><br/>Window<br/>Indication</th>
                    <th rowspan="4"><br/>Remarks<br/>Name & Signature<br/>of Engineer</th>
          
                <tr>
                   
                </tr>
                <tr>
                    
                </tr>
                <tr>
                   
                </tr>
              
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



<th width="60" scope="col"><a href="update.html">edit</a></th>
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


                
          </table>
          <% rs.close();%>
        <p>&nbsp;</p>
  
</p>

    <input type="submit" name="button" id="button" value="insert data" />
  </center>
</form>
<p align="center"><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass">&nbsp;</p>
<h4 align="right">&lt;&lt; <a href="view_Oil_temp_indicator_and_winding.jsp">prev</a> ... <a href="view_CAPACITANCE_&_TAN_DELTA_MEASURMENTS_OF_CTs.jsp">next</a> &gt;&gt;</h4>
       
    </body>
</html>

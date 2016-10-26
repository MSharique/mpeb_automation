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
        <title>records of system disterbances</title>
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
    <form id="form1" name="form1" method="post" action="view3_RECORDS_OF_SYSTEM_DISTURBANCES_MAJOR_TRIPPINGS_FACED_BY_TARANSFORMER.jsp">
  <center>

        <h1 align="center">RECORDS OF SYSTEM DISTURBANCES/MAJOR TRIPPINGS FACED BY TARANSFORMER</h1><br/><br/>
        <table border="1"  width="1523" align="center" >
          <tr>
<td rowspan=2>S.No. </td>
<td  rowspan=2 >Date of incidence/Tripping</td>
<td colspan=4 style="width:"100%"">Details of incidence/tripping viz.(tripping on Buchholz,ORS,OTI/WTI,PRV,Differential,overfluxing,O/C & E/F,Restricted E/F,LA,CT or Bushing Faolures, etc) of new Equpment </td>
<td rowspan=2 align="center">Name & Signature of Engineer</td>
</tr>
<tr>

<td   align="center">Details of Occurrence with other Trippings </td>
<td    align="center" >Cumulative Number of  Tripping </td>
<td    align="center" >Relay Indications</td>
<td    align="center">Corrective Action Taken</td>
</tr>
              
          <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from records_of_system_disturbances_major_trippings_faced_by_taransfo");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr>
  <% do{%>
<%String s1 = rs.getString("date");%>
<%String s2 = rs.getString("details");%>
<%String s3 = rs.getString("cumulative_number_of_tripping");%>
<%String s4 = rs.getString("reay_indications");%>
<%String s5 = rs.getString("corrective_action_taken");%>
<%String s6 = rs.getString("name_of_engineer");%>

<th width="49" height="51" scope="col"><%=i%></th>
    <th width="187" scope="col"><%=s1%></th>
    <th width="305" scope="col"><%=s2%></th>
    <th width="229" scope="col"><%=s3%></th>
    <th width="211" scope="col"><%=s4%></th>
    <th width="243" scope="col"><%=s5%></th>
    <th width="253" scope="col"><%=s6%></th>

  </tr>
  <% i++;%>
<% }while(rs.next());%>
<% }%>
<tr>
 					<td><div align="center"><%=i%></div></td>
    				<td ><input type="text" name="1"  style="width: 100%" class="cal"></td>
                    <td><input type="text" name="2"  size="40" style="width: 100% "></td>
                    <td><input type="text" name="3"   style="width: 100% "></td>
                    <td><input type="text" name="4"   style="width: 100% "></td>
                    <td><input type="text" name="5"  style="width: 100%"></td>
                    <td><input type="text" name="6"   style="width: 100% "></td>

                 
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

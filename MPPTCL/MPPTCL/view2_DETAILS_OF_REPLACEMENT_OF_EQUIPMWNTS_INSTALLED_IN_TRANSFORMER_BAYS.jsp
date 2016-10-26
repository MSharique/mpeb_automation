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
        <title>Details of replacement of Equipments</title>
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
    <form id="form1" name="form1" method="post" action="view3_DETAILS_OF_REPLACEMENT_OF_EQUIPMWNTS_INSTALLED_IN_TRANSFORMER_BAYS.jsp">
  <center>

        <h1 align="center">DETAILS OF REPLACEMENT OF EQUIPMWNTS INSTALLED IN TRANSFORMER BAYS</h1><br/><br/>
        <table border="1"  width="1600" align="center" >
          			
                     <td rowspan=2>S.<br>No. </td>
      <td  rowspan=2 align="center">Date of intial commisioning of old equipment</td>
      <td rowspan=2 align="center">Date of Replacement & commissioning of new Equpment </td>
      <td rowspan=2>Reason of Replacement </td>
      <td colspan=4 align="center" >Details of Old Equipment</td>
      <td colspan=4 align="center" >Details of New Equipment</td>
      <td rowspan=2 align="center">Remarks<br> Name & Signature of Engineer</td>
    </tr>
    <tr>
      
      <td   align="center">Name of Equipment </td>
      <td    align="center">Make</td>
      <td    align="center">S.No. </td>
      <td    align="center">Any other Detail </td>
      <td   align="center">Name of Equipment </td>
      <td    align="center">Make</td>
      <td    align="center">S.No. </td>
      <td    align="center">Any other Detail </td>
    </tr>
              
          <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from details_of_replacement_of_equipment_installed_in_transformer_bay");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr>
  <% do{%>
<%String s1 = rs.getString("date_of_initial_commisioning_of_old_equipment");%>
<%String s2 = rs.getString("date_of_replacement_and_commissioning_of_new_equipment");%>
<%String s3 = rs.getString("reason_of_replacement");%>
<%String s4 = rs.getString("old_name");%>
<%String s5 = rs.getString("old_make");%>
<%String s6 = rs.getString("old_SNo");%>
<%String s7 = rs.getString("old_detail");%>
<%String s8 = rs.getString("new_name");%>
<%String s9 = rs.getString("new_make");%>
<%String s10 = rs.getString("new_SNo");%>
<%String s11 = rs.getString("new_detail");%>
<%String s12 = rs.getString("remarks_and_name_of_engineer");%>

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

  </tr>
  <% i++;%>
<% }while(rs.next());%>
<% }%>


<tr>
 					<td><div align="center"><%=i%></div></td>
    				<td ><input name="1" type="text" class="cal"  style="width: 100%"></td>
                    <td><input name="2" type="text" class="cal" style="width: 100% "  size="40"></td>
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

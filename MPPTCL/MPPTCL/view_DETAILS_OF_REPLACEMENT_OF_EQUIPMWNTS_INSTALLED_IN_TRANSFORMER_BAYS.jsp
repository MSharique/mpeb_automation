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
<form id="form1" name="form1" method="post" action="view2_DETAILS_OF_REPLACEMENT_OF_EQUIPMWNTS_INSTALLED_IN_TRANSFORMER_BAYS.jsp">
  <center>

        <h1 align="center">DETAILS OF REPLACEMENT OF EQUIPMWNTS INSTALLED IN TRANSFORMER BAYS</h1><br/><br/>
        <table border="1"  width="1600" align="center" >
          			<th width="60" rowspan="2" scope="col">#</th>
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
<h4 align="right">&lt;&lt; <a href="view_CAPACITANCE_&_TAN_DELTA_MEASURMENTS_OF_CTs.jsp">prev</a> ... <a href="view_RECORDS_OF_SYSTEM_DISTURBANCES_MAJOR_TRIPPINGS_FACED_BY_TARANSFORMER.jsp">next</a> &gt;&gt;</h4>
       
    </body>
</html>

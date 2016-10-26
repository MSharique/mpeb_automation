<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CHECKING OF NEUTRAL EARTHING ARRANGEMENT LIKE CONDITION OF CLAMPS &amp; CONDUCTORS</title>
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

<body bgcolor="lavender">
<form id="form1" name="form1" method="post" action="view3_CHECKING_OF_NEUTRAL_EARTHING_ARRANGEMENT_LIKE_CONDITION_OF_CLAMPS_and_CONDUCTORS.jsp">
  <center>
<h1 align="center">CHECKING OF NEUTRAL EARTHING ARRANGEMENT LIKE CONDITION OF CLAMPS &amp; CONDUCTORS</h1>

<table width="1966" border="1">
  <tr>
      
    <th width="37" scope="col">S.No.</th>
    <th width="90" scope="col">Date </th>
    <th width="197" scope="col">Reason for maintenance</th>
    <th width="197" scope="col">Condition of 1st Neutral Earthing Conductor of HV Neutral</th>
    <th width="197" scope="col">Condition of 2nd Neutral Earthing Conductor of HV Neutral</th>
    <th width="197" scope="col">Condition of 1st Neutral Earthing Conductor of LV Neutral</th>
    <th width="197" scope="col">Condition of 2nd Neutral Earthing Conductor of HV Neutral</th>
    <th width="197" scope="col">Condition of clamps of all four Neutral Earthing Conductors at Bushing &amp; Earth Pits</th>
    <th width="197" scope="col">Condition of clamps and Earth Flats of LA Earthing at Earth Pits</th>
    <th width="197" scope="col">Condition of clamps and Conductors of transformer body Earthing</th>
    <th width="193" scope="col">Remarks &amp; Name of Engineer</th>
  </tr>

 
      <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from checking_of_neutral_earthing_arrangement");%>
<% int i=1;%>
<% if(rs.next()){%>
 
      <tr>
          <% do{%>
          <% String s1=rs.getString("date");%>
           <% String s2=rs.getString("reason_for_maintenance");%> 
          <% String s3=rs.getString("condition_of_1st_neutral_earthing_conductor_of_HV_Neutral");%> 
          <% String s4=rs.getString("condition_of_2nd_neutral_earthing_conductor_of_HV_Neutral");%> 
          <% String s5=rs.getString("condition_of_1st_neutral_earthing_conductor_of_LV_Neutral");%>
           <% String s6=rs.getString("condition_of_2nd_neutral_earthing_conductor_of_LV_Neutral");%>
            <% String s7=rs.getString("condition_of_clamps_of_all_four_neutral_earthing_conductors");%>
             <% String s8=rs.getString("condition_of_clamps_and_earth_flats_of_LA_earthing_at_earth_pits");%>
              <% String s9=rs.getString("condition_of_clamps_and_coductors_of_ransformer_body_earthing");%>
               <% String s10=rs.getString("remarks_and_name_of_Engineer");%>        
        <th width="37" scope="col"><%=i%></th>
    <th width="90" scope="col"><%=s1%></th>
    <th width="197" scope="col"><%=s2%></th>
    <th width="197" scope="col"><%=s3%></th>
    <th width="197" scope="col"><%=s4%></th>
    <th width="197" scope="col"><%=s5%></th>
    <th width="197" scope="col"><%=s6%></th>
    <th width="197" scope="col"><%=s7%></th>
    <th width="197" scope="col"><%=s8%></th>
    <th width="197" scope="col"><%=s9%></th>
    <th width="193" scope="col"><%=s10%></th>
  </tr>
<% i++;%>
<% }while(rs.next());%>
<% }%>
 <tr>
    <td><div align="center"><%=i%></div></td>
    <td><input name="textfield2" type="text" class="cal" id="textfield2" size="15" /></td>
    <td><textarea name="textarea10" id="textarea10" cols="30" rows="4"></textarea></td>
    <td><textarea name="textarea20" id="textarea20" cols="30" rows="4"></textarea></td>
    <td><textarea name="textarea30" id="textarea30" cols="30" rows="4"></textarea></td>
    <td><textarea name="textarea40" id="textarea40" cols="30" rows="4"></textarea></td>
    <td><textarea name="textarea50" id="textarea50" cols="30" rows="4"></textarea></td>
    <td><textarea name="textarea60" id="textarea60" cols="30" rows="4"></textarea></td>
    <td><textarea name="textarea70" id="textarea70" cols="30" rows="4"></textarea></td>
    <td><textarea name="textarea80" id="textarea80" cols="30" rows="4"></textarea></td>
    <td><textarea name="textarea90" id="textarea90" cols="30" rows="4"></textarea></td>
  </tr>
  </table>
      <% rs.close();%>
      <p align="center">&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="save">
</p>


</body>
</html>
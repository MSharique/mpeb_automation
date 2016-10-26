<%@page import= "java.io.*"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BREATHING ARRANGMENT MAINTENANCE viz CONSERVATOR,BREATHER etc.</title>
<style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last3.JPG);
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
<form id="form1" name="form1" method="post" action="view3_BREATHING ARRANGMENT MAINTENANCE viz CONSERVATOR,BREATHER.jsp">
  <center>
<h1 align="center">BREATHING ARRANGMENT MAINTENANCE viz CONSERVATOR,BREATHER etc.</h1>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="1637" border="1">
  <tr>
    <th width="90" height="51" scope="col">Date</th>
    <th width="132" scope="col">Changing of Silica gel of Breather</th>
    <th width="132" scope="col">Inflating of Aircell in Conservator</th>
    <th width="180" scope="col">Making-up oil level in main conservator</th>
    <th width="132" scope="col">Maintenance of MOG</th>
    <th width="270" scope="col">Attending problem in pipeline Connection Conservator and main tank</th>
    <th width="132" scope="col">Attending problems in Radiators</th>
    <th width="132" scope="col">Thermosyphon Maintenance</th>
    <th width="150" scope="col">Maintenance of main Buchholz relay</th>
    <th width="223" scope="col">Remarks &amp; name of Engineer</th>
  </tr>


    <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from breathing_arrangment_maintenance");%>
<% int i=1;%>
<% if(rs.next()){%>

  <tr>
  <% do{%>
<% String s1 = rs.getString("Date");%>
<% String s2 = rs.getString("changing_of_Silica_gel_of_Breather");%>
<% String s3 = rs.getString("Inflating_of_aircell_in_conservator");%>
<% String s4 = rs.getString("Making_up_oil_level_in_main_conservator");%>
  <%String s5=rs.getString("maintenance_of_MOG");%>
   <%String s6=rs.getString("attending_problem_in_pipeline_conc_conservator_and_main_tank");%>
    <%String s7=rs.getString("attending_problems_in_radiators");%>
     <%String s8=rs.getString("thermosyphon_maintenance");%>
      <%String s9=rs.getString("maintenance_of_main_Buchholz_relay");%>
       <%String s10=rs.getString("remarks_and_name_of_Engineer");%>
     
   <th width="90" height="51" scope="col"><%=s1%></th>
    <th width="132" scope="col"><%=s2%></th>
    <th width="132" scope="col"><%=s3%></th>
    <th width="180" scope="col"><%=s4%></th>
    <th width="132" scope="col"><%=s5%></th>
    <th width="270" scope="col"><%=s6%></th>
    <th width="132" scope="col"><%=s7%></th>
    <th width="132" scope="col"><%=s8%></th>
    <th width="150" scope="col"><%=s9%></th>
    <th width="223" scope="col"><%=s10%></th>
  </tr>
  <% i++;%>
<% }while(rs.next());%>
<% }%>


 <tr>
    <td><input name="date" type="text" class="cal" size="15" /></td>
    <td><input name="CSB" type="text" id="textfield13" size="22" /></td>
    <td><input name="IAC" type="text" id="textfield24" size="22" /></td>
    <td><input name="Molmc" type="text" id="textfield77" size="30" /></td>
    <td><input name="MOG" type="text" id="textfield35" size="22" /></td>
    <td><input name="ACC" type="text" id="textfield87" size="45" /></td>
    <td><input name="APR" type="text" id="textfield46" size="22" /></td>
    <td><input name="TM" type="text" id="textfield57" size="22" /></td>
    <td><input name="MMBR" type="text" id="textfield67" size="25" /></td>
    <td><input name="remarks" type="text" id="textfield98" size="45" /></td>
  </tr>
</table>


<% rs.close();%>
<p align="center">&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="save">
</p>


</body>
</html>
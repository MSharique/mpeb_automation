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
</head>

<body bgcolor="lavender">
<div align="right">
  <table width="1156" border="0">
    <tr>
      <td width="1150"><div align="right"><a href="index2.html">back to index</a></div></td>
    </tr>
    <tr>
      <td><div align="right"><a href="index.jsp">logout</a></div></td>
    </tr>
  </table>
</div>

<form id="form1" name="form1" method="post" action="view2_BREATHING_ARRANGMENT_MAINTENANCE_viz_CONSERVATOR_BREATHER.jsp">
  <center>
<h1 align="center">BREATHING ARRANGMENT MAINTENANCE viz CONSERVATOR,BREATHER etc.</h1>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="1532" border="1">
  <tr>
      <th width="25" scope="col">#</th>
    <th width="37" height="51" scope="col">S.No.</th>
    <th width="72" scope="col">Date</th>
    <th width="114" scope="col">Changing of Silica gel of Breather</th>
    <th width="130" scope="col">Inflating of Aircell in Conservator</th>
    <th width="139" scope="col">Making-up oil level in main conservator</th>
    <th width="115" scope="col">Maintenance of MOG</th>
    <th width="267" scope="col">Attending problem in pipeline Connection Conservator and main tank</th>
    <th width="93" scope="col">Attending problems in Radiators</th>
    <th width="118" scope="col">Thermosyphon Maintenance</th>
    <th width="144" scope="col">Maintenance of main Buchholz relay</th>
    <th width="257" scope="col">Remarks &amp; name of Engineer</th>
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
       <%String s10=rs.getString("remarks_&_name_of_Engineer");%>
     
   <th width="25" scope="col"><a href="update.html">edit</a></th>
    <th width="37" height="51" scope="col"><%=i%></th>
    <th width="72" scope="col"><%=s1%></th>
    <th width="114" scope="col"><%=s2%></th>
    <th width="130" scope="col"><%=s3%></th>
    <th width="139" scope="col"><%=s4%></th>
    <th width="115" scope="col"><%=s5%></th>
    <th width="267" scope="col"><%=s6%></th>
    <th width="93" scope="col"><%=s7%></th>
    <th width="118" scope="col"><%=s8%></th>
    <th width="144" scope="col"><%=s9%></th>
    <th width="257" scope="col"><%=s10%></th>
  </tr>
  <% i++;%>
<% }while(rs.next());%>
<% }%>
</table>


<% rs.close();%>
<p align="center">&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="insert data">
</p>
<p align="center"><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass">&nbsp;</p>
<p align="center">&nbsp;</p>
<h4 align="right">&lt;&lt; <a href="view_OLCT AND OLCT-DRIVE MECHANISM MAINTENANCE.jsp">prev</a> ... <a href="view_GENERAL MAINTENANCE OF JUMPERS,CLAMPS.jsp">next</a> &gt;&gt;</h4>


</body>
</html>
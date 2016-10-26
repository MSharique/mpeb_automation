
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
	background-image: url(last3.JPG);
}
</style>
</head>

<body bgcolor="lavender">
<div align="right">
  <table width="100" border="0">
    <tr>
      <td><div align="right"><a href="index2">back to index</a></div></td>
    </tr>
    <tr>
      <td><div align="right"><a href="index.jsp">logout</a></div></td>
    </tr>
  </table>
</div>
<form id="form1" name="form1" method="post" action="view2_CHECKING_OF_NEUTRAL_EARTHING_ARRANGEMENT_LIKE_CONDITION_OF_CLAMPS_and_CONDUCTORS.jsp">
  <center>
<h1 align="center">CHECKING OF NEUTRAL EARTHING ARRANGEMENT LIKE CONDITION OF CLAMPS &amp; CONDUCTORS</h1>

<table width="1966" border="1">
  <tr>
      
      <th width="60" scope="col">#</th>
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
           <th width="56" scope="col"><a href="update.html">edit</a></th>
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
</table>
<% rs.close();%>
<p>&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="insert data">
</p>
<p align="center"><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass"></p>
<p align="center"></p>
<h4 align="right">&lt;&lt; <a href="view_TRANSFORMER EARTHPITS RESSISTANCE MEASUREMENT.jsp">prev</a> ... <a href="view_DETAILS_OF_OIL_REPLACEMENT_OR_RECONDITIONING_WORKS.jsp">next</a> &gt;&gt;</h4>

</body>
</html>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>IR VALUES OF BUSHING</title>
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
<form id="form1" name="form1" method="post" action="view3_IR VALUES OF BUSHING.jsp">
  <center>
      <h2 align="center">IR VALUES OF BUSHING</h2></center> </br></br>
  <table  border="1" width="100%">
    <tr>
      <th  rowspan="2" scope="col">S.No.</th>
      <th  rowspan="2" scope="col">Date</th>
      <th colspan="11" scope="col">IR values in M ohm between line &amp; tan delta point </th>
      <th  rowspan="2" scope="col">Remarks Name &amp; signature of Engineer </th>
    </tr>
    <tr>
      <th scope="col">1U</th>
      <th scope="col">1V</th>
      <th scope="col">1W</th>
      <th scope="col">
        N</th>
      <th scope="col">2U</th>
      <th scope="col">2V</th>
      <th scope="col">2W</th>
      <th scope="col">N</th>
      <th scope="col">3U</th>
      <th scope="col">3V</th>
      <th scope="col">3W</th>
    </tr>

<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from ir_values_of_bushing");%>
<% int i=1;%>
<% if(rs.next()){%>

    <tr>
          <% do{%>
<% String s1 = rs.getString("date");%>
<% String s2 = rs.getString("1U");%>
<% String s3 = rs.getString("1V");%>
<% String s4 = rs.getString("1W");%>
<% String s5 = rs.getString("IR_N");%>
<% String s6 = rs.getString("2U");%>
<% String s7 = rs.getString("2V");%>
<% String s8 = rs.getString("2W");%>
<% String s9 = rs.getString("N");%>
<% String s10 = rs.getString("3U");%>
<% String s11 = rs.getString("3V");%>
<% String s12 = rs.getString("3W");%>
<% String s13 = rs.getString("remarks_and_name_of_engineer");%>
<th  scope="col"><%=i%></th>
      <th   scope="col"><%=s1%></th>
      <th scope="col"><%=s2%></th>
      <th scope="col"><%=s3%></th>
      <th scope="col"><%=s4%></th>
      <th scope="col"><%=s5%></th>
      <th scope="col"><%=s6%></th>
      <th scope="col"><%=s7%></th>
      <th scope="col"><%=s8%></th>
      <th scope="col"><%=s9%></th>
      <th scope="col"><%=s10%></th>
      <th scope="col"><%=s11%></th>
      <th scope="col"><%=s12%></th>
     <th  scope="col"><%=s13%></th>
     </tr>
<% i++;%>
<% }while(rs.next());%>
<% }%>
<tr>
    <td><div align="center"><%=i%></div></td>
      <td><input name="Date" type="text" class="cal"  /></td>
      <td ><input name="1U" type="text" /></td>
      <td ><input name="1V" type="text" /></td>
      <td ><input name="1W" type="text" /></td>
      <td ><input name="N" type="text" /></td>
      <td ><input name="2U" type="text" /></td>
      <td ><input name="2V" type="text" /></td>
      <td ><input name="2W" type="text" /></td>
      <td ><input name="N" type="text" /></td>
      <td ><input name="3U" type="text" /></td>
      <td ><input name="3V" type="text" /></td>
      <td ><input name="3W" type="text" /></td>
      <td><input name="Remarks Name & signature of Engineer" type="text"  size="28"  /></td>
</tr>
</table>
    <% rs.close();%>
<p align="center">&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="save">
</p>


</body>
</html>
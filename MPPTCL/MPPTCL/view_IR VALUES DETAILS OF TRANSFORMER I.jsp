<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>IR VALUES DETAILS OF TRANSFORMER</title>
<style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last3.JPG);
}
</style></head>

<body style="background-color: lavender">
<div align="right">
  <table width="100" border="0">
    <tr>
      <td><div align="right" style="color: #00F"><a href="index2.html">back to index</a></div></td>
    </tr>
    <tr>
      <td><div align="right"><a href="index.jsp">logout</a></div></td>
    </tr>
  </table>
</div>
<div align="center">
    <form id="form1" name="form1" method="post" action="view2_IR VALUES DETAILS OF TRANSFORMER I.jsp">
  <p>&nbsp;</p>
  <p><strong><h1>IR VALUES DETAILS OF TRANSFORMER</h1> </strong></p>
  <p>&nbsp;</p>
  
  <table width="100%" border="1" cellpadding="0">
    
    <tr>
         <th width="60" rowspan="3"  scope="col">#</th>
      <th width="30" rowspan="3" scope="col" cellpadding="0"><strong>S.No.</strong></th>
      <th width="48" rowspan="3" scope="col">Date</th>
      <th width="30" rowspan="3" scope="col">Time
    (hr)</th>
      <th width="66" rowspan="3" scope="col">Megger details &amp;S. No. </th>
      <th width="30" rowspan="3" scope="col"><p>Oil Temp</p>
        <p>(C) </p></th>
      <th width="36" rowspan="3" scope="col">M.F.</th>
      <th width="54" rowspan="3" scope="col"><p>Routine/</p>
      <p>Tripping </p></th>
      <th height="25" colspan="15" scope="col">IR VALUES RECORDED </th>
    </tr>
    <tr>
      <th height="33" colspan="5" scope="col">HV-E</th>
      
      <th colspan="5" scope="col">IV-E</th>
   
      <th colspan="5" scope="col">LV - E </th>
     
    </tr>
    <tr>
      <th height="34" scope="col">15 sec </th>
      <th height="34" scope="col">60 sec </th>
      <th height="34" scope="col">600 sec </th>
        <th width="36" rowspan="1" scope="col"><p>PI 600/ 60/15 sec </p>
             <th width="78" rowspan="1" scope="col">I.R. Value(60 sec) converted at 60 celcius </th>
      <th scope="col">15 sec</th>
      <th scope="col">60 sec </th>
      <th scope="col">600 sec </th>
       <th width="36" rowspan="1" scope="col"><p>PI 600/ 60/15 sec </p>
             <th width="78" rowspan="1" scope="col">I.R. Value(60 sec) converted at 60 celcius </th>
      <th scope="col">15 sec</th>
      <th scope="col">60 sec </th>
      <th scope="col">600 sec </th>
       <th width="36" rowspan="1" scope="col"><p>PI 600/ 60/15 sec </p>
             <th width="78" rowspan="1" scope="col">I.R. Value(60 sec) converted at 60 celcius </th>
    </tr>

      <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from ir_values_details_of_transformer_i");%>
<% int i=1;%>
<% if(rs.next()){%>

<tr>
     <% do{%>
<% String s1 = rs.getString("date");%>
<% String s2 = rs.getString("time");%>
<% String s3 = rs.getString("megger_details_and_SNo");%>
<% String s4 = rs.getString("oil_temp");%>
<% String s5 = rs.getString("M_F");%>
<% String s6 = rs.getString("routing_tripping");%>
<% String s7 = rs.getString("HV_15_sec");%>
<% String s8 = rs.getString("HV_60_sec");%>
<% String s9 = rs.getString("HV_600_sec");%>
<% String s10 = rs.getString("HV_PI_600_60_15_sec");%>
<% String s11 = rs.getString("HV_IR_value_converted_at_60_C");%>
<% String s12 = rs.getString("IV_15_sec");%>
<% String s13 = rs.getString("IV_60_sec");%>
<% String s14 = rs.getString("IV_600_sec");%>
<% String s15 = rs.getString("IV_PI_600_60_15_sec");%>
<% String s16 = rs.getString("IV_IR_value_converted_at_60_C");%>
<% String s17 = rs.getString("LV_15_sec");%>
<% String s18 = rs.getString("LV_60_sec");%>
<% String s19 = rs.getString("LV_600_sec");%>
<% String s20 = rs.getString("LV_PI_600_60_15_sec");%>
<% String s21 = rs.getString("LV_IR_value_converted_at_60_C");%>


<th width="56" scope="col"><a href="update.html">edit</a></th>
    <th width="30"  scope="col" cellpadding="0"><strong><%=i%></strong></th>
    <th width="48"  scope="col"><%=s1%></th>
     <th width="30" scope="col"><%=s2%></th>
    <th width="66"  scope="col"><%=s3%></th>
      <th width="30"  scope="col"><%=s4%>  </th>
      <th width="36"  scope="col"><%=s5%></th>
      <th width="54"  scope="col"><%=s6%></th>
      <th height="34" scope="col"><%=s7%></th>
      <th height="34" scope="col"><%=s8%></th>
      <th height="34" scope="col"><%=s9%></th>
       <th width="36"  scope="col"><%=s10%></th>
      <th width="78"  scope="col"><%=s11%></th>
      <th scope="col"><%=s12%></th>
      <th scope="col"><%=s13%></th>
      <th scope="col"><%=s14%></th>
        <th width="36" scope="col"><%=s15%></th>
      <th width="78" scope="col"><%=s16%></th>
      <th scope="col"><%=s17%></th>
      <th scope="col"><%=s18%></th>
      <th scope="col"><%=s19%></th>
      <th width="36"  scope="col"><%=s20%></th>
      <th width="78" scope="col"><%=s21%></th>
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
<h4 align="right"><a href="view_IR VALUES DETAILS OF TRANSFORMER II.jsp">next</a> &gt;&gt;</h4>
</body>
</html>
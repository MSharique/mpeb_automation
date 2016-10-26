<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Transformer Foundation details</title>
       <style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last3.JPG);
}
       </style>
    </head>

<body>
 <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from transformer_foundation_details");%>
<% 
String s1="",s2="",s3="",s4="",s5="",s6="",s7="";

if(rs.next()){%>
<% s1 = rs.getString("Rail_Pole_Gauge");%>
<% s2 = rs.getString("Rail_Pole_Center_to_Center");%>
<% s3 = rs.getString("Rail_Pole_Length_of_Rails");%>
<% s4 = rs.getString("Rail_Pole_Whether_Across_or_Along_the_bus");%>
<% s5 = rs.getString("Foundation_Bearing_Capacity_Main_tank_Foundation");%>
<% s6 = rs.getString("Foundation_Bearing_Capacity_Radiator_Bank_Foundation");%>
<% s7 = rs.getString("Foundation_Bearing_Capacity_Foundation_made_as_per_Drawing");%>
<% }
else
{
    out.println("error");
}%>

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
    <form name="form1" method="post" action="view2_TRANSFORMER_FOUNDATION_DETAILS.jsp">
        
        <table border="2" align="center" >	
            <caption><h2 align="center">Transformer Foundation Details<br></h2></caption>
    <h4>
        <tr>
				
           <th colspan="2">Rail Pole :</th>
        <th colspan="2">Foundation Bearing Capacity :</th>
  </tr>
    <tr>
         <th width="259" colspan>a)Gauge(inner mm):</th>
         <th width="258"> <%=s1%></th>
         <th width="259"> a)Main tank Foundation:</th>
         <th width="258"> <%=s5%>
                            </th>
                 <tr>       					
                 <th>b)Center to 		Center(mm):</th>
                 <th><%=s2%></th>
                 <th>b)Radiator Bank Foundation : </th>
                 <th>
                     		  <%=s6%>
                   </th>
</tr>
                <tr >
                		<th> c)Length of Rails(mm):</th>
                                <th><%=s3%></th>
                        <th height="55" rowspan="2">Foundation made as per Drawing 				(Civil P & D reference Drawing NO.):</th>
                        <th rowspan="2"><%=s7%>
</th></tr>
                 <tr>
                 		<td height="26" rowspan="2">d)Whether(Across/Along) the bus :</td>
                                <td> <%=s4%></td></tr> </h4>     

</h4>
</table>
<% rs.close();%>
<p>&nbsp;</p>
<p>&nbsp;</p>
 <center>
    <p>&nbsp;</p>
</center>
    <center>
    <input type="submit" name="button" id="button" value="Insert Data" />
  </center>
</form>
</body>
</html>

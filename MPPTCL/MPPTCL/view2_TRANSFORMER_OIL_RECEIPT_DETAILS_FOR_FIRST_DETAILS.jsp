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
        <title>TRANSFORMER OIL RECEIPT DETAILS FOR FIRST DETAILS</title>
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
<form method="post" action="view3_TRANSFORMER_OIL_RECEIPT_DETAILS_FOR_FIRST_DETAILS.jsp">
  <table align="center" border="2">
  <h4> 
      <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from transformer_oil_receipt_details_for_first_details");%>
<% if(rs.next()){%>
<% String s1 = rs.getString("Oil_Received_in_Tanker");%>
<% String s2 = rs.getString("Oil_Received_in_Drums_no");%>
<% String s3 = rs.getString("Oil_Received_in_Drums_kl");%>
<% String s4 = rs.getString("10per_Extra_Oil_in_Drum");%>
<% String s5 = rs.getString("Total_Oil_Received");%>
<% String s6 = rs.getString("Name_of_Refinary");%>
 
<caption><h2 align="center" style="font-family:Tahoma, Geneva, sans-serif">
<u>TRANSFORMER OIL RECEIPT DETAILS FOR FIRST DETAILS</u> <br>
<br>
</h2></caption>

    <tr>
	<td width="321" height="26">
    
            Oil Received in Tanker :</td><td width="194"><input type="text" name="1" value="<%=s1%>"/>KL</td>
            
        <td width="337" height="26">Oil Received in Drums : </td><td width="182"><input type="text" name="2" value="<%=s2%>"/>Nos. <input type="text" name="3" value="<%=s3%>"/>KL</td>
        </tr>    	
		<tr>
                    <td height="24">10% Extra Oil in Drum :</td><td><input type="text" name="4" value="<%=s4%>"/>Nos.</td>
                    <td height="24">Total Oil Received :</td><td><input type="text" name="5" value="<%=s5%>"/>KL</td>
      </tr> 
     <tr>
   
<td height="26" align="left"><h4>Name Of Refinary :</h4></td><td colspan="3">
    
    <input type="text" name="6" value="<%=s6%>"/></td></tr>
<% }%>
</table>
</h4>
<% rs.close();%>
<p>&nbsp;</p>
<p>&nbsp;</p>
<center>
    <input type="submit" name="button" id="button" value="update" />
  </center>
  </form>
</body>

</html>

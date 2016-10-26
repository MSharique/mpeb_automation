<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>DETAILS OF SPARES TOOLS TACKLES ETC. RECEIVED WITH TRANSFORMER</title>
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
        <form name="form1" method="post" action="view2_DETAILS_OF_SPARES_TOOLS_TACKLES_ETC._RECEIVED_WITH_TRANSFORMER.jsp">
<table border="2" align="center">
    <h4>
      <div align="center"></div>
    
        <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from details_of_spares_tools_tackles_etc");%>
<% if(rs.next()){%>
<% String s1 = rs.getString("Jacks_Make");%>
<% String s2 = rs.getString("Jacks_Year_of_Manufacture");%>
<% String s3 = rs.getString("Jacks_Capacity");%>
<% String s4 = rs.getString("Jacks_Type");%>
<% String s5 = rs.getString("Set_of_Squares_Size_1");%>
<% String s6 = rs.getString("Set_of_Squares_Size_2");%>
<% String s7 = rs.getString("Set_of_Squares_Size_3");%>
<caption><h2 align="center" style="font-family:Tahoma, Geneva, sans-serif"><u>DETAILS OF SPARES,TOOLS & TACKLES ETC. RECELVED WITH TRANSFORMER</u><br>
  <br>
</h2></caption>
<tr>
		<td colspan="2">
        <div align="center">I. Jacks.</div></td>
        <td colspan="2"><div align="center">II. Set of Squares</div></td>
</tr>


<tr>
    <td width="233"><div align="center">a. Make :</div></td><td width="282"><div align="center"><%=s1%></div></td>
        <td colspan="2"> <div align="center">Size :</div></td>
</tr>
<tr>
		<td><div align="center">b. Year of Manufacture:</div></td><td>
		  <div align="center"><%=s2%></div></td>
        <td width="81"><div align="center">i).</div></td><td width="438">
          <div align="center"><%=s3%></div></td>
</tr>
<tr>
		<td><div align="center">c. Capacity :</div></td><td>
		  <div align="center"><%=s4%></div></td>
        <td> <div align="center">ii).</div></td><td> <div align="center"><%=s5%></div></td>
</tr>
<tr>
		<td><div align="center">d. Type :</div></td><td>
		  <div align="center"><%=s6%></div></td>
        <td> <div align="center">iii).</div></td><td> <div align="center"><%=s7%></div></td>
</tr>
</h4>
<% } %>
</table>
<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4>
<h4>&nbsp;</h4>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<% rs.close(); %>
 <center>
    <p>&nbsp;</p>
</center>
</p>
    <center>
    <input type="submit" name="button" id="button" value="insert" />
  </center>
        </form>
</body>
</html>

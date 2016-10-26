
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TRANSFORMER OIL DISSOLVED GAS ANALYSIS REPORT </title><style type="text/css">

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
      <td><div align="right"><a href="index2.html">back to index</a></div></td>
    </tr>
    <tr>
      <td><div align="right"><a href="index.jsp">logout</a></div></td>
    </tr>
  </table>
</div>
<form id="form1" name="form1" method="post" action="view2_pre_commisioning_test_result_7.jsp">
<body>
<%String st1=new String();%>
<%String st2=new String();%>
<%String st3=new String();%>
<%String st4=new String();%>
<%String s1=new String();%>
<%String s2=new String();%>
<%String s3=new String();%>
<%String s4=new String();%>
<% Class.forName("com.mysql.jdbc.Driver");%>
  <% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
  <% Statement st = con.createStatement();%>
  <% ResultSet rs = st.executeQuery("select * from mpeb_26_1");%>
  <% if(rs.next()){%>
       <% st1=rs.getString("RATIO_TEST_BY");%>
	    <% st2=rs.getString("Make");%>
		<% st3=rs.getString("Type");%>
		<% st4=rs.getString("Meter_SI_No");%>
	  <%}%>
<h4 align="center">RATIO TEST BY <%=st1%>

  Make <%=st2%>

</h4>
<h4 align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Type <%=st3%>

   Meter SI No. <%=st4%>

</h4> 
<table width="665" align="center" border="3">
 
	
    	<tr align="center">
        	<td width="40" rowspan="2">TAP NO.</td>
            <td width="146" colspan="2" rowspan="2">CALCULATED RATIO :</td>
            <td colspan="3">MEASURED RATIO </td>
        </tr>            
            
       
                <tr>
                	<td width="145" align="center">1U-N/2U-N</td>
                    <td width="145" align="center">1V-N/2V-N</td>
                    <td width="146" align="center">1W-N/2W-N</td>
              </tr>

  
  <% int i=1;%>
  <%rs.beforeFirst();%>
  <% if(rs.next()){%>

    <tr>
      <% do{%>
      <%  s1 = rs.getString("CALCULATED_RATIO");%>
      <%  s2 = rs.getString("MEASURED_RATIO_1U_N_2U_N");%>
      <%  s3 = rs.getString("MEASURED_RATIO_1V_N_2V_N");%>
      <%  s4 = rs.getString("MEASURED_RATIO_1W_N_2W_N");%>
      
      <th  scope="col"><div align="center"><%=i%></div></th>
      <th  colspan="2"><div align="center"><%=s1%></div></th>
      <th  scope="col"><div align="center"><%=s2%></div></th>
      <th scope="col"><div align="center"><%=s3%></div></th>
      <th width="60" scope="col"><div align="center"><%=s4%></div></th>
      
      </tr>
    <% i++;%>
    <% }while(rs.next());%>
    <% }%>
    </table>
  <% rs.close();%>
  
</div>
<p>&nbsp;</p>
<p align="center">
  <input type="submit" name="button" id="button" value="insert data">

</p>
<p align="center"><a href=" " onclick="window.print();return false;"><input style="" type="button" value="print" class="textboxclass"></p>
<p align="right">&nbsp;</p>

</body>
</html>
    
            
            
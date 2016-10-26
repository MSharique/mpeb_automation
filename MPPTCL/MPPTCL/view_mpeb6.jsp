<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>


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
<div align="right"></div>
<form id="form1" name="form1" method="post" action="view2_mpeb6.jsp">
<%String s1=new String();%>
<%String s2=new String();%>
<%String s3=new String();%>
<%String s4=new String();%>
<%String s5=new String();%>
<%String s6=new String();%>
<%String s7=new String();%>
<%String s8=new String();%>
<%String s9=new String();%>
<%String s10=new String();%>
<%String s11=new String();%>
<%String s12=new String();%>
<%String s13=new String();%>
<%String s14=new String();%>
<%String s15=new String();%>
<%String s16=new String();%>
<%String s17=new String();%>
<%String s18=new String();%>
<%String s19=new String();%>
<%String s20=new String();%><%String s21=new String();%>
<%String s22=new String();%>
<%String s23=new String();%>
<%String s24=new String();%><%String s25=new String();%>
<%String s26=new String();%>
<%String s27=new String();%>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from technical_administrative_section");%>
<% int i=1;%>
<%if(rs.next()){%>
<%do{%>
<% s1 = rs.getString("FIRST_COMM_DETAILS_Estimate_No");%>
<% s2 = rs.getString("FIRST_COMM_DETAILS_Date");%>
<% s3 = rs.getString("FIRST_COMM_DETAILS_Cost_of_Estimates");%>
<% s4 = rs.getString("FIRST_COMM_DETAILS_Cost_of_work_after_reconcillation_with_RAO");%>
<% s5 = rs.getString("FIRST_COMM_DETAILS_Complition_report_submitted_to");%>
<%  s6 = rs.getString("FIRST_COMM_DETAILS_Complition_report_submitted_vide_letter_no");%>
<%  s7 = rs.getString("FIRST_COMM_DETAILS_Scheme_letter_Funded_by");%>
<%  s8 = rs.getString("FIRST_COMM_DETAILS_New_Replacement_Augmentation_Saction");%>
<%  s9 = rs.getString("FIRST_COMM_DETAILS_Name_of_Sub_station_and_Date_of_Commssioning");%>
<%  s10 = rs.getString("SECOND_COMM_DETAILS_Estimate_No");%>
<%  s11 = rs.getString("SECOND_COMM_DETAILS_Date");%>
<%  s12 = rs.getString("SECOND_COMM_DETAILS_Cost_of_Estimates");%>
<%  s13 = rs.getString("SECOND_COMM_DETAILS_Cost_of_work_after_reconcillation_with_RAO");%>
<%  s14 = rs.getString("SECOND_COMM_DETAILS_Complition_report_submitted_to");%>
<%  s15 = rs.getString("SECOND_COMM_DETAILS_Complition_report_submitted_vide_letter_no");%>
<%  s16 = rs.getString("SECOND_COMM_DETAILS_Scheme_letter_Funded_by");%>
<%  s17 = rs.getString("SECOND_COMM_DETAILS_New_Replacement_Augmentation_Saction");%>
<%  s18 = rs.getString("SECOND_COMM_DETAILS_Name_of_Sub_station_and_Date_of_Commssioning");%>
<%  s19 = rs.getString("THIRD_COMM_DETAILS_Estimate_No");%>
<%  s20 = rs.getString("THIRD_COMM_DETAILS_Date");%>
<%  s21 = rs.getString("THIRD_COMM_DETAILS_Cost_of_Estimates");%>
<%  s22 = rs.getString("THIRD_COMM_DETAILS_Cost_of_work_after_reconcillation_with_RAO");%>
<%  s23 = rs.getString("THIRD_COMM_DETAILS_Complition_report_submitted_to");%>
<%  s24 = rs.getString("THIRD_COMM_DETAILS_Complition_report_submitted_vide_letter_no");%>
<%  s25 = rs.getString("THIRD_COMM_DETAILS_Scheme_letter_Funded_by");%>
<%  s26 = rs.getString("THIRD_COMM_DETAILS_New_Replacement_Augmentation_Saction");%>
<%  s27 = rs.getString("THIRD_COMM_DETAILS_Name_of_Sub_station_and_Date_of_Commssioning");%>
<%i++;
}while(rs.next());
}
%>

<script type='text/javascript' language='javascript' src='/B1D671CF-E532-4481-99AA-19F420D90332/netdefender/hui/ndhui.js?0=0&amp;0=0&amp;0=0'></script>
<p>
<h1 style="font-family:AR JULIAN;" align="center"><u>TECHNICAL/ADMINISTRATIVE SECTION</u></h1></p>





<form >
<P align="center">
<h2 align="center" style="font-family:candara;"><u> FIRST COMMISSIONING DETAILS</u> </h2>
</P>



<p>
<table align="center" border="2" cellspacing="5" width="700">
<h2>
<tr>
	<td> a. Estimate No. :<br> &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Date :</td>
    <td ><%=s1%>
<br><%=s2%></td>
</tr>

<tr>
	<td> b. Cost of Estimates :</td>
    
    
    <td>
<%=s3%></td>
</tr>


<tr>
	<td> c. Cost of work after reconcillation with RAO:</td>
    <td width><%=s4%></td>
    </tr>
    
 <tr>
	<td> d. Complition report submitted to:</td>
    <td><%=s5%></td>
    </tr>
    
    
    <tr>
	<td> e. Complition report submitted vide letter no.:</td>
    <td><%=s6%></td>
    </tr>
    
    <tr>
	<td> f. Scheme letter Funded by:</td>
    <td><%=s7%></td>
    </tr>
    
    <tr>
	<td> g. New Replacement/Augmentation Saction:</td>
    <td><%=s8%></td>
    </tr>
    
    <tr>
	<td> h. Name of Sub-station &amp; Date of Commssioning:</td>
    <td><%=s9%></td>
    </tr></h2>
</table></p>




<P>
<h2 align="center" style="font-family:Candara;"><u>SECOND COMMISSIONING DETAILS</u> </h2>
</P>
<p>
<table align="center" border="2" cellspacing="5" width="700">
<h2>
<tr>
	<td> a. Estimate No. :<br> &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Date :</td>
    <td ><%=s10%>
<br><%=s11%></td>
</tr>

<tr>
	<td> b. Cost of Estimates :</td>
    
    
    <td>
<%=s12%></td>
</tr>


<tr>
	<td> c. Cost of work after reconcillation with RAO:</td>
    <td width><%=s13%></td>
    </tr>
    
 <tr>
	<td> d. Complition report submitted to:</td>
    <td><%=s14%></td>
    </tr>
    
    
    <tr>
	<td> e. Complition report submitted vide letter no.:</td>
    <td><%=s15%></td>
    </tr>
    
    <tr>
	<td> f. Scheme letter Funded by:</td>
    <td><%=s16%></td>
    </tr>
    
    <tr>
	<td> g. New Replacement/Augmentation Saction:</td>
    <td><%=s17%></td>
    </tr>
    
    <tr>
	<td> h. Name of Sub-station &amp; Date of Commssioning:</td>
    <td><%=s18%></td>
    </tr></h2>
</table></p>



<P>
<h2 align="center" style="font-family:candara"><u>THIRD COMMISSIONING DETAILS</u> </h2>
</P>
<p>
<table align="center" border="2" cellspacing="5" width="700">
<h2>
<tr>
	<td> a. Estimate No. :<br> &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Date :</td>
    <td ><%=s19%>
<br><%=s20%>
</tr>

<tr>
	<td> b. Cost of Estimates :</td>
    
    
    <td>
<%=s21%></td>
</tr>


<tr>
	<td> c. Cost of work after reconcillation with RAO:</td>
    <td width><%=s22%></td>
    </tr>
    
 <tr>
	<td> d. Complition report submitted to:</td>
    <td><%=s23%></td>
    </tr>
    
    
    <tr>
	<td> e. Complition report submitted vide letter no.:</td>
    <td><%=s24%></td>
    </tr>
    
    <tr>
	<td> f. Scheme letter Funded by:</td>
    <td><%=s25%></td>
    </tr>
    
    <tr>
	<td> g. New Replacement/Augmentation Saction:</td>
    <td><%=s26%></td>
    </tr>
    
    <tr>
	<td> h. Name of Sub-station &amp; Date of Commssioning:</td>
    <td><%=s27%></td>
    </tr></h2>
</table></p>
</center>
</table>
<% rs.close();%>
<table width="880" align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="update">
</td>
</tr>
</table>

</form>
</body>
</html>


</form>   







</body>
</html>

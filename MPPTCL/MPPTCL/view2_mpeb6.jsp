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
	background-image: url(last3.jpg);
}
</style>

</head>
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
<body bgcolor="lavender">
<form id="form1" name="form1" method="post" action="view3_mpeb6.jsp">
  <!DOCTYPE HTML>
  
  
  
  
  
  
  
  <body><script type='text/javascript' language='javascript' src='/B1D671CF-E532-4481-99AA-19F420D90332/netdefender/hui/ndhui.js?0=0&amp;0=0&amp;0=0'></script>
<p>
<h1 style="font-family:AR JULIAN;" align="center"><u>TECHNICAL/ADMINISTRATIVE SECTION</u></h1></p>






<P align="center">
<h2 align="center" style="font-family:candara;"><u> FIRST COMMISSIONING DETAILS</u> </h2>
</P>



<p>
<table align="center" border="2" cellspacing="5" width="700">
<h2>
<tr>
	<td> a. Estimate No. :<br> &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Date :</td>
    <td ><input  type="text"  id=" Estimate No.& date" size="42" name="1" value="<%=s1%>" >
<br><input type="date"  id="date" size="42" name="2" value="<%=s2%>"></td>
</tr>

<tr>
	<td> b. Cost of Estimates :</td>
    
    
    <td>
<input name="3" type="text" id="3" size="42" value="<%=s3%>"></td>
</tr>


<tr>
	<td> c. Cost of work after reconcillation with RAO:</td>
    <td width><input name="4" type="text" id="4" size="42" value="<%=s4%>"></td>
    </tr>
    
 <tr>
	<td> d. Complition report submitted to:</td>
    <td><input name="5" type="text" id="5" size="42" value="<%=s5%>"></td>
    </tr>
    
    
    <tr>
	<td> e. Complition report submitted vide letter no.:</td>
    <td><input name="6" type="text" id="6" size="42" value="<%=s6%>"></td>
    </tr>
    
    <tr>
	<td> f. Scheme letter Funded by:</td>
    <td><input name="7" type="text" id="7" size="42" value="<%=s7%>"></td>
    </tr>
    
    <tr>
	<td> g. New Replacement/Augmentation Saction:</td>
    <td><input name="8" type="text" id="8"  size="42" value="<%=s8%>"></td>
    </tr>
    
    <tr>
	<td> h. Name of Sub-station &amp; Date of Commssioning:</td>
    <td><input name="9" type="text" id="9"  size="42" value="<%=s9%>"></td>
    </tr></h2>
</table></p>




<P>
<h2 align="center" style="font-family:Candara;"><u>SECOND COMMISSIONING DETAILS</u> </h2>
</P>
<p>
<table align="center" border="2" cellspacing="5" width="700">
<h2>
<tr>
	<td> a. Estimate No. :<br> &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Date :</td>
    <td ><input name="10" type="text"  id=" Estimate No.& date" size="42" value="<%=s10%>">
<br><input name="11" type="date"  id="date" size="42" value="<%=s11%>"></td>
</tr>

<tr>
	<td> b. Cost of Estimates :</td>
    
    
    <td>
<input name="12" type="text" id="12" size="42" value="<%=s12%>"></td>
</tr>


<tr>
	<td> c. Cost of work after reconcillation with RAO:</td>
    <td width><input name="13" type="text" id="13" size="42" value="<%=s13%>"></td>
    </tr>
    
 <tr>
	<td> d. Complition report submitted to:</td>
    <td><input name="14" type="text" id="14" size="42" value="<%=s14%>"></td>
    </tr>
    
    
    <tr>
	<td> e. Complition report submitted vide letter no.:</td>
    <td><input name="15" type="text" id="15" size="42" value="<%=s15%>"></td>
    </tr>
    
    <tr>
	<td> f. Scheme letter Funded by:</td>
    <td><input name="16" type="text" id="16" size="42" value="<%=s16%>"></td>
    </tr>
    
    <tr>
	<td> g. New Replacement/Augmentation Saction:</td>
    <td><input name="17" type="text" id="17"  size="42" value="<%=s17%>"></td>
    </tr>
    
    <tr>
	<td> h. Name of Sub-station &amp; Date of Commssioning:</td>
    <td><input name="18" type="text" id="18"  size="42" value="<%=s18%>"></td>
    </tr></h2>
</table></p>



<P>
<h2 align="center" style="font-family:candara"><u>THIRD COMMISSIONING DETAILS</u> </h2>
</P>
<p>
<table align="center" border="2" cellspacing="5" width="700">
<h2>
<tr>
	<td> a. Estimate No. :<br> &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Date :</td>
    <td ><input name="19" type="text"  id=" Estimate No.& date" size="42" value="<%=s19%>">
<br><input name="20" type="date"  id="date" size="42" value="<%=s20%>"></td>
</tr>

<tr>
	<td> b. Cost of Estimates :</td>
    
    
    <td>
<input name="21" type="text" id="21" size="42" value="<%=s21%>"></td>
</tr>


<tr>
	<td> c. Cost of work after reconcillation with RAO:</td>
    <td width><input name="22" type="text" id="22" size="42" value="<%=s22%>"></td>
    </tr>
    
 <tr>
	<td> d. Complition report submitted to:</td>
    <td><input name="23" type="text" id="23" size="42" value="<%=s23%>"></td>
    </tr>
    
    
    <tr>
	<td> e. Complition report submitted vide letter no.:</td>
    <td><input name="24" type="text" id="24" size="42" value="<%=s24%>"></td>
    </tr>
    
    <tr>
	<td> f. Scheme letter Funded by:</td>
    <td><input name="25" type="text" id="25" size="42" value="<%=s25%>"></td>
    </tr>
    
    <tr>
	<td> g. New Replacement/Augmentation Saction:</td>
    <td><input name="26" type="text" id="26"  size="42" value="<%=s26%>"></td>
    </tr>
    
    <tr>
	<td> h. Name of Sub-station &amp; Date of Commssioning:</td>
    <td><input name="27" type="text" id="27"  size="42" value="<%=s27%>"></td>
    </tr></h2>
</table></p>

<table width="880" bgcolor="#EEEEEE" align="center" >
<tr> <td width="880" height="46" align="center"><input type="submit" name="submit" value="save">
</td>
</tr>
</table>

</form>   
</body>
</html>

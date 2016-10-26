<%@page import= "java.io.*"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>winding ressistance measurement</title>
 <style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last3.JPG);
}
       </style>
</head>
<p>&nbsp;</p>
<p>&nbsp;</p>
  <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from induce_voltage");%>
<% int i=1,p=3;%>
<%String s1=new String();
String s2=new String();
String s3=new String();
String s4=new String();
String s5=new String();
String s6=new String();
String s7=new String();
String s8=new String();
String s9=new String();
String s10=new String();
String s11=new String();
String s12=new String();
String s13=new String();
String s14=new String();
String s15=new String();
String s16=new String();
String s17=new String();
String s18=new String();
String s19=new String();
String s20=new String();
String s21=new String();
String s22=new String();
String s23=new String();
String s24=new String();
String s25=new String();
String s26=new String();
String s27=new String();
String s28=new String();
String s29=new String();
String s30=new String();


%>
<% if(rs.next()){%>

  
  <% do{%>
<%s1 = rs.getString("test1");%>
<%s2 = rs.getString("sup1");%>
<%s3 = rs.getString("ter1");%>
<%s4 = rs.getString("freq1");%>
<%s5 = rs.getString("time1");%>
<%s6 = rs.getString("res1");%>
<%s7 = rs.getString("test2");%>
<%s8 = rs.getString("sup2");%>
<%s9 = rs.getString("ter2");%>
<% s10 = rs.getString("freq2");%>
<% s11 = rs.getString("time2");%>
<% s12 = rs.getString("res2");%>
<% s13 = rs.getString("test3");%>
<% s14 = rs.getString("sup3");%>
<%s15 = rs.getString("ter3");%>
<%s16 = rs.getString("freq3");%>
<%s17 = rs.getString("time3");%>
<%s18 = rs.getString("res3");%>
<%s19 = rs.getString("test4");%>
<%s20 = rs.getString("sup4");%>
<%s21 = rs.getString("ter4");%>
<%s22 = rs.getString("freq4");%>
<%s23 = rs.getString("time4");%>
<%s24 = rs.getString("res4");%>
<%s25 = rs.getString("test5");%>
<%s26 = rs.getString("sup5");%>
<%s27 = rs.getString("ter5");%>
<%s28 = rs.getString("freq5");%>
<%s29 = rs.getString("time5");%>
<%s30 = rs.getString("res5");%>



  <% i++;%>
<% }while(rs.next());%>
<% }%>
<form name="form1" method="post" action="view2_induced_over_voltage.jsp">
<h1 align="center">INDUCED OVER VOLTAGE</h1>
<p align="center">Test Tap position on HV Tap No.</p>
<div align="center">
  <table width="730" height="194" border="1">
    <tr>
      <td height="23" colspan="3"><div align="center">Termional condition during test</div></td>
      <td width="115" rowspan="2"><div align="center">Test Frequency</div></td>
      <td width="115" rowspan="2"><div align="center">Test Duration</div></td>
      <td width="115" rowspan="2"><div align="center">Result</div></td>
    </tr>
    <tr>
      <td width="111" height="23"><div align="center">Phase under test</div></td>
      <td width="108"><div align="center">Supply across</div></td>
      <td width="126"><div align="center">Terminal Grounded </div></td>
      </tr>
    <tr>
      <td height="26"><%=s1%></td>
      <td><%=s2%></td>
      <td><%=s3%></td>
      <td><%=s4%></td>
      <td><%=s5%></td>
      <td><%=s6%></td>
    </tr>
    <tr>
      <td height="26"><%=s7%></td>
      <td><%=s8%></td>
      <td><%=s9%></td>
      <td><%=s10%></td>
      <td><%=s11%></td>
      <td><%=s12%></td>
    </tr>
    <tr>
      <td height="26"><%=s13%></td>
      <td><%=s14%></td>
      <td><%=s15%></td>
      <td><%=s16%></td>
      <td><%=s17%></td>
      <td><%=s18%></td>
    </tr>
    <tr>
      <td height="26"><%=s19%></td>
      <td><%=s20%></td>
      <td><%=s21%></td>
      <td><%=s22%></td>
      <td><%=s23%></td>
      <td><%=s24%></td>
    </tr>
    <tr>
      <td height="26"><%=s25%></td>
      <td><%=s26%></td>
      <td><%=s27%></td>
      <td><%=s28%></td>
      <td><%=s29%></td>
      <td><%=s30%></td>
    </tr>
  </table>
</div>
<p align="center">&nbsp;</p>

  <div align="center">
    <input type="submit" name="update data" id="update data" value="insert">
  </div>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</form>
</html>





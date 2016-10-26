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
	background-image: url(last4.JPG);
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
<form name="form1" method="post" action="view3_induced_over_voltage.jsp">
<h1 align="center">INDUCED OVER VOLTAGE</h1>
<p align="left">Test Tap position on HV Tap No.</p>
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
      <td height="26"><label for="textfield"></label>
        <input name="1" type="text" id="textfield" size="20" value="<%=s1%>"></td>
      <td><input name="2" type="text" id="textfield2" size="20" value="<%=s2%>"></td>
      <td><input name="3" type="text" id="textfield3" size="20" value="<%=s3%>"> </td>
      <td><input name="4" type="text" id="textfield4" size="20" value="<%=s4%>"></td>
      <td><input name="5" type="text" id="textfield5" size="20" value="<%=s5%>"></td>
      <td><input name="6" type="text" id="textfield6" size="20" value="<%=s6%>"></td>
    </tr>
    <tr>
      <td height="26"><input name="7" type="text" id="textfield7" size="20" value="<%=s7%>"></td>
      <td><input name="8" type="text" id="textfield8" size="20" value="<%=s8%>"></td>
      <td><input name="9" type="text" id="textfield9" size="20" value="<%=s9%>"></td>
      <td><input name="10" type="text" id="textfield10" size="20" value="<%=s10%>"></td>
      <td><input name="11" type="text" id="textfield11" size="20" value="<%=s11%>"></td>
      <td><input name="12" type="text" id="textfield12" size="20" value="<%=s12%>"></td>
    </tr>
    <tr>
      <td height="26"><input name="13" type="text" id="textfield13" size="20" value="<%=s13%>"></td>
      <td><input name="14" type="text" id="textfield14" size="20" value="<%=s14%>"></td>
      <td><input name="15" type="text" id="textfield15" size="20" value="<%=s15%>"></td>
      <td><input name="16" type="text" id="textfield16" size="20" value="<%=s16%>"></td>
      <td><input name="17" type="text" id="textfield17" size="20" value="<%=s17%>"></td>
      <td><input name="18" type="text" id="textfield18" size="20" value="<%=s18%>"></td>
    </tr>
    <tr>
      <td height="26"><input name="19" type="text" id="textfield19" size="20" value="<%=s19%>"></td>
      <td><input name="20" type="text" id="textfield20" size="20" value="<%=s20%>"></td>
      <td><input name="21" type="text" id="textfield21" size="20" value="<%=s21%>"></td>
      <td><input name="22" type="text" id="textfield22" size="20" value="<%=s22%>"></td>
      <td><input name="23" type="text" id="textfield23" size="20" value="<%=s23%>"></td>
      <td><input name="24" type="text" id="textfield24" size="20" value="<%=s24%>"></td>
    </tr>
    <tr>
      <td height="26"><input name="25" type="text" id="textfield25" size="20" value="<%=s25%>"></td>
      <td><input name="26" type="text" id="textfield26" size="20" value="<%=s26%>"></td>
      <td><input name="27" type="text" id="textfield27" size="20" value="<%=s27%>"></td>
      <td><input name="28" type="text" id="textfield28" size="20" value="<%=s28%>"></td>
      <td><input name="29" type="text" id="textfield29" size="20" value="<%=s29%>"></td>
      <td><input name="30" type="text" id="textfield30" size="20" value="<%=s30%>"></td>
    </tr>
  </table>
</div>
<p align="center">&nbsp;</p>

  <div align="center">
    <input type="submit" name="update data" id="update data" value="save">
  </div>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</form>
</html>





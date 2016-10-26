<%@page import= "java.io.*"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>


<title>winding ressistance measurement</title>
 <style type="text/css">
body,td,th {
	color: #000;
}
body {
	background-image: url(last4);
}
       </style>
<p>&nbsp;</p>
<p>&nbsp;</p>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from wind_res_measur");%>
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

%>
<% if(rs.next()){%>

  
  <% do{%>
<%s1 = rs.getString("oil_temp");%>
<%s2 = rs.getString("res");%>
<%s3 = rs.getString("first_tap");%>
<%s4 = rs.getString("nor_tap");%>
<%s5 = rs.getString("last_tap");%>
<%s6 = rs.getString("hv_n_first");%>
<%s7 = rs.getString("hv_n_nor");%>
<%s8 = rs.getString("hv_n_last");%>
<%s9 = rs.getString("iv_n_first");%>
<% s10 = rs.getString("lv_n_first");%>
<% s11 = rs.getString("iv_n_nor");%>
<% s12 = rs.getString("lv_n_nor");%>
<% s13 = rs.getString("iv_n_last");%>
<% s14 = rs.getString("lv_n_last");%>



  <% i++;%>
<% }while(rs.next());%>
<% }%>
<form name="form1" method="post" action="view3_winding_resistance_measurement.jsp">
<h1 align="center">WINDING RESISTANCE MEASUREMENT</h1>
<div align="center">
  <table width="410" height="57" border="1">
    <tr>
      <td width="254" height="23">Average oil Temperature ( in celcius)</td>
      <td width="140">
        <label for="textfield"></label>
        <input name="1" type="text" id="textfield" value="<%=s1%>">
     </td>
    </tr>
    <tr>
      <td height="23">Average Ressistance/Ph </td>
      <td><label for="textfield2"></label>
      <input name="2" type="text" id="textfield2" value="<%=s2%>"></td>
    </tr>
  </table>
</div>
<p align="center">&nbsp;</p>
<div align="center">
  <table width="499" height="113" border="1">
    <tr>
      <td width="105" height="23">#</td>
      <td width="90">Tap No.</td>
      <td width="90">HV-N</td>
      <td width="90">IV-N</td>
      <td width="90">LV</td>
    </tr>
    <tr>
      <td height="26">First Tap</td>
      <td><input name="3" type="text" id="textfield3" value="<%=s3%>" size="15"></td>
      <td><input name="6" type="text" id="textfield6" value="<%=s4%>" size="15"></td>
      <td><input name="9" type="text" id="textfield9" value="<%=s5%>" size="15"></td>
      <td><input name="12" type="text" id="textfield12" value="<%=s6%>" size="15"></td>
    </tr>
    <tr>
      <td height="26">Normal Tap</td>
      <td><input name="4" type="text" id="textfield4" value="<%=s7%>" size="15"></td>
      <td><input name="7" type="text" id="textfield7" value="<%=s8%>" size="15"></td>
      <td><input name="10" type="text" id="textfield10" value="<%=s9%>" size="15"></td>
      <td><input name="13" type="text" id="textfield13" value="<%=s10%>" size="15"></td>
    </tr>
    <tr>
      <td height="26">Last Tap</td>
      <td><input name="5" type="text" id="textfield5" value="<%=s11%>" size="15"></td>
      <td><input name="8" type="text" id="textfield8" value="<%=s12%>" size="15"></td>
      <td><input name="11" type="text" id="textfield11" value="<%=s13%>" size="15"></td>
      <td><input name="14" type="text" id="textfield14" value="<%=s14%>" size="15"></td>
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





<%@page import= "java.io.*"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BUSHING DETAILS</title>
<style type="text/css">
body {
	background-image: url(last4.JPG);
}
</style>
</head>

<body>
 <% Class.forName("com.mysql.jdbc.Driver");%>
<% Connection con = DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");%>
<% Statement st = con.createStatement();%>
<% ResultSet rs = st.executeQuery("select * from bushing_detail");%>
<% int i=1;%>
<% String s1 = new String();%>
<% String s2 = new String();%>
<% String s3 = new String();%>
<% String s4 = new String();%>
<% String s5 = new String();%>
<% String s6 = new String();%>
<% String s7 = new String();%>
<% String s8 = new String();%>
<% String s9 = new String();%>
<% String s10 = new String();%>
<% String s11 = new String();%>
<% String s12 = new String();%>
<% String s13 = new String();%>
<% String s14 = new String();%>
<% String s15 = new String();%>
<% String s16 = new String();%>
<% String s17 = new String();%>
<% String s18 = new String();%>
<% String s19 = new String();%>
<% String s20 = new String();%>
<% String s21 = new String();%>
<% String s22 = new String();%>
<% String s23 = new String();%>
<% String s24 = new String();%>
<% String s25 = new String();%>
<% String s26 = new String();%>
<% String s27 = new String();%>
<% String s28 = new String();%>
<% String s29 = new String();%>
<% String s30 = new String();%>
<% String s31 = new String();%>
<% String s32 = new String();%>
<% String s33 = new String();%>
<% String s34 = new String();%>
<% String s35 = new String();%>
<% String s36 = new String();%>
<% String s37 = new String();%>
<% String s38 = new String();%>
<% String s39 = new String();%>
<% String s40 = new String();%>
<% String s41 = new String();%>
<% String s42 = new String();%>
<% String s43 = new String();%>
<% String s44 = new String();%>
<% String s45 = new String();%>
<% String s46 = new String();%>
<% String s47 = new String();%>
<% String s48 = new String();%>
<% String s49 = new String();%>
<% String s50 = new String();%>
<% String s51 = new String();%>
<% String s52 = new String();%>
<% String s53 = new String();%>
<% String s54 = new String();%>
<% String s55 = new String();%>
<% String s56 = new String();%>
<% String s57 = new String();%>
<% String s58 = new String();%>
<% String s59 = new String();%>
<% String s60 = new String();%>
<% String s61 = new String();%>
<% String s62 = new String();%>
<% String s63 = new String();%>
<% String s64 = new String();%>
<% String s65 = new String();%>
<% String s66 = new String();%>
<% String s67 = new String();%>
<% String s68 = new String();%>
<% String s69 = new String();%>
<% String s70 = new String();%>
<% String s71 = new String();%>
<% String s72 = new String();%>
<% String s73 = new String();%>
<% String s74 = new String();%>
<% String s75 = new String();%>
<% String s76 = new String();%>
<% String s77 = new String();%>
<% String s78 = new String();%>
<% String s79 = new String();%>
<% String s80 = new String();%>
<% String s81 = new String();%>
<% String s82 = new String();%>
<% String s83 = new String();%>
<% String s84 = new String();%>
<% String s85 = new String();%>
<% String s86 = new String();%>
<% String s87 = new String();%>
<% String s88 = new String();%>
<% String s89 = new String();%>
<% String s90 = new String();%>
<% String s91 = new String();%>
<% String s92 = new String();%>
<% String s93 = new String();%>
<% String s94 = new String();%>
<% String s95 = new String();%>
<% String s96 = new String();%>
<% String s97 = new String();%>
<% String s98 = new String();%>
<% String s99 = new String();%>
<% String s100 = new String();%>
<% String s101 = new String();%>
<% String s102 = new String();%>
<% String s103 = new String();%>
<% String s104 = new String();%>
<% String s105 = new String();%>
<% String s106 = new String();%>
<% String s107 = new String();%>
<% String s108 = new String();%>
<% String s109 = new String();%>
<% String s110 = new String();%>
<% String s111 = new String();%>
<% String s112 = new String();%>
<% String s113 = new String();%>
<% String s114 = new String();%>
<% String s115 = new String();%>
<% String s116 = new String();%>
<% String s117 = new String();%>
<% String s118 = new String();%>
<% String s119 = new String();%>
<% String s120 = new String();%>
<% String s121 = new String();%>
<% String s122 = new String();%>
<% String s123 = new String();%>
<% String s124 = new String();%>
<% String s125 = new String();%>
<% String s126 = new String();%>
<% String s127 = new String();%>
<% String s128 = new String();%>
<% String s129 = new String();%>
<% String s130 = new String();%>
<% String s131 = new String();%>
<% String s132 = new String();%>
<% String s133 = new String();%>
<% String s134 = new String();%>
<% String s135 = new String();%>
<% String s136 = new String();%>
<% String s137 = new String();%>
<% String s138 = new String();%>
<% String s139 = new String();%>
<% String s140 = new String();%>
<% String s141 = new String();%>
<% String s142 = new String();%>
<% String s143 = new String();%>
<% String s144 = new String();%>
<% String s145 = new String();%>
<% String s146 = new String();%>
<% String s147 = new String();%>
<% String s148 = new String();%>
<% String s149 = new String();%>
<% String s150 = new String();%>
<% String s151 = new String();%>
<% String s152 = new String();%>
<% String s153 = new String();%>
<% String s154 = new String();%>
<% String s155 = new String();%>
<% String s156 = new String();%>
<% String s157 = new String();%>
<% String s158 = new String();%>
<% String s159 = new String();%>
<% String s160 = new String();%>
<% String s161 = new String();%>
<% String s162 = new String();%>
<% String s163 = new String();%>
<% String s164 = new String();%>
<% String s165 = new String();%>
<% String s166 = new String();%>
<% String s167 = new String();%>
<% String s168 = new String();%>
<% String s169 = new String();%>
<% String s170 = new String();%>
<% String s171 = new String();%>
<% String s172 = new String();%>
<% String s173 = new String();%>
<% String s174 = new String();%>
<% String s175 = new String();%>
<% String s176 = new String();%>
<% String s177 = new String();%>
<% String s178 = new String();%>
<% String s179 = new String();%>
<% String s180 = new String();%>
<% String s181 = new String();%>
<% String s182 = new String();%>
<% String s183 = new String();%>
<% String s184 = new String();%>
<% String s185 = new String();%>
<% String s186 = new String();%>
<% String s187 = new String();%>
<% String s188 = new String();%>
<% String s189 = new String();%>
<% String s190 = new String();%>
<% String s191 = new String();%>
<% String s192 = new String();%>
<% String s193 = new String();%>
<% String s194 = new String();%>
<% String s195 = new String();%>
<% String s196 = new String();%>
<% String s197 = new String();%>
<% String s198 = new String();%>
<% String s199 = new String();%>
<% String s200 = new String();%>
<% String s201 = new String();%>
<% String s202 = new String();%>
<% String s203 = new String();%>
<% String s204 = new String();%>
<% String s205 = new String();%>
<% String s206 = new String();%>
<% String s207 = new String();%>
<% String s208 = new String();%>
<% String s209 = new String();%>
<% String s210 = new String();%>
<% String s211 = new String();%>
<% String s212 = new String();%>
<% String s213 = new String();%>
<% String s214 = new String();%>
<% String s215 = new String();%>
<% String s216 = new String();%>
<% String s217 = new String();%>
<% String s218 = new String();%>
<% String s219 = new String();%>
<% String s220 = new String();%>


<form id="form1" name="form1" method="post" action="view2_BUSHING DETAILS.jsp">
<% if(rs.next()){%>

  
  <% do{%>
<% s1 = rs.getString("Type1u");%>
<%s2 = rs.getString("Type1v");%>
<%s3 = rs.getString("Type1w");%>
<%s4 = rs.getString("Typenb");%>
<%s5 = rs.getString("Type2u");%>
<%s6 = rs.getString("Type2v");%>
<%s7 = rs.getString("Type2w");%>
<%s8 = rs.getString("Type3u");%>
<%s9 = rs.getString("Type3v");%>
<%s10 = rs.getString("Type3w");%>
<%s11 = rs.getString("ref_s1u");%>
<%s12 = rs.getString("ref_s1v");%>
<%s13 = rs.getString("ref_s1w");%>
<%s14 = rs.getString("ref_snb");%>
<%s15 = rs.getString("ref_s2u");%>
<%s16 = rs.getString("ref_s2v");%>
<%s17 = rs.getString("ref_s2w");%>
<%s18 = rs.getString("ref_s3u");%>
<%s19 = rs.getString("ref_s3v");%>
<%s20 = rs.getString("ref_s3w");%>
<%s21 = rs.getString("volt1u");%>
<%s22 = rs.getString("volt1v");%>
<%s23 = rs.getString("volt1w");%>
<%s24 = rs.getString("voltnb");%>
<%s25 = rs.getString("volt2u");%>
<%s26 = rs.getString("volt2v");%>
<%s27 = rs.getString("volt2w");%>
<%s28 = rs.getString("volt3u");%>
<%s29 = rs.getString("volt3v");%>
<%s30 = rs.getString("volt3w");%>
<%s31 = rs.getString("cur1u");%>
<%s32 = rs.getString("cur1v");%>
<%s33 = rs.getString("cur1w");%>
<%s34 = rs.getString("curnb");%>
<%s35 = rs.getString("cur2u");%>
<%s36 = rs.getString("cur2v");%>
<%s37 = rs.getString("cur2w");%>
<%s38 = rs.getString("cur3u");%>
<%s39 = rs.getString("cur3v");%>
<%s40 = rs.getString("cur3w");%>
<%s41 = rs.getString("sn1u");%>
<%s42 = rs.getString("sn1v");%>
<%s43 = rs.getString("sn1w");%>
<%s44 = rs.getString("snnb");%>
<%s45 = rs.getString("sn2u");%>
<%s46 = rs.getString("sn2v");%>
<%s47 = rs.getString("sn2w");%>
<%s48 = rs.getString("sn3u");%>
<%s49 = rs.getString("sn3v");%>
<%s50 = rs.getString("sn3w");%>
<%s51 = rs.getString("imp1u");%>
<%s52 = rs.getString("imp1v");%>
<%s53 = rs.getString("imp1w");%>
<%s54 = rs.getString("impnb");%>
<%s55 = rs.getString("imp2u");%>
<%s56 = rs.getString("imp2v");%>
<%s57 = rs.getString("imp2w");%>
<%s58 = rs.getString("imp3u");%>
<%s59 = rs.getString("imp3v");%>
<%s60 = rs.getString("imp3w");%>
<%s61 = rs.getString("minvolt1u");%>
<%s62 = rs.getString("minvolt1v");%>
<%s63 = rs.getString("minvolt1w");%>
<%s64 = rs.getString("minvoltnb");%>
<%s65 = rs.getString("minvolt2u");%>
<%s66 = rs.getString("minvolt2v");%>
<%s67 = rs.getString("minvolt2w");%>
<%s68 = rs.getString("minvolt3u");%>
<%s69 = rs.getString("minvolt3v");%>
<%s70 = rs.getString("minvolt3w");%>
<%s71 = rs.getString("lvl1u");%>
<%s72 = rs.getString("lvl1v");%>
<%s73 = rs.getString("lvl1w");%>
<%s74 = rs.getString("lvlnb");%>
<%s75 = rs.getString("lvl2u");%>
<%s76 = rs.getString("lvl2v");%>
<%s77 = rs.getString("lvl2w");%>
<%s78 = rs.getString("lvl3u");%>
<%s79 = rs.getString("lvl3v");%>
<%s80 = rs.getString("lvl3w");%>
<%s81 = rs.getString("rat1u");%>
<%s82 = rs.getString("rat1v");%>
<%s83 = rs.getString("rat1w");%>
<%s84 = rs.getString("ratnb");%>
<%s85 = rs.getString("rat2u");%>
<%s86 = rs.getString("rat2v");%>
<%s87 = rs.getString("rat2w");%>
<%s88 = rs.getString("rat3u");%>
<%s89 = rs.getString("rat3v");%>
<%s90 = rs.getString("rat3w");%>
<%s91 = rs.getString("freq1u");%>
<%s92 = rs.getString("freq1v");%>
<%s93 = rs.getString("freq1w");%>
<%s94 = rs.getString("freqnb");%>
<%s95 = rs.getString("freq2u");%>
<%s96 = rs.getString("freq2v");%>
<%s97 = rs.getString("freq2w");%>
<%s98 = rs.getString("freq3u");%>
<%s99 = rs.getString("freq3v");%>
<%s100 = rs.getString("freq3w");%>
<%s101 = rs.getString("dis1u");%>
<%s102 = rs.getString("dis1v");%>
<%s103 = rs.getString("dis1w");%>
<%s104 = rs.getString("disnb");%>
<%s105 = rs.getString("dis2u");%>
<%s106 = rs.getString("dis2v");%>
<%s107 = rs.getString("dis2w");%>
<%s108 = rs.getString("dis3u");%>
<%s109 = rs.getString("dis3v");%>
<%s110 = rs.getString("dis3w");%>
<%s111 = rs.getString("year1u");%>
<%s112 = rs.getString("year1v");%>
<%s113 = rs.getString("year1w");%>
<%s114 = rs.getString("yearnb");%>
<%s115 = rs.getString("year2u");%>
<%s116 = rs.getString("year2v");%>
<%s117 = rs.getString("year2w");%>
<%s118 = rs.getString("year3u");%>
<%s119 = rs.getString("year3v");%>
<%s120 = rs.getString("year3w");%>
<%s121 = rs.getString("max1u");%>
<%s122 = rs.getString("max1v");%>
<%s123 = rs.getString("max1w");%>
<%s124 = rs.getString("maxnb");%>
<%s125 = rs.getString("max2u");%>
<%s126 = rs.getString("max2v");%>
<%s127 = rs.getString("max2w");%>
<%s128 = rs.getString("max3u");%>
<%s129 = rs.getString("max3v");%>
<%s130 = rs.getString("max3w");%>
<%s131 = rs.getString("style1u");%>
<%s132 = rs.getString("style1v");%>
<%s133 = rs.getString("style1w");%>
<%s134 = rs.getString("stylenb");%>
<%s135 = rs.getString("style2u");%>
<%s136 = rs.getString("style2v");%>
<%s137 = rs.getString("style2w");%>
<%s138 = rs.getString("style3u");%>
<%s139 = rs.getString("style3v");%>
<%s140 = rs.getString("style3w");%>
<%s141 = rs.getString("oil1u");%>
<%s142 = rs.getString("oil1v");%>
<%s143 = rs.getString("oil1w");%>
<%s144 = rs.getString("oilnb");%>
<%s145 = rs.getString("oil2u");%>
<%s146 = rs.getString("oil2v");%>
<%s147 = rs.getString("oil2w");%>
<%s148 = rs.getString("oil3u");%>
<%s149 = rs.getString("oil3v");%>
<%s150 = rs.getString("oil3w");%>
<%s151 = rs.getString("weight1u");%>
<%s152 = rs.getString("weight1v");%>
<%s153 = rs.getString("weight1w");%>
<%s154 = rs.getString("weightnb");%>
<%s155 = rs.getString("weight2u");%>
<%s156 = rs.getString("weight2v");%>
<%s157 = rs.getString("weight2w");%>
<%s158 = rs.getString("weight3u");%>
<%s159 = rs.getString("weight3v");%>
<%s160 = rs.getString("weight3w");%>
<%s161 = rs.getString("test1u");%>
<%s162 = rs.getString("test1v");%>
<%s163 = rs.getString("test1w");%>
<%s164 = rs.getString("testnb");%>
<%s165 = rs.getString("test2u");%>
<%s166 = rs.getString("test2v");%>
<%s167 = rs.getString("test2w");%>
<%s168 = rs.getString("test3u");%>
<%s169 = rs.getString("test3v");%>
<%s170 = rs.getString("test3w");%>
<%s171 = rs.getString("cap1u");%>
<%s172 = rs.getString("cap1v");%>
<%s173 = rs.getString("cap1w");%>
<%s174 = rs.getString("capnb");%>
<%s175 = rs.getString("cap2u");%>
<%s176 = rs.getString("cap2v");%>
<%s177 = rs.getString("cap2w");%>
<%s178 = rs.getString("cap3u");%>
<%s179 = rs.getString("cap3v");%>
<%s180 = rs.getString("cap3w");%>
<%s181 = rs.getString("tan1u");%>
<%s182 = rs.getString("tan1v");%>
<%s183 = rs.getString("tan1w");%>
<%s184 = rs.getString("tannb");%>
<%s185 = rs.getString("tan2u");%>
<%s186 = rs.getString("tan2v");%>
<%s187 = rs.getString("tan2w");%>
<%s188 = rs.getString("tan3u");%>
<%s189 = rs.getString("tan3v");%>
<%s190 = rs.getString("tan3w");%>
<%s191 = rs.getString("ir1u");%>
<%s192 = rs.getString("ir1v");%>
<%s193 = rs.getString("ir1w");%>
<%s194 = rs.getString("irnb");%>
<%s195 = rs.getString("ir2u");%>
<%s196 = rs.getString("ir2v");%>
<%s197 = rs.getString("ir2w");%>
<%s198 = rs.getString("ir3u");%>
<%s199 = rs.getString("ir3v");%>
<%s200 = rs.getString("ir3w");%>







  <% i++;%>
<% }while(rs.next());%>
<% }%>

<form id="form1" name="form1" method="post" action="view3_BUSHING DETAILS.jsp">
<h1 align="center">BUSHING DETAILS</h1>
<div align="center">
  <table width="1093" height="684" border="1">
    <tr>
      <td width="37" rowspan="2"><div align="center">S.No.</div></td>
      <td width="380" rowspan="2"><div align="center">#</div></td>
      <td colspan="3"><div align="center">V Bushing </div></td>
      <td width="60" rowspan="2"><div align="center">Neutral Bushing</div></td>
      <td colspan="3"><div align="center">IV Bushing</div></td>
      <td colspan="3"><div align="center">LV Bushing</div></td>
    </tr>
    <tr>
      <td width="60" height="23"><div align="center">1U</div></td>
      <td width="60"><div align="center">1V</div></td>
      <td width="60"><div align="center">1W</div></td>
      <td width="60"><div align="center">2U</div></td>
      <td width="60"><div align="center">2V</div></td>
      <td width="60"><div align="center">2W</div></td>
      <td width="60"><div align="center">3U</div></td>
      <td width="60"><div align="center">3V</div></td>
      <td width="60"><div align="center">3W</div></td>
    </tr>
    <tr>
      <td height="23"><div align="center">1</div></td>
      <td><div align="center">Make</div></td>
      <td><div align="center">
        <label for="textfield"></label>
        <input name="1" type="text" id="textfield" value="<%=s1%>" size="4" />
      </div></td>
      <td><div align="center">
        <input name="2" type="text" id="textfield2" value="<%=s2%>" size="4" />
      </div></td>
      <td><div align="center">
        <input name="3" type="text" id="textfield3" value="<%=s3%>" size="4"/>
      </div></td>
      <td><div align="center">
        <input name="4" type="text" id="textfield4" value="<%=s4%>" size="4"  />
      </div></td>
      <td><div align="center">
        <input name="5" type="text" id="textfield5" size="4" value="<%=s5%>" />
      </div></td>
      <td><div align="center">
        <input name="6" type="text" id="textfield6" size="4" value="<%=s6%>" />
      </div></td>
      <td><div align="center">
        <input name="7" type="text" id="textfield7" size="4" value="<%=s7%>" />
      </div></td>
      <td><div align="center">
        <input name="8" type="text" id="textfield8" size="4" value="<%=s8%>" />
      </div></td>
      <td><div align="center">
        <input name="9" type="text" id="textfield9" size="4" value="<%=s9%>" />
      </div></td>
      <td><div align="center">
        <input name="10" type="text" id="textfield10" size="4" value="<%=s10%>" />
      </div></td>
    </tr>
    <tr>
      <td height="23"><div align="center">2</div></td>
      <td><div align="center">Type(Condensor/Draw/ROD/OIP)</div></td>
      <td><div align="center">
        <input name="11" type="text" id="textfield11" size="4" value="<%=s11%>" />
      </div></td>
      <td><div align="center">
        <input name="12" type="text" id="textfield12" size="4" value="<%=s12%>" />
      </div></td>
      <td><div align="center">
        <input name="13" type="text" id="textfield13" size="4" value="<%=s13%>" />
      </div></td>
      <td><div align="center">
        <input name="14" type="text" id="textfield14" size="4" value="<%=s14%>" />
      </div></td>
      <td><div align="center">
        <input name="15" type="text" id="textfield15" size="4" value="<%=s15%>" />
      </div></td>
      <td><div align="center">
        <input name="16" type="text" id="textfield16" size="4" value="<%=s16%>" />
      </div></td>
      <td><div align="center">
        <input name="17" type="text" id="textfield17" size="4" value="<%=s17%>" />
      </div></td>
      <td><div align="center">
        <input name="18" type="text" id="textfield18" size="4" value="<%=s18%>" />
      </div></td>
      <td><div align="center">
        <input name="19" type="text" id="textfield19" size="4" value="<%=s19%>" />
      </div></td>
      <td><div align="center">
        <input name="20" type="text" id="textfield20" size="4" value="<%=s20%>" />
      </div></td>
    </tr>
    <tr>
      <td height="23"><div align="center">3</div></td>
      <td><div align="center">Reference standard IS</div></td>
      <td><div align="center">
        <input name="21" type="text" id="textfield21" size="4" value="<%=s21%>" />
      </div></td>
      <td><div align="center">
        <input name="22" type="text" id="textfield22" size="4" value="<%=s22%>" />
      </div></td>
      <td><div align="center">
        <input name="23" type="text" id="textfield23" size="4" value="<%=s23%>" />
      </div></td>
      <td><div align="center">
        <input name="24" type="text" id="textfield24" size="4" value="<%=s24%>" />
      </div></td>
      <td><div align="center">
        <input name="25" type="text" id="textfield25" size="4" value="<%=s25%>" />
      </div></td>
      <td><div align="center">
        <input name="26" type="text" id="textfield26" size="4" value="<%=s26%>" />
      </div></td>
      <td><div align="center">
        <input name="27" type="text" id="textfield27" size="4" value="<%=s27%>" />
      </div></td>
      <td><div align="center">
        <input name="28" type="text" id="textfield28" size="4" value="<%=s28%>" />
      </div></td>
      <td><div align="center">
        <input name="29" type="text" id="textfield29" size="4" value="<%=s29%>" />
      </div></td>
      <td><div align="center">
        <input name="30" type="text" id="textfield30" size="4" value="<%=s30%>" />
      </div></td>
    </tr>
    <tr>
      <td height="23"><div align="center">4</div></td>
      <td><div align="center">Rated Voltage (KV)</div></td>
      <td><div align="center">
        <input name="31" type="text" id="textfield31" size="4" value="<%=s31%>" />
      </div></td>
      <td><div align="center">
        <input name="32" type="text" id="textfield32" size="4" value="<%=s32%>" />
      </div></td>
      <td><div align="center">
        <input name="33" type="text" id="textfield33" size="4" value="<%=s33%>" />
      </div></td>
      <td><div align="center">
        <input name="34" type="text" id="textfield34" size="4" value="<%=s34%>" />
      </div></td>
      <td><div align="center">
        <input name="35" type="text" id="textfield35" size="4" value="<%=s35%>" />
      </div></td>
      <td><div align="center">
        <input name="36" type="text" id="textfield36" size="4" value="<%=s36%>" />
      </div></td>
      <td><div align="center">
        <input name="37" type="text" id="textfield37" size="4" value="<%=s37%>" />
      </div></td>
      <td><div align="center">
        <input name="38" type="text" id="textfield38" size="4" value="<%=s38%>" />
      </div></td>
      <td><div align="center">
        <input name="39" type="text" id="textfield39" size="4" value="<%=s39%>" />
      </div></td>
      <td><div align="center">
        <input name="40" type="text" id="textfield40" size="4" value="<%=s40%>" />
      </div></td>
    </tr>
    <tr>
      <td height="23"><div align="center">5</div></td>
      <td><div align="center">Rated Current</div></td>
      <td><div align="center">
        <input name="41" type="text" id="textfield59" size="4" value="<%=s41%>" />
      </div></td>
      <td><div align="center">
        <input name="42" type="text" id="textfield176" size="4" value="<%=s42%>" />
      </div></td>
      <td><div align="center">
        <input name="43" type="text" id="textfield177" size="4" value="<%=s43%>" />
      </div></td>
      <td><div align="center">
        <input name="44" type="text" id="textfield178" size="4" value="<%=s44%>" />
      </div></td>
      <td><div align="center">
        <input name="45" type="text" id="textfield179" size="4" value="<%=s45%>" />
      </div></td>
      <td><div align="center">
        <input name="46" type="text" id="textfield180" size="4" value="<%=s46%>" />
      </div></td>
      <td><div align="center">
        <input name="47" type="text" id="textfield181" size="4" value="<%=s47%>" />
      </div></td>
      <td><div align="center">
        <input name="48" type="text" id="textfield182" size="4" value="<%=s48%>" />
      </div></td>
      <td><div align="center">
        <input name="49" type="text" id="textfield183" size="4" value="<%=s49%>" />
      </div></td>
      <td><div align="center">
        <input name="50" type="text" id="textfield41" size="4" value="<%=s50%>" />
      </div></td>
    </tr>
    <tr>
      <td height="23"><div align="center">6</div></td>
      <td><div align="center">Sr. No.</div></td>
      <td><div align="center">
        <input name="51" type="text" id="textfield218" size="4" value="<%=s51%>" />
      </div></td>
      <td><div align="center">
        <input name="52" type="text" id="textfield219" size="4" value="<%=s52%>" />
      </div></td>
      <td><div align="center">
        <input name="53" type="text" id="textfield208" size="4" value="<%=s53%>" />
      </div></td>
      <td><div align="center">
        <input name="54" type="text" id="textfield207" size="4" value="<%=s54%>" />
      </div></td>
      <td><div align="center">
        <input name="55" type="text" id="textfield200" size="4" value="<%=s55%>" />
      </div></td>
      <td><div align="center">
        <input name="56" type="text" id="textfield199" size="4" value="<%=s56%>" />
      </div></td>
      <td><div align="center">
        <input name="57" type="text" id="textfield192" size="4" value="<%=s57%>" />
      </div></td>
      <td><div align="center">
        <input name="58" type="text" id="textfield191" size="4" value="<%=s58%>" />
      </div></td>
      <td><div align="center">
        <input name="59" type="text" id="textfield184" size="4" value="<%=s59%>" />
      </div></td>
      <td><input name="60" type="text" id="textfield42" size="4" value="<%=s60%>" /></td>
    </tr>
    <tr>
      <td><div align="center">7</div></td>
      <td><div align="center">Impulse with stand voltage (KVp)</div></td>
      
      <td><div align="center">
        <input name="61" type="text" id="textfield213" size="4" value="<%=s61%>" />
      </div></td>
      <td><div align="center">
        <input name="62" type="text" id="textfield209" size="4" value="<%=s62%>" />
      </div></td>
      <td><input name="63" type="text" id="textfield206" size="4" value="<%=s63%>" /></td>
      <td><div align="center">
        <input name="64" type="text" id="textfield201" size="4" value="<%=s64%>" />
      </div></td>
      <td><div align="center">
        <input name="65" type="text" id="textfield198" size="4" value="<%=s65%>" />
      </div></td>
      <td><div align="center">
        <input name="66" type="text" id="textfield193" size="4" value="<%=s66%>" />
      </div></td>
      <td><div align="center">
        <input name="67" type="text" id="textfield190" size="4" value="<%=s67%>" />
      </div></td>
      <td><div align="center">
        <input name="68" type="text" id="textfield185" size="4" value="<%=s68%>" />
      </div></td>
      <td><div align="center">
        <input name="69" type="text" id="textfield43" size="4" value="<%=s69%>" />
      </div></td>
      <td><input name="70" type="text" id="textfield217" size="4" value="<%=s70%>" /></td>
    </tr>
    <tr>
      <td><div align="center">8</div></td>
      <td><div align="center">Lightning Impulse withstand Voltage (KVp)</div></td>
      <td><div align="center">
        <input name="71" type="text" id="textfield216" size="4" value="<%=s71%>" />
      </div></td>
      <td><div align="center">
        <input name="72" type="text" id="textfield214" size="4" value="<%=s72%>" />
      </div></td>
      <td><div align="center">
        <input name="73" type="text" id="textfield210" size="4" value="<%=s73%>" />
      </div></td>
      <td><div align="center">
        <input name="74" type="text" id="textfield205" size="4" value="<%=s74%>" />
      </div></td>
      <td><div align="center">
        <input name="75" type="text" id="textfield202" size="4" value="<%=s75%>" />
      </div></td>
      <td><div align="center">
        <input name="76" type="text" id="textfield197" size="4" value="<%=s76%>" />
      </div></td>
      <td><div align="center">
        <input name="77" type="text" id="textfield194" size="4" value="<%=s77%>" />
      </div></td>
      <td><div align="center">
        <input name="78" type="text" id="textfield189" size="4" value="<%=s78%>" />
      </div></td>
      <td><div align="center">
        <input name="79" type="text" id="textfield186" size="4" value="<%=s79%>" />
      </div></td>
      <td><div align="center">
        <input name="80" type="text" id="textfield44" size="4" value="<%=s80%>" />
      </div></td>
    </tr>
    <tr>
      <td><div align="center">9</div></td>
      <td><div align="center">On minute power frequency with stand voltage (KV rms)</div></td>
      <td><div align="center">
        <input name="81" type="text" id="textfield215" size="4" value="<%=s81%>" />
      </div></td>
      <td><div align="center">
        <input name="82" type="text" id="textfield212" size="4" value="<%=s82%>" />
      </div></td>
      <td><div align="center">
        <input name="83" type="text" id="textfield211" size="4" value="<%=s83%>" />
      </div></td>
      <td><div align="center">
        <input name="84" type="text" id="textfield204" size="4" value="<%=s84%>" />
      </div></td>
      <td><div align="center">
        <input name="85" type="text" id="textfield203" size="4" value="<%=s85%>" />
      </div></td>
      <td><div align="center">
        <input name="86" type="text" id="textfield196" size="4" value="<%=s86%>" />
      </div></td>
      <td><div align="center">
        <input name="87" type="text" id="textfield195" size="4" value="<%=s87%>" />
      </div></td>
      <td><div align="center">
        <input name="88" type="text" id="textfield188" size="4" value="<%=s88%>" />
      </div></td>
      <td><div align="center">
        <input name="89" type="text" id="textfield187" size="4" value="<%=s89%>" />
      </div></td>
      <td><div align="center">
        <input name="90" type="text" id="textfield45" size="4" value="<%=s90%>" />
      </div></td>
    </tr>
    <tr>
      <td><div align="center">10</div></td>
      <td><div align="center">Switching Impulse level</div></td>
      <td><div align="center">
        <input name="91" type="text" id="textfield60" size="4" value="<%=s91%>" />
      </div></td>
      <td><div align="center">
        <input name="92" type="text" id="textfield61" size="4" value="<%=s92%>" />
      </div></td>
      <td><input name="93" type="text" id="textfield62" size="4" value="<%=s93%>" /></td>
      <td><div align="center">
        <input name="94" type="text" id="textfield63" size="4" value="<%=s94%>" />
      </div></td>
      <td><div align="center">
        <input name="95" type="text" id="textfield64" size="4" value="<%=s95%>" />
      </div></td>
      <td><div align="center">
        <input name="96" type="text" id="textfield65" size="4" value="<%=s96%>" />
      </div></td>
      <td><div align="center">
        <input name="97" type="text" id="textfield66" size="4" value="<%=s97%>" />
      </div></td>
      <td><div align="center">
        <input name="98" type="text" id="textfield67" size="4" value="<%=s98%>" />
      </div></td>
      <td><div align="center">
        <input name="99" type="text" id="textfield68" size="4" value="<%=s99%>" />
      </div></td>
      <td><input name="100" type="text" id="textfield46" size="4" value="<%=s100%>" /></td>
    </tr>
    <tr>
      <td height="26"><div align="center">11</div></td>
      <td><div align="center">Short time current rating</div></td>
      <td><input name="101" type="text" id="textfield69" size="4" value="<%=s101%>" />      <div align="center"></div></td>
      <td><div align="center">
        <input name="102" type="text" id="textfield70" size="4" value="<%=s102%>" />
      </div></td>
      <td><div align="center">
        <input name="103" type="text" id="textfield71" size="4" value="<%=s103%>" />
      </div></td>
      <td><div align="center">
        <input name="104" type="text" id="textfield72" size="4" value="<%=s104%>" />
      </div></td>
      <td><div align="center">
        <input name="105" type="text" id="textfield73" size="4" value="<%=s105%>" />
      </div></td>
      <td><div align="center">
        <input name="106" type="text" id="textfield74" size="4" value="<%=s106%>" />
      </div></td>
      <td><div align="center">
        <input name="107" type="text" id="textfield75" size="4" value="<%=s107%>" />
      </div></td>
      <td><div align="center">
        <input name="108" type="text" id="textfield76" size="4" value="<%=s108%>" />
      </div></td>
      <td><div align="center">
        <input name="109" type="text" id="textfield77" size="4" value="<%=s109%>" />
      </div></td>
      <td><div align="center">
        <input name="110" type="text" id="textfield47" size="4" value="<%=s110%>" />
      </div></td>
    </tr>
    <tr>
      <td><div align="center">12</div></td>
      <td><div align="center">Normal Frequency</div></td>
      <td><div align="center">
        <input name="111" type="text" id="textfield86" size="4" value="<%=s111%>" />
      </div></td>
      <td><input name="112" type="text" id="textfield85" size="4" value="<%=s112%>" /></td>
      <td><div align="center">
        <input name="113" type="text" id="textfield84" size="4" value="<%=s113%>" />
      </div></td>
      <td><div align="center">
        <input name="114" type="text" id="textfield83" size="4" value="<%=s114%>" />
      </div></td>
      <td><div align="center">
        <input name="115" type="text" id="textfield82" size="4" value="<%=s115%>" />
      </div></td>
      <td><div align="center">
        <input name="116" type="text" id="textfield81" size="4" value="<%=s116%>" />
      </div></td>
      <td><div align="center">
        <input name="117" type="text" id="textfield80" size="4" value="<%=s117%>" />
      </div></td>
      <td><input name="118" type="text" id="textfield79" size="4" value="<%=s118%>" />      <div align="center"></div></td>
      <td><div align="center">
        <input name="119" type="text" id="textfield78" size="4" value="<%=s119%>" />
      </div></td>
      <td><div align="center">
        <input name="120" type="text" id="textfield48" size="4" value="<%=s120%>" />
      </div></td>
    </tr>
    <tr>
      <td><div align="center">13</div></td>
      <td><div align="center">Creepage distance minimum (mm)</div></td>
      <td><div align="center">
        <input name="121" type="text" id="textfield87" size="4" value="<%=s121%>" />
      </div></td>
      <td><div align="center">
        <input name="122" type="text" id="textfield88" size="4" value="<%=s122%>" />
      </div></td>
      <td><div align="center">
        <input name="123" type="text" id="textfield89" size="4" value="<%=s123%>" />
      </div></td>
      <td><div align="center">
        <input name="124" type="text" id="textfield90" size="4" value="<%=s124%>" />
      </div></td>
      <td><div align="center">
        <input name="125" type="text" id="textfield91" size="4" value="<%=s125%>" />
      </div></td>
      <td><input name="126" type="text" id="textfield92" size="4" value="<%=s126%>" /></td>
      <td><div align="center">
        <input name="127" type="text" id="textfield93" size="4" value="<%=s127%>" />
      </div></td>
      <td><div align="center">
        <input name="128" type="text" id="textfield94" size="4" value="<%=s128%>" />
      </div></td>
      <td><div align="center">
        <input name="129" type="text" id="textfield95" size="4" value="<%=s129%>" />
      </div></td>
      <td><div align="center">
        <input name="130" type="text" id="textfield49" size="4" value="<%=s130%>" />
      </div></td>
    </tr>
    <tr>
      <td><div align="center">14</div></td>
      <td><div align="center">Year of manufacture</div></td>
      <td><div align="center">
        <input name="131" type="text" id="textfield104" size="4" value="<%=s131%>" />
      </div></td>
      <td><div align="center">
        <input name="132" type="text" id="textfield103" size="4" value="<%=s132%>" />
      </div></td>
      <td><div align="center">
        <input name="133" type="text" id="textfield102" size="4" value="<%=s133%>" />
      </div></td>
      <td><div align="center">
        <input name="134" type="text" id="textfield101" size="4" value="<%=s134%>" />
      </div></td>
      <td><div align="center">
        <input name="135" type="text" id="textfield100" size="4" value="<%=s135%>" />
      </div></td>
      <td><div align="center">
        <input name="136" type="text" id="textfield99" size="4" value="<%=s136%>" />
      </div></td>
      <td><div align="center">
        <input name="137" type="text" id="textfield98" size="4" value="<%=s137%>" />
      </div></td>
      <td><input name="138" type="text" id="textfield97" size="4" value="<%=s138%>" />      <div align="center"></div></td>
      <td><div align="center">
        <input name="139" type="text" id="textfield96" size="4" value="<%=s139%>" />
      </div></td>
      <td><div align="center">
        <input name="140" type="text" id="textfield50" size="4" value="<%=s140%>" />
      </div></td>
    </tr>
    <tr>
      <td><div align="center">15</div></td>
      <td><div align="center">Maximum mounting angle from vertical</div></td>
      <td><div align="center">
        <input name="141" type="text" id="textfield105" size="4" value="<%=s141%>" />
      </div></td>
      <td><div align="center">
        <input name="142" type="text" id="textfield106" size="4" value="<%=s142%>" />
      </div></td>
      <td><div align="center">
        <input name="143" type="text" id="textfield107" size="4" value="<%=s143%>" />
      </div></td>
      <td><div align="center">
        <input name="144" type="text" id="textfield108" size="4" value="<%=s144%>" />
      </div></td>
      <td><div align="center">
        <input name="145" type="text" id="textfield109" size="4" value="<%=s145%>" />
      </div></td>
      <td><div align="center">
        <input name="146" type="text" id="textfield110" size="4" value="<%=s146%>" />
      </div></td>
      <td><div align="center">
        <input name="147" type="text" id="textfield111" size="4" value="<%=s147%>" />
      </div></td>
      <td><div align="center">
        <input name="148" type="text" id="textfield112" size="4" value="<%=s148%>" />
      </div></td>
      <td><div align="center">
        <input name="149" type="text" id="textfield113" size="4" value="<%=s149%>" />
      </div></td>
      <td><div align="center">
        <input name="150" type="text" id="textfield51" size="4" value="<%=s150%>" />
      </div></td>
    </tr>
    <tr>
      <td><div align="center">16</div></td>
      <td><div align="center">Style</div></td>
      <td><div align="center">
        <input name="151" type="text" id="textfield114" size="4" value="<%=s151%>" />
      </div></td>
      <td><div align="center">
        <input name="152" type="text" id="textfield115" size="4" value="<%=s152%>" />
      </div></td>
      <td><div align="center">
        <input name="153" type="text" id="textfield116" size="4" value="<%=s153%>" />
      </div></td>
      <td><div align="center">
        <input name="154" type="text" id="textfield117" size="4" value="<%=s154%>" />
      </div></td>
      <td><div align="center">
        <input name="155" type="text" id="textfield118" size="4" value="<%=s155%>" />
      </div></td>
      <td><div align="center">
        <input name="156" type="text" id="textfield119" size="4" value="<%=s156%>" />
      </div></td>
      <td><div align="center">
        <input name="157" type="text" id="textfield220" size="4" value="<%=s157%>" />
      </div></td>
      <td><div align="center">
        <input name="158" type="text" id="textfield120" size="4" value="<%=s158%>" />
      </div></td>
      <td><div align="center">
        <input name="159" type="text" id="textfield121" size="4" value="<%=s159%>" />
      </div></td>
      <td><div align="center">
        <input name="160" type="text" id="textfield52" size="4" value="<%=s160%>" />
      </div></td>
    </tr>
    <tr>
      <td><div align="center">17</div></td>
      <td><div align="center">Total Quantity of Oil (in Ltrs)</div></td>
      <td><div align="center">
        <input name="161" type="text" id="textfield122" size="4" value="<%=s161%>" />
      </div></td>
      <td><div align="center">
        <input name="162" type="text" id="textfield123" size="4" value="<%=s162%>" />
      </div></td>
      <td><div align="center">
        <input name="163" type="text" id="textfield124" size="4" value="<%=s163%>" />
      </div></td>
      <td><div align="center">
        <input name="164" type="text" id="textfield125" size="4" value="<%=s164%>" />
      </div></td>
      <td><div align="center">
        <input name="165" type="text" id="textfield126" size="4" value="<%=s165%>" />
      </div></td>
      <td><div align="center">
        <input name="166" type="text" id="textfield127" size="4" value="<%=s166%>" />
      </div></td>
      <td><div align="center">
        <input name="167" type="text" id="textfield128" size="4" value="<%=s167%>" />
      </div></td>
      <td><div align="center">
        <input name="168" type="text" id="textfield129" size="4" value="<%=s168%>" />
      </div></td>
      <td><div align="center">
        <input name="169" type="text" id="textfield130" size="4" value="<%=s169%>" />
      </div></td>
      <td><div align="center">
        <input name="170" type="text" id="textfield53" size="4" value="<%=s170%>" />
      </div></td>
    </tr>
    <tr>
      <td><div align="center">18</div></td>
      <td><div align="center">Total weight in Kg</div></td>
      <td><div align="center">
        <input name="171" type="text" id="textfield131" size="4" value="<%=s171%>" />
      </div></td>
      <td><div align="center">
        <input name="172" type="text" id="textfield132" size="4" value="<%=s172%>" />
      </div></td>
      <td><div align="center">
        <input name="173" type="text" id="textfield133" size="4" value="<%=s173%>" />
      </div></td>
      <td><div align="center">
        <input name="174" type="text" id="textfield134" size="4" value="<%=s174%>" />
      </div></td>
      <td><div align="center">
        <input name="175" type="text" id="textfield135" size="4" value="<%=s175%>" />
      </div></td>
      <td><div align="center">
        <input name="176" type="text" id="textfield136" size="4" value="<%=s176%>" />
      </div></td>
      <td><div align="center">
        <input name="177" type="text" id="textfield137" size="4" value="<%=s177%>" />
      </div></td>
      <td><div align="center">
        <input name="178" type="text" id="textfield138" size="4" value="<%=s178%>" />
      </div></td>
      <td><div align="center">
        <input name="179" type="text" id="textfield139" size="4" value="<%=s179%>" />
      </div></td>
      <td><div align="center">
        <input name="180" type="text" id="textfield54" size="4" value="<%=s180%>" />
      </div></td>
    </tr>
    <tr>
      <td><div align="center">19</div></td>
      <td><div align="center">Whether Test Taps provided</div></td>
      <td><div align="center">
        <input name="181" type="text" id="textfield140" size="4" value="<%=s181%>" />
      </div></td>
      <td><div align="center">
        <input name="182" type="text" id="textfield141" size="4" value="<%=s182%>" />
      </div></td>
      <td><div align="center">
        <input name="183" type="text" id="textfield142" size="4" value="<%=s183%>" />
      </div></td>
      <td><div align="center">
        <input name="184" type="text" id="textfield143" size="4" value="<%=s184%>" />
      </div></td>
      <td><div align="center">
        <input name="185" type="text" id="textfield144" size="4" value="<%=s185%>" />
      </div></td>
      <td><div align="center">
        <input name="186" type="text" id="textfield145" size="4" value="<%=s186%>" />
      </div></td>
      <td><div align="center">
        <input name="187" type="text" id="textfield146" size="4" value="<%=s187%>" />
      </div></td>
      <td><div align="center">
        <input name="188" type="text" id="textfield147" size="4" value="<%=s188%>" />
      </div></td>
      <td><div align="center">
        <input name="189" type="text" id="textfield148" size="4" value="<%=s189%>" />
      </div></td>
      <td><div align="center">
        <input name="190" type="text" id="textfield55" size="4" value="<%=s190%>" />
      </div></td>
    </tr>
    <tr>
      <td><div align="center">20</div></td>
      <td><div align="center">Capacitance (Pf)</div></td>
      <td><div align="center">
        <input name="191" type="text" id="textfield149" size="4" value="<%=s191%>" />
      </div></td>
      <td><div align="center">
        <input name="192" type="text" id="textfield150" size="4" value="<%=s192%>" />
      </div></td>
      <td><div align="center">
        <input name="193" type="text" id="textfield151" size="4" value="<%=s193%>" />
      </div></td>
      <td><div align="center">
        <input name="194" type="text" id="textfield152" size="4" value="<%=s194%>" />
      </div></td>
      <td><div align="center">
        <input name="195" type="text" id="textfield153" size="4" value="<%=s195%>" />
      </div></td>
      <td><div align="center">
        <input name="196" type="text" id="textfield154" size="4" value="<%=s196%>" />
      </div></td>
      <td><input name="197" type="text" id="textfield155" size="4" value="<%=s197%>" /></td>
      <td><div align="center">
        <input name="198" type="text" id="textfield156" size="4" value="<%=s198%>" />
      </div></td>
      <td><div align="center">
        <input name="199" type="text" id="textfield157" size="4" value="<%=s199%>" />
      </div></td>
      <td><div align="center">
        <input name="200" type="text" id="textfield56" size="4" value="<%=s200%>" />
      </div></td>
    </tr>
    <tr>
      <td height="26"><div align="center">21</div></td>
      <td><div align="center">Tan Delta (%)</div></td>
      
      <td><div align="center">
        <input name="201" type="text" id="textfield159" size="4" value="<%=s201%>" />
      </div></td>
      <td><div align="center">
        <input name="202" type="text" id="textfield160" size="4" value="<%=s202%>" />
      </div></td>
      <td><div align="center">
        <input name="203" type="text" id="textfield161" size="4" value="<%=s203%>" />
      </div></td>
      <td><div align="center">
        <input name="204" type="text" id="textfield162" size="4" value="<%=s204%>" />
      </div></td>
      <td><div align="center">
        <input name="205" type="text" id="textfield163" size="4" value="<%=s205%>" />
      </div></td>
      <td><div align="center">
        <input name="206" type="text" id="textfield164" size="4" value="<%=s206%>" />
      </div></td>
      <td><input name="207" type="text" id="textfield165" size="4" value="<%=s207%>" /></td>
      <td><div align="center">
        <input name="208" type="text" id="textfield166" size="4" value="<%=s208%>" />
      </div></td>
      <td><div align="center">
        <input name="209" type="text" id="textfield57" size="4" value="<%=s209%>" />
      </div></td>
      <td><div align="center">
        <input name="210" type="text" id="textfield158" size="4" value="<%=s210%>" />
      </div></td>
    </tr>
    <tr>
      <td height="26"><div align="center">22</div></td>
      <td><div align="center">IR values (M-ohms)</div></td>
      <td><div align="center">
        <input name="211" type="text" id="textfield175" size="4" value="<%=s211%>" />
      </div></td>
      <td><input name="212" type="text" id="textfield174" size="4" value="<%=s212%>" />      <div align="center"></div></td>
      <td><div align="center">
        <input name="213" type="text" id="textfield173" size="4" value="<%=s213%>" />
      </div></td>
      <td><div align="center">
        <input name="214" type="text" id="textfield172" size="4" value="<%=s214%>" />
      </div></td>
      <td><div align="center">
        <input name="215" type="text" id="textfield171" size="4" value="<%=s215%>" />
      </div></td>
      <td><div align="center">
        <input name="216" type="text" id="textfield170" size="4" value="<%=s216%>" />
      </div></td>
      <td><div align="center">
        <input name="217" type="text" id="textfield169" size="4" value="<%=s217%>" />
      </div></td>
      <td><div align="center">
        <input name="218" type="text" id="textfield168" size="4" value="<%=s218%>" />
      </div></td>
      <td><div align="center">
        <input name="219" type="text" id="textfield167" size="4" value="<%=s219%>" />
      </div></td>
      <td><div align="center">
        <input name="220" type="text" id="textfield58" size="4" value="<%=s220%>" />
      </div></td>
    </tr>
  </table>
  <input type="submit" name="button" id="button" value="save" />
</form>
</div>
<p align="center">&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
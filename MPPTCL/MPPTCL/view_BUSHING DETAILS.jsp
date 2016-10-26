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
body,td,th {
	color: #000;
}
body {
	background-image: url(last3.JPG);
}
       </style>
</head>

<body>
 <p align="right"><a href="index2.html">back to index
 </a></p>
 <p align="right"><a href="index.jsp">logout</a></p>
 <p>&nbsp;</p>
 <p>
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
   
   
 </p>
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
<h1 align="center">BUSHING DETAILS</h1>
<div align="center">
  <table width="1093" height="684" border="1">
    <tr>
      <td width="37" rowspan="2"><div align="center">S.No.</div></td>
      <td width="380" rowspan="2"><div align="center">Make</div></td>
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
      <td><div align="center">Type(Condensor/Draw/ROD/OIP)</div></td>
      <td><div align="center">
        <label for="textfield"></label>
        <%=s1%>
      </div></td>
      <td><div align="center">
        <%=s2%>
      </div></td>
      <td><div align="center">
        <%=s3%>
      </div></td>
      <td><div align="center">
       <%=s4%>
      </div></td>
      <td><div align="center">
        <%=s5%>
      </div></td>
      <td><div align="center">
        <%=s6%>
      </div></td>
      <td><div align="center">
        <%=s7%>
      </div></td>
      <td><div align="center">
        <%=s8%>
      </div></td>
      <td><div align="center">
        <%=s9%>
      </div></td>
      <td><div align="center">
       <%=s10%>
      </div></td>
    </tr>
    <tr>
      <td height="23"><div align="center">2</div></td>
      <td><div align="center">Reference standard IS</div></td>
      <td><div align="center">
        <%=s11%>
      </div></td>
      <td><div align="center">
       <%=s12%>
      </div></td>
      <td><div align="center">
       <%=s13%>
      </div></td>
      <td><div align="center">
       <%=s14%>
      </div></td>
      <td><div align="center">
        <%=s15%>
      </div></td>
      <td><div align="center">
        <%=s16%>
      </div></td>
      <td><div align="center">
       <%=s17%>
      </div></td>
      <td><div align="center">
       <%=s18%>
      </div></td>
      <td><div align="center">
       <%=s19%>
      </div></td>
      <td><div align="center">
        <%=s20%>
      </div></td>
    </tr>
    <tr>
      <td height="23"><div align="center">3</div></td>
      <td><div align="center">Rated Voltage (KV)</div></td>
      <td><div align="center">
       <%=s21%>
      </div></td>
      <td><div align="center">
       <%=s22%>
      </div></td>
      <td><div align="center">
       <%=s23%>
      </div></td>
      <td><div align="center">
       <%=s24%>
      </div></td>
      <td><div align="center">
       <%=s25%>
      </div></td>
      <td><div align="center">
       <%=s26%>
      </div></td>
      <td><div align="center">
        <%=s27%>
      </div></td>
      <td><div align="center">
        <%=s28%>
      </div></td>
      <td><div align="center">
        <%=s29%>
      </div></td>
      <td><div align="center">
       <%=s30%>
      </div></td>
    </tr>
    <tr>
      <td height="23"><div align="center">4</div></td>
      <td><div align="center">Rated Current</div></td>
      <td><div align="center">
       <%=s31%>
      </div></td>
      <td><div align="center">
       <%=s32%>
      </div></td>
      <td><div align="center">
       <%=s33%>
      </div></td>
      <td><div align="center">
      <%=s34%>
      </div></td>
      <td><div align="center">
      <%=s35%>
      </div></td>
      <td><div align="center">
       <%=s36%>
      </div></td>
      <td><div align="center">
       <%=s37%>
      </div></td>
      <td><div align="center">
       <%=s38%>
      </div></td>
      <td><div align="center">
        <%=s39%>
      </div></td>
      <td><div align="center">
       <%=s40%>
      </div></td>
    </tr>
    <tr>
      <td height="23"><div align="center">5</div></td>
      <td><div align="center">Sr. No.</div></td>
      <td><div align="center">
        <%=s41%>
      </div></td>
      <td><div align="center">
       <%=s42%>
      </div></td>
      <td><div align="center">
       <%=s43%>
      </div></td>
      <td><div align="center">
       <%=s44%>
      </div></td>
      <td><div align="center">
       <%=s45%>
      </div></td>
      <td><div align="center">
       <%=s46%>
      </div></td>
      <td><div align="center">
       <%=s47%>
      </div></td>
      <td><div align="center">
       <%=s48%>
      </div></td>
      <td><div align="center">
       <%=s49%>
      </div></td>
      <td><div align="center">
      <%=s50%>
      </div></td>
    </tr>
    <tr>
      <td height="23"><div align="center">6</div></td>
      <td><div align="center">Impulse with stand voltage (KVp)</div></td>
      <td><div align="center">
       <%=s51%>
      </div></td>
      <td><div align="center">
       <%=s52%>
      </div></td>
      <td><div align="center">
      <%=s53%>
      </div></td>
      <td><div align="center">
     <%=s54%>
      </div></td>
      <td><div align="center">
      <%=s55%>
      </div></td>
      <td><div align="center">
       <%=s56%>
      </div></td>
      <td><div align="center">
     <%=s57%>
      </div></td>
      <td><div align="center">
      <%=s58%>
      </div></td>
      <td><div align="center">
       <%=s59%>
      </div></td>
      <td><%=s60%></td>
    </tr>
    <tr>
      <td><div align="center">7</div></td>
      <td><div align="center">Lightning Impulse withstand Voltage (KVp)</div></td>
      
      <td><div align="center">
       <%=s61%>
      </div></td>
      <td><div align="center">
       <%=s62%>
      </div></td>
      <td><%=s63%></td>
      <td><div align="center">
        <%=s64%>
      </div></td>
      <td><div align="center">
       <%=s65%>
      </div></td>
      <td><div align="center">
       <%=s66%>
      </div></td>
      <td><div align="center">
       <%=s67%>
      </div></td>
      <td><div align="center">
       <%=s68%>
      </div></td>
      <td><div align="center">
        <%=s69%>
      </div></td>
      <td><%=s70%></td>
    </tr>
    <tr>
      <td><div align="center">8</div></td>
      <td><div align="center">On minute power frequency with stand voltage (KV rms)</div></td>
      <td><div align="center">
       <%=s71%>
      </div></td>
      <td><div align="center">
       <%=s72%>
      </div></td>
      <td><div align="center">
        <%=s73%>
      </div></td>
      <td><div align="center">
       <%=s74%>
      </div></td>
      <td><div align="center">
      <%=s75%>
      </div></td>
      <td><div align="center">
       <%=s76%>
      </div></td>
      <td><div align="center">
        <%=s77%>
      </div></td>
      <td><div align="center">
        <%=s78%>
      </div></td>
      <td><div align="center">
      <%=s79%>
      </div></td>
      <td><div align="center">
        <%=s80%>
      </div></td>
    </tr>
    <tr>
      <td><div align="center">9</div></td>
      <td><div align="center">Switching Impulse level</div></td>
      <td><div align="center">
        <%=s81%>
      </div></td>
      <td><div align="center">
       <%=s82%>
      </div></td>
      <td><div align="center">
       <%=s83%>
      </div></td>
      <td><div align="center">
       <%=s84%>
      </div></td>
      <td><div align="center">
       <%=s85%>
      </div></td>
      <td><div align="center">
       <%=s86%>
      </div></td>
      <td><div align="center">
        <%=s87%>
      </div></td>
      <td><div align="center">
       <%=s88%>
      </div></td>
      <td><div align="center">
       <%=s89%>
      </div></td>
      <td><div align="center">
       <%=s90%>
      </div></td>
    </tr>
    <tr>
      <td><div align="center">10</div></td>
      <td><div align="center">Short time current rating</div></td>
      <td><div align="center">
       <%=s91%>
      </div></td>
      <td><div align="center">
      <%=s92%>
      </div></td>
      <td><%=s93%></td>
      <td><div align="center">
       <%=s94%>
      </div></td>
      <td><div align="center">
       <%=s95%>
      </div></td>
      <td><div align="center">
       <%=s96%>
      </div></td>
      <td><div align="center">
       <%=s97%>
      </div></td>
      <td><div align="center">
       <%=s98%>
      </div></td>
      <td><div align="center">
       <%=s99%>
      </div></td>
      <td><%=s100%></td>
    </tr>
    <tr>
      <td height="26"><div align="center">11</div></td>
      <td><div align="center">Normal Frequency</div></td>
      <td><%=s101%>    <div align="center"></div></td>
      <td><div align="center">
       <%=s102%>
      </div></td>
      <td><div align="center">
        <%=s103%>
      </div></td>
      <td><div align="center">
       <%=s104%>
      </div></td>
      <td><div align="center">
       <%=s105%>
      </div></td>
      <td><div align="center">
       <%=s106%>
      </div></td>
      <td><div align="center">
        <%=s107%>
      </div></td>
      <td><div align="center">
       <%=s108%>
      </div></td>
      <td><div align="center">
       <%=s109%>
      </div></td>
      <td><div align="center">
       <%=s110%>
      </div></td>
    </tr>
    <tr>
      <td><div align="center">12</div></td>
      <td><div align="center">Creepage distance minimum (mm)</div></td>
      <td><div align="center">
      <%=s111%>
      </div></td>
      <td><%=s112%></td>
      <td><div align="center">
      <%=s113%>
      </div></td>
      <td><div align="center">
       <%=s114%>
      </div></td>
      <td><div align="center">
       <%=s115%>
      </div></td>
      <td><div align="center">
       <%=s116%>
      </div></td>
      <td><div align="center">
       <%=s117%>
      </div></td>
      <td><%=s118%>     <div align="center"></div></td>
      <td><div align="center">
       <%=s119%>
      </div></td>
      <td><div align="center">
      <%=s120%>
      </div></td>
    </tr>
    <tr>
      <td><div align="center">13</div></td>
      <td><div align="center">Year of manufacture</div></td>
      <td><div align="center">
       <%=s121%>
      </div></td>
      <td><div align="center">
       <%=s122%>
      </div></td>
      <td><div align="center">
      <%=s123%>
      </div></td>
      <td><div align="center">
      <%=s124%>
      </div></td>
      <td><div align="center">
       <%=s125%>
      </div></td>
      <td><%=s126%></td>
      <td><div align="center">
       <%=s127%>
      </div></td>
      <td><div align="center">
       <%=s128%>
      </div></td>
      <td><div align="center">
      <%=s129%>
      </div></td>
      <td><div align="center">
       <%=s130%>
      </div></td>
    </tr>
    <tr>
      <td><div align="center">14</div></td>
      <td><div align="center">Maximum mounting angle from vertical</div></td>
      <td><div align="center">
        <%=s131%>
      </div></td>
      <td><div align="center">
       <%=s132%>
      </div></td>
      <td><div align="center">
       <%=s133%>
      </div></td>
      <td><div align="center">
       <%=s134%>
      </div></td>
      <td><div align="center">
        <%=s135%>
      </div></td>
      <td><div align="center">
       <%=s136%>
      </div></td>
      <td><div align="center">
       <%=s137%>
      </div></td>
      <td><%=s138%>    <div align="center"></div></td>
      <td><div align="center">
       <%=s139%>
      </div></td>
      <td><div align="center">
       <%=s140%>
      </div></td>
    </tr>
    <tr>
      <td><div align="center">15</div></td>
      <td><div align="center">Style</div></td>
      <td><div align="center">
        <%=s141%>
      </div></td>
      <td><div align="center">
       <%=s142%>
      </div></td>
      <td><div align="center">
       <%=s143%>
      </div></td>
      <td><div align="center">
       <%=s144%>
      </div></td>
      <td><div align="center">
       <%=s145%>
      </div></td>
      <td><div align="center">
       <%=s146%>
      </div></td>
      <td><div align="center">
       <%=s147%>
      </div></td>
      <td><div align="center">
       <%=s148%>
      </div></td>
      <td><div align="center">
        <%=s149%>
      </div></td>
      <td><div align="center">
       <%=s150%>
      </div></td>
    </tr>
    <tr>
      <td><div align="center">16</div></td>
      <td><div align="center">Total Quantity of Oil (in Ltrs)</div></td>
      <td><div align="center">
       <%=s151%>
      </div></td>
      <td><div align="center">
       <%=s152%>
      </div></td>
      <td><div align="center">
     <%=s153%>
      </div></td>
      <td><div align="center">
       <%=s154%>
      </div></td>
      <td><div align="center">
       <%=s155%>
      </div></td>
      <td><div align="center">
      <%=s156%>
      </div></td>
      <td><div align="center">
       <%=s157%>
      </div></td>
      <td><div align="center">
       <%=s158%>
      </div></td>
      <td><div align="center">
     <%=s159%>
      </div></td>
      <td><div align="center">
      <%=s160%>
      </div></td>
    </tr>
    <tr>
      <td><div align="center">17</div></td>
      <td><div align="center">Total weight in Kg</div></td>
      <td><div align="center">
       <%=s161%>
      </div></td>
      <td><div align="center">
       <%=s162%>
      </div></td>
      <td><div align="center">
       <%=s163%>
      </div></td>
      <td><div align="center">
      <%=s164%>
      </div></td>
      <td><div align="center">
       <%=s165%>
      </div></td>
      <td><div align="center">
       <%=s166%>
      </div></td>
      <td><div align="center">
        <%=s167%>
      </div></td>
      <td><div align="center">
       <%=s168%>
      </div></td>
      <td><div align="center">
      <%=s169%>
      </div></td>
      <td><div align="center">
       <%=s170%>
      </div></td>
    </tr>
    <tr>
      <td><div align="center">18</div></td>
      <td><div align="center">Whether Test Taps provided</div></td>
      <td><div align="center">
        <%=s171%>
      </div></td>
      <td><div align="center">
       <%=s172%>
      </div></td>
      <td><div align="center">
       <%=s173%>
      </div></td>
      <td><div align="center">
       <%=s174%>
      </div></td>
      <td><div align="center">
      <%=s175%>
      </div></td>
      <td><div align="center">
      <%=s176%>
      </div></td>
      <td><div align="center">
       <%=s177%>
      </div></td>
      <td><div align="center">
       <%=s178%>
      </div></td>
      <td><div align="center">
       <%=s179%>
      </div></td>
      <td><div align="center">
       <%=s180%>
      </div></td>
    </tr>
    <tr>
      <td><div align="center">19</div></td>
      <td><div align="center">Capacitance (Pf)</div></td>
      <td><div align="center">
       <%=s181%>
      </div></td>
      <td><div align="center">
        <%=s182%>
      </div></td>
      <td><div align="center">
       <%=s183%>
      </div></td>
      <td><div align="center">
     <%=s184%>
      </div></td>
      <td><div align="center">
        <%=s185%>
      </div></td>
      <td><div align="center">
        <%=s186%>
      </div></td>
      <td><div align="center">
        <%=s187%>
      </div></td>
      <td><div align="center">
       <%=s188%>
      </div></td>
      <td><div align="center">
        <%=s189%>
      </div></td>
      <td><div align="center">
      <%=s190%>
      </div></td>
    </tr>
    <tr>
      <td><div align="center">20</div></td>
      <td><div align="center">Tan Delta (%)</div></td>
      <td><div align="center">
        <%=s191%>
      </div></td>
      <td><div align="center">
        <%=s192%>
      </div></td>
      <td><div align="center">
        <%=s193%>
      </div></td>
      <td><div align="center">
       <%=s194%>
      </div></td>
      <td><div align="center">
       <%=s195%>
      </div></td>
      <td><div align="center">
      <%=s196%>
      </div></td>
      
      <td><div align="center">
        <%=s197%>
      </div></td>
      <td><div align="center">
       <%=s198%>
      </div></td>
      <td><div align="center">
       <%=s199%>
      </div></td>
      <td><div align="center">
       <%=s200%>
      </div></td>
    </tr>
    <tr>
      <td height="26"><div align="center">21</div></td>
      <td><div align="center">IR values (M-ohms)</div></td>
      
      <td><div align="center">
      <%=s201%>
      </div></td>
      <td><div align="center">
       <%=s202%>
      </div></td>
      <td><div align="center">
       <%=s203%>
      </div></td>
      <td><div align="center">
      <%=s204%>
      </div></td>
      <td><div align="center">
       <%=s205%>
      </div></td>
      <td><div align="center">
      <%=s206%>
      </div></td>
      <td><%=s207%></td>
      <td><div align="center">
       <%=s208%>
      </div></td>
      <td><div align="center">
        <%=s209%>
      </div></td>
      <td><div align="center">
        <%=s210%>
      </div></td>
    </tr>
  </table>
</div>
<p align="center">&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
   <div align="center">
     <input type="submit" name="button" id="button" value="insert data" />
   </div>
</form>
</body>
</html>
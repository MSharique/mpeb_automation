<%@page import= "java.io.*"%>
<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>

<html>
<head>

</head>




<body>
<% Connection con =null;

String s1 = request.getParameter("1");
String s2 = request.getParameter("2");
String s3 = request.getParameter("3");
String s4 = request.getParameter("4");
String s5 = request.getParameter("5");
String s6 = request.getParameter("6");
String s7 = request.getParameter("7");
String s8 = request.getParameter("8");
String s9 = request.getParameter("9");
String s10 = request.getParameter("10");
String s11 = request.getParameter("11");
String s12 = request.getParameter("12");
String s13 = request.getParameter("13");
String s14 = request.getParameter("14");
String s15 = request.getParameter("15");
String s16 = request.getParameter("16");
String s17 = request.getParameter("17");
String s18 = request.getParameter("18");
String s19 = request.getParameter("19");
String s20 = request.getParameter("20");
String s21 = request.getParameter("21");
String s22 = request.getParameter("22");
String s23 = request.getParameter("23");
String s24 = request.getParameter("24");
String s25 = request.getParameter("25");
String s26 = request.getParameter("26");
String s27 = request.getParameter("27");
String s28 = request.getParameter("28");
String s29 = request.getParameter("29");
String s30 = request.getParameter("30");
String s31 = request.getParameter("31");
String s32 = request.getParameter("32");
String s33 = request.getParameter("33");
String s34 = request.getParameter("34");
String s35 = request.getParameter("35");
String s36 = request.getParameter("36");
String s37 = request.getParameter("37");
String s38 = request.getParameter("38");
String s39 = request.getParameter("39");
String s40 = request.getParameter("40");
String s41 = request.getParameter("41");
String s42 = request.getParameter("42");
String s43 = request.getParameter("43");
String s44 = request.getParameter("44");
String s45 = request.getParameter("45");
String s46 = request.getParameter("46");
String s47 = request.getParameter("47");
String s48 = request.getParameter("48");
String s49 = request.getParameter("49");
String s50 = request.getParameter("50");
String s51 = request.getParameter("51");
String s52 = request.getParameter("52");
String s53 = request.getParameter("53");
String s54 = request.getParameter("54");
String s55 = request.getParameter("55");
String s56 = request.getParameter("56");
String s57 = request.getParameter("57");
String s58 = request.getParameter("58");
String s59 = request.getParameter("59");
String s60 = request.getParameter("60");
String s61 = request.getParameter("61");
String s62 = request.getParameter("62");
String s63 = request.getParameter("63");
String s64 = request.getParameter("64");
String s65 = request.getParameter("65");
String s66 = request.getParameter("66");
String s67 = request.getParameter("67");
String s68 = request.getParameter("68");
String s69 = request.getParameter("69");
String s70 = request.getParameter("70");
String s71 = request.getParameter("71");
String s72 = request.getParameter("72");
String s73 = request.getParameter("73");
String s74 = request.getParameter("74");
String s75 = request.getParameter("75");
String s76 = request.getParameter("76");
String s77 = request.getParameter("77");
String s78 = request.getParameter("78");
String s79 = request.getParameter("79");
String s80 = request.getParameter("80");
String s81 = request.getParameter("81");
String s82 = request.getParameter("82");
String s83 = request.getParameter("83");
String s84 = request.getParameter("84");
String s85 = request.getParameter("85");
String s86 = request.getParameter("86");
String s87 = request.getParameter("87");
String s88 = request.getParameter("88");
String s89 = request.getParameter("89");
String s90 = request.getParameter("90");
String s91 = request.getParameter("91");
String s92 = request.getParameter("92");
String s93 = request.getParameter("93");
String s94 = request.getParameter("94");
String s95 = request.getParameter("95");
String s96 = request.getParameter("96");
String s97 = request.getParameter("97");
String s98 = request.getParameter("98");
String s99 = request.getParameter("99");
String s100 = request.getParameter("100");
String s101 = request.getParameter("101");
String s102 = request.getParameter("102");
String s103 = request.getParameter("103");
String s104 = request.getParameter("104");
String s105 = request.getParameter("105");
String s106 = request.getParameter("106");
String s107 = request.getParameter("107");
String s108 = request.getParameter("108");
String s109 = request.getParameter("109");
String s110 = request.getParameter("110");
String s111 = request.getParameter("111");
String s112 = request.getParameter("112");
String s113 = request.getParameter("113");
String s114 = request.getParameter("114");
String s115 = request.getParameter("115");
String s116 = request.getParameter("116");
String s117 = request.getParameter("117");
String s118 = request.getParameter("118");
String s119 = request.getParameter("119");
String s120 = request.getParameter("120");
String s121 = request.getParameter("121");
String s122 = request.getParameter("122");
String s123 = request.getParameter("123");
String s124 = request.getParameter("124");
String s125 = request.getParameter("125");
String s126 = request.getParameter("126");
String s127 = request.getParameter("127");
String s128 = request.getParameter("128");
String s129 = request.getParameter("129");
String s130 = request.getParameter("130");
String s131 = request.getParameter("131");
String s132 = request.getParameter("132");
String s133 = request.getParameter("133");
String s134 = request.getParameter("134");
String s135 = request.getParameter("135");
String s136 = request.getParameter("136");
String s137 = request.getParameter("137");
String s138 = request.getParameter("138");
String s139 = request.getParameter("139");
String s140 = request.getParameter("140");
String s141 = request.getParameter("141");
String s142 = request.getParameter("142");
String s143 = request.getParameter("143");
String s144 = request.getParameter("144");
String s145 = request.getParameter("145");
String s146 = request.getParameter("146");
String s147 = request.getParameter("147");
String s148 = request.getParameter("148");
String s149 = request.getParameter("149");
String s150 = request.getParameter("150");
String s151 = request.getParameter("151");
String s152 = request.getParameter("152");
String s153 = request.getParameter("153");
String s154 = request.getParameter("154");
String s155 = request.getParameter("155");
String s156 = request.getParameter("156");
String s157 = request.getParameter("157");
String s158 = request.getParameter("158");
String s159 = request.getParameter("159");
String s160 = request.getParameter("160");
String s161 = request.getParameter("161");
String s162 = request.getParameter("162");
String s163 = request.getParameter("163");
String s164 = request.getParameter("164");
String s165 = request.getParameter("165");
String s166 = request.getParameter("166");
String s167 = request.getParameter("167");
String s168 = request.getParameter("168");
String s169 = request.getParameter("169");
String s170 = request.getParameter("170");
String s171 = request.getParameter("171");
String s172 = request.getParameter("172");
String s173 = request.getParameter("173");
String s174 = request.getParameter("174");
String s175 = request.getParameter("175");
String s176 = request.getParameter("176");
String s177 = request.getParameter("177");
String s178 = request.getParameter("178");
String s179 = request.getParameter("179");
String s180 = request.getParameter("180");
String s181 = request.getParameter("181");
String s182 = request.getParameter("182");
String s183 = request.getParameter("183");
String s184 = request.getParameter("184");
String s185 = request.getParameter("185");
String s186 = request.getParameter("186");
String s187 = request.getParameter("187");
String s188 = request.getParameter("188");
String s189 = request.getParameter("189");
String s190 = request.getParameter("190");
String s191 = request.getParameter("191");
String s192 = request.getParameter("192");
String s193 = request.getParameter("193");
String s194 = request.getParameter("194");
String s195 = request.getParameter("195");
String s196 = request.getParameter("196");
String s197 = request.getParameter("197");
String s198 = request.getParameter("198");
String s199 = request.getParameter("199");
String s200 = request.getParameter("200");
String s201 = request.getParameter("201");
String s202 = request.getParameter("202");
String s203 = request.getParameter("203");
String s204 = request.getParameter("204");
String s205 = request.getParameter("205");
String s206 = request.getParameter("206");
String s207 = request.getParameter("207");
String s208 = request.getParameter("208");
String s209 = request.getParameter("209");
String s210 = request.getParameter("210");



int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s= "insert into bushing_detail(Type1u,Type1v,Type1w,Typenb,Type2u,Type2v,Type2w,Type3u,Type3v,Type3w,ref_s1u,ref_s1v,ref_s1w,ref_snb,ref_s2u,ref_s2v,ref_s2w,ref_s3u,ref_s3v, ref_s3w,volt1u,volt1v,volt1w,voltnb,volt2u,volt2v,volt2w,volt3u,volt3v,volt3w,cur1u,cur1v,cur1w,curnb,cur2u,cur2v,cur2w,cur3u,cur3v,cur3w,sn1u,sn1v,sn1w,snnb,sn2u,sn2v,sn2w,sn3u,sn3v,sn3w,imp1u,imp1v,imp1w,impnb,imp2u,imp2v,imp2w,imp3u,imp3v,imp3w,impwithvolt1u,impwithvolt1v,impwithvolt1w,impwithvoltnb,impwithvolt2u,impwithvolt2v,impwithvolt2w,impwithvolt3u,impwithvolt3v,impwithvolt3w,minvolt1u,minvolt1v,minvolt1w,minvoltnb,minvolt2u,minvolt2v,minvolt2w,minvolt3u,minvolt3v,minvolt3w,lvl1u,lvl1v,lvl1w,lvlnb,lvl2u,lvl2v,lvl2w,lvl3u,lvl3v,lvl3w, rat1u,rat1v,rat1w,ratnb,rat2u,rat2v,rat2w,rat3u,rat3v,rat3w,freq1u,freq1v,freq1w,freqnb,freq2u,freq2v,freq2w,freq3u,freq3v,freq3w,dis1u,dis1v,dis1w,disnb,dis2u,dis2v,dis2w,dis3u,dis3v,dis3w,year1u,year1v,year1w,yearnb,year2u,year2v,year2w,year3u,year3v,year3w,max1u,max1v,max1w,maxnb,max2u,max2v,max2w,max3u,max3v,max3w,style1u,style1v,style1w,stylenb,style2u,style2v,style2w,style3u,style3v,style3w,oil1u,oil1v,oil1w,oilnb,oil2u,oil2v,oil2w,oil3u,oil3v,oil3w,weight1u,weight1v,weight1w,weightnb,weight2u,weight2v,weight2w,weight3u,weight3v,weight3w,test1u,test1v, test1w,testnb,test2u,test2v,test2w,test3u,test3v,test3w,cap1u,cap1v,cap1w,capnb,cap2u,cap2v, cap2w,cap3u,cap3v,cap3w,tan1u,tan1v,tan1w,tannb,tan2u,tan2v,tan2w,tan3u,tan3v,tan3w,ir1u,ir1v,ir1w,irnb,ir2u,ir2v,ir2w,ir3u,ir3v,ir3w)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
              ps=con.prepareStatement(s);
              ps.setString(1,s1);
              ps.setString(2,s2);
              ps.setString(3,s3);
              ps.setString(4,s4);
              ps.setString(5,s5);
              ps.setString(6,s6);
              ps.setString(7,s7);  
              ps.setString(8,s8); 
			  ps.setString(9,s9);  
              ps.setString(10,s10); 
			  ps.setString(11,s11);
              ps.setString(12,s12);
              ps.setString(13,s13);
              ps.setString(14,s14);
              ps.setString(15,s15);
              ps.setString(16,s16);
              ps.setString(17,s17);  
              ps.setString(18,s18); 
			  ps.setString(19,s19);  
              ps.setString(20,s20);
			   ps.setString(21,s21);
              ps.setString(22,s22);
              ps.setString(23,s23);
              ps.setString(24,s24);
              ps.setString(25,s25);
              ps.setString(26,s26);
              ps.setString(27,s27);  
              ps.setString(28,s28); 
			  ps.setString(29,s29);  
              ps.setString(30,s30);
			   ps.setString(31,s31);
              ps.setString(32,s32);
              ps.setString(33,s33);
              ps.setString(34,s34);
              ps.setString(35,s35);
              ps.setString(36,s36);
              ps.setString(37,s37);  
              ps.setString(38,s38); 
			  ps.setString(39,s39);  
              ps.setString(40,s40);
			   ps.setString(41,s41);
              ps.setString(42,s42);
              ps.setString(43,s43);
              ps.setString(44,s44);
              ps.setString(45,s5);
              ps.setString(46,s46);
              ps.setString(47,s47);  
              ps.setString(48,s48); 
			  ps.setString(49,s49);  
              ps.setString(50,s50);
			   ps.setString(51,s51);
              ps.setString(52,s52);
              ps.setString(53,s53);
              ps.setString(54,s54);
              ps.setString(55,s55);
              ps.setString(56,s6);
              ps.setString(57,s57);  
              ps.setString(58,s58); 
			  ps.setString(59,s59);  
              ps.setString(60,s60);
			   ps.setString(61,s61);
              ps.setString(62,s62);
              ps.setString(63,s63);
              ps.setString(64,s64);
              ps.setString(65,s65);
              ps.setString(66,s66);
              ps.setString(67,s67);  
              ps.setString(68,s68); 
			  ps.setString(69,s69);  
              ps.setString(70,s70);
			   ps.setString(71,s71);
              ps.setString(72,s72);
              ps.setString(73,s73);
              ps.setString(74,s74);
              ps.setString(75,s75);
              ps.setString(76,s76);
              ps.setString(77,s77);  
              ps.setString(78,s78); 
			  ps.setString(79,s79);  
              ps.setString(80,s80);
			   ps.setString(81,s81);
              ps.setString(82,s82);
              ps.setString(83,s83);
              ps.setString(84,s84);
              ps.setString(85,s85);
              ps.setString(86,s86);
              ps.setString(87,s87);  
              ps.setString(88,s88); 
			  ps.setString(89,s89);  
              ps.setString(90,s90);
			   ps.setString(91,s91);
              ps.setString(92,s92);
              ps.setString(93,s93);
              ps.setString(94,s94);
              ps.setString(95,s95);
              ps.setString(96,s96);
              ps.setString(97,s97);  
              ps.setString(98,s98); 
			  ps.setString(99,s99);  
              ps.setString(100,s100);
			   ps.setString(101,s101);
              ps.setString(102,s102);
              ps.setString(103,s103);
              ps.setString(104,s104);
              ps.setString(105,s105);
              ps.setString(106,s106);
              ps.setString(107,s107);  
              ps.setString(108,s108); 
			  ps.setString(109,s109);  
              ps.setString(110,s110);
			   ps.setString(111,s111);
              ps.setString(112,s112);
              ps.setString(113,s113);
              ps.setString(114,s114);
              ps.setString(115,s115);
              ps.setString(116,s116);
              ps.setString(117,s117);  
              ps.setString(118,s118); 
			  ps.setString(119,s119);  
              ps.setString(120,s120);
			   ps.setString(121,s121);
              ps.setString(122,s122);
              ps.setString(123,s123);
              ps.setString(124,s124);
              ps.setString(125,s125);
              ps.setString(126,s126);
              ps.setString(127,s127);  
              ps.setString(128,s128); 
			  ps.setString(129,s129);  
              ps.setString(130,s130);
			   ps.setString(131,s131);
              ps.setString(132,s132);
              ps.setString(133,s133);
              ps.setString(134,s134);
              ps.setString(135,s135);
              ps.setString(136,s136);
              ps.setString(137,s137);  
              ps.setString(138,s138); 
			  ps.setString(139,s139);  
              ps.setString(140,s140);
			   ps.setString(141,s141);
              ps.setString(142,s142);
              ps.setString(143,s143);
              ps.setString(144,s144);
              ps.setString(145,s145);
              ps.setString(146,s146);
              ps.setString(147,s147);  
              ps.setString(148,s148); 
			  ps.setString(149,s149);  
              ps.setString(150,s150);
			   ps.setString(151,s151);
              ps.setString(152,s152);
              ps.setString(153,s153);
              ps.setString(154,s154);
              ps.setString(155,s155);
              ps.setString(156,s156);
              ps.setString(157,s157);  
              ps.setString(158,s158); 
			  ps.setString(159,s159);  
              ps.setString(160,s160);
			   ps.setString(161,s161);
              ps.setString(162,s162);
              ps.setString(163,s163);
              ps.setString(164,s164);
              ps.setString(165,s165);
              ps.setString(166,s166);
              ps.setString(167,s167);  
              ps.setString(168,s168); 
			  ps.setString(169,s169);  
              ps.setString(170,s170);
			  ps.setString(171,s171);
              ps.setString(172,s172);
              ps.setString(173,s173);
              ps.setString(174,s174);
              ps.setString(175,s175);
              ps.setString(176,s176);
              ps.setString(177,s177);  
              ps.setString(178,s178); 
			  ps.setString(179,s179);  
              ps.setString(180,s180); 
			  ps.setString(181,s181);
              ps.setString(182,s182);
              ps.setString(183,s183);
              ps.setString(184,s184);
              ps.setString(185,s185);
              ps.setString(186,s186);
              ps.setString(187,s187);  
              ps.setString(188,s188); 
			  ps.setString(189,s189);  
              ps.setString(190,s190); 
			  ps.setString(191,s191);
              ps.setString(192,s192);
              ps.setString(193,s193);
              ps.setString(194,s194);
              ps.setString(195,s195);
              ps.setString(196,s196);
              ps.setString(197,s197);  
              ps.setString(198,s198); 
			  ps.setString(199,s199);  
              ps.setString(200,s200); 
			  ps.setString(201,s201);
              ps.setString(202,s202);
              ps.setString(203,s203);
              ps.setString(204,s204);
              ps.setString(205,s205);
              ps.setString(206,s206);
              ps.setString(207,s207);  
              ps.setString(208,s208); 
			  ps.setString(209,s209);  
              ps.setString(210,s210); 
		
                   
							 
                       
                           
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_BUSHING DETAILS.jsp");
                       }                         
        

       
           
            con.close();
        } catch (Exception e) 
        {
      out.print(e);
   out.print("unable to insert");
         }

       
%>



</body>


</html>
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


int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s= "insert into induce_voltage(test1,test2,test3,test4,test5,sup1,sup2,sup3,sup4,sup5,ter1,ter2,ter3,ter4,ter5,freq1,freq2,freq3,freq4,freq5,time1,time2,time3,time4,time5,res1,res2,res3,res4,res5) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
              ps=con.prepareStatement(s);
               ps.setString(1,s1);
                 ps.setString(2,s7);
                   ps.setString(3,s13);
                     ps.setString(4,s19);
                       ps.setString(5,s25);
                         ps.setString(6,s2);
                           ps.setString(7,s8);  
                           ps.setString(8,s14); 
                           ps.setString(9,s20);
                             ps.setString(10,s26);
							 ps.setString(11,s3);
                 ps.setString(12,s9);
                   ps.setString(13,s15);
                     ps.setString(14,s21);
					  ps.setString(15,s27);
                         ps.setString(16,s4);
                           ps.setString(17,s10);  
                           ps.setString(18,s16); 
                           ps.setString(19,s22);
                             ps.setString(20,s28);
							  ps.setString(21,s5);
                 ps.setString(22,s11);
                   ps.setString(23,s17);
                     ps.setString(24,s23);
                       ps.setString(25,s29);
                         ps.setString(26,s6);
                           ps.setString(27,s12);  
                           ps.setString(28,s18); 
                           ps.setString(29,s24);
                             ps.setString(30,s30);
							 
                       
                           
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_induced_over_voltage.jsp");
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
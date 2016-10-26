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

int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s= "update hv_and_iv_magnetic_balance_test_at_normal_tap_no set 1U_N_1U_N=?,1V_N_1U_N=?,1W_N_1U_N=?,2U_N_1U_N=?,2V_N_1U_N=?,2W_N_1U_N=?,1U_N_1V_N=?,1V_N_1V_N=?,1W_N_1V_N=?,2U_N_1V_N=?,2V_N_1V_N=?,2W_N_1V_N=?,1U_N_1W_N=?,1V_N_1W_N=?,1W_N_1W_N=?,2U_N_1W_N=?,2V_N_1W_N=?,2W_N_1W_N=?";
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
                        
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_HV AND IV MAGNETIC BALANCE TEST AT NORMAL TAP NO.jsp");
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
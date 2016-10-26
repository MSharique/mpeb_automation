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
<%String tap=new String();%>
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
<%String s20=new String();%>
<%String s21=new String();%>
<%String s22=new String();%>
<%String s23=new String();%>

<%String s24=new String();%>
<%String s25=new String();%>
<%String s26=new String();%>
<%String s27=new String();%>
<% Connection con =null;

 tap=request.getParameter("tap_no");
 s1 = request.getParameter("1");
 s2 = request.getParameter("2");
 s3 = request.getParameter("3");
 s4 = request.getParameter("4");
 s5 = request.getParameter("5");
 s6 = request.getParameter("6");
 s7 = request.getParameter("7");
 s8 = request.getParameter("8");
 s9 = request.getParameter("9");
 s10 = request.getParameter("10");
 s11 = request.getParameter("11");
 s12 = request.getParameter("12");
 s13 = request.getParameter("13");
 s14 = request.getParameter("14");
  s15 = request.getParameter("15");
   s16 = request.getParameter("16");
    s17 = request.getParameter("17");
	 s18 = request.getParameter("18");
	  s19 = request.getParameter("19");
	   s20 = request.getParameter("20");
	    s21 = request.getParameter("21");
		 s22 = request.getParameter("22");
		  s23 = request.getParameter("23");
		   s24 = request.getParameter("24");
		    s25 = request.getParameter("25");
			 s26 = request.getParameter("26");
			  s27 = request.getParameter("27");
			  

int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
			  String s="INSERT INTO d1_1(Tap_no,Magnetic_Balance_Test_Carried_out_on_HV_1U_N_1U_N,Magnetic_Balance_Test_Carried_out_on_HV_1U_N_1V_N,Magnetic_Balance_Test_Carried_out_on_HV_1U_N_1W_N,Magnetic_Balance_Test_Carried_out_on_HV_1V_N_1U_N,Magnetic_Balance_Test_Carried_out_on_HV_1V_N_1V_N,Magnetic_Balance_Test_Carried_out_on_HV_1V_N_1W_N,Magnetic_Balance_Test_Carried_out_on_HV_1W_N_1U_N,Magnetic_Balance_Test_Carried_out_on_HV_1W_N_1V_N,Magnetic_Balance_Test_Carried_out_on_HV_1W_N_1W_N,Magnetic_Balance_Test_Carried_out_on_IV_2U_N_2U_N,Magnetic_Balance_Test_Carried_out_on_IV_2U_N_2V_N,Magnetic_Balance_Test_Carried_out_on_IV_2U_N_2W_N,Magnetic_Balance_Test_Carried_out_on_IV_2V_N_2U_N,Magnetic_Balance_Test_Carried_out_on_IV_2V_N_2V_N,Magnetic_Balance_Test_Carried_out_on_IV_2V_N_2W_N,Magnetic_Balance_Test_Carried_out_on_IV_2W_N_2U_N,Magnetic_Balance_Test_Carried_out_on_IV_2W_N_2V_N,Magnetic_Balance_Test_Carried_out_on_IV_2W_N_2W_N,Magnetic_Balance_Test_Carried_out_on_LV_3U_N_3U_N,Magnetic_Balance_Test_Carried_out_on_LV_3U_N_3V_N,Magnetic_Balance_Test_Carried_out_on_LV_3U_N_3W_N,Magnetic_Balance_Test_Carried_out_on_LV_3V_N_3U_N,Magnetic_Balance_Test_Carried_out_on_LV_3V_N_3V_N,Magnetic_Balance_Test_Carried_out_on_LV_3V_N_3W_N,Magnetic_Balance_Test_Carried_out_on_LV_3W_N_3U_N,Magnetic_Balance_Test_Carried_out_on_LV_3W_N_3V_N, Magnetic_Balance_Test_Carried_out_on_LV_3W_N_3W_N)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
              ps=con.prepareStatement(s);
               ps.setString(1,tap);
			   ps.setString(2,s1);
                 ps.setString(3,s2);
                   ps.setString(4,s3);
                     ps.setString(5,s4);
                       ps.setString(6,s5);
                         ps.setString(7,s6);
                           ps.setString(8,s7);  
                           ps.setString(9,s8); 
                           ps.setString(10,s9);
                             ps.setString(11,s10);
                                 ps.setString(12,s11);
                                     ps.setString(13,s12);
                                         ps.setString(14,s13);
										    ps.setString(15,s14);
										  ps.setString(16,s15);
										  ps.setString(17,s16);
										  ps.setString(18,s17);
										  ps.setString(19,s18);
										  ps.setString(20,s19);
										  ps.setString(21,s20);
										  ps.setString(22,s21);
										  ps.setString(23,s22);
										  ps.setString(24,s23);
										  ps.setString(25,s24);
										  ps.setString(26,s25);
										  ps.setString(27,s26);
										  ps.setString(28,s27);
                           
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_factory_test_result_1.jsp");
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

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

String s1 = request.getParameter("textfield1");
String s2 = request.getParameter("textfield2");
String s3 = request.getParameter("textfield3");
String s4 = request.getParameter("textfield4");
String s5 = request.getParameter("textfield5");
String s6 = request.getParameter("textfield6");
String s7 = request.getParameter("textfield7");
String s8 = request.getParameter("textfield8");
String s9 = request.getParameter("textfield9");
String s10 = request.getParameter("textfield10");
String s11 = request.getParameter("textfield11");
String s12 = request.getParameter("textfield12");
String s13 = request.getParameter("textfield13");
String s14 = request.getParameter("textfield14");
String s15 = request.getParameter("textfield15");
String s16 = request.getParameter("textfield16");
String s17 = request.getParameter("textfield17");
String s18 = request.getParameter("textfield18");
String s19 = request.getParameter("textfield19");
String s20 = request.getParameter("textfield20");
String s21 = request.getParameter("textfield21");
String s22 = request.getParameter("textfield22");
String s23 = request.getParameter("textfield23");
String s24 = request.getParameter("textfield24");
String s25 = request.getParameter("textfield25");
String s26 = request.getParameter("textfield26");
String s27 = request.getParameter("textfield27");



int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
             String s="INSERT INTO magnetising_current_test_result (`date`, `Routing_Tripping`, `HV_3phase_volt_1U_1V`, `HV_3phase_volt_1V_1W`, `HV_3phase_volt_1W_1U`, `HV_3phase_current_1U`, `HV_3phase_current_1V`, `HV_3phase_current_1W`, `HV_single_phase_volt_1U_1N`, `HV_single_phase_volt_1V_1N`, `HV_single_phase_volt_1W_1N`, `HV_single_phase_current_1U`, `HV_single_phase_current_1V`, `HV_single_phase_current_1W`, `IVLV_3phase_volt_1U_1V`, `IVLV_3phase_volt_1V_1W`, `IVLV_3phase_volt_1W_1U`, `IVLV_3phase_current_1U`, `IVLV_3phase_current_1V`, `IVLV_3phase_current_1W`, `IVLV_single_phase_volt_1U_1N`, `IVLV_single_phase_volt_1V_1N`, `IVLV_single_phase_volt_1W_1N`, `IVLV_single_phase_current_1U`, `IVLV_single_phase_current_1V`, `IVLV_single_phase_current_1W`, remarks_and_name_of_engineer)VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
                                                                                   
                                                                         
                                           
                                             
                                       
                                       
                             
                           
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_MAGNETISING CURRENT TEST RESULT.jsp");
                       }                         
        

       
           
            con.close();
        } catch (Exception e) 
        {
      out.print(e);
   out.print("unable to insert");
         }

       
%>



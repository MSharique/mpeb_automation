
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

String s1 = request.getParameter("Date");
String s2 = request.getParameter("Time");
String s3 = request.getParameter("Megger details &S. No.");
String s4 = request.getParameter("Oil Temp");
String s5 = request.getParameter("M.F.");
String s6 = request.getParameter("Routine/Tripping");
String s7 = request.getParameter("HV-E_15 sec");
String s8 = request.getParameter("HV-E_60 sec");
String s9 = request.getParameter("HV-E_600 sec");
String s10 = request.getParameter("HV-E_PI 600/ 60/15 sec");
String s11 = request.getParameter("HV-E_IR Value");
String s12 = request.getParameter("IV-E_15 sec");
String s13 = request.getParameter("IV-E_60 sec");
String s14 = request.getParameter("IV-E_600 sec");
String s15 = request.getParameter("IV-E_PI 600/ 60/15 sec");
String s16 = request.getParameter("IV-E_IR Value");
String s17 = request.getParameter("LV-E_15 sec");
String s18 = request.getParameter("LV-E_60 sec");
String s19 = request.getParameter("LV-E_600 sec");
String s20 = request.getParameter("LV-E_PI 600/ 60/15 sec");
String s21 = request.getParameter("LV-E_IR Value");
int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
             String s="INSERT INTO ir_values_details_of_transformer_i (date,time,megger_details_and_SNo, oil_temp,M_F, routing_tripping,HV_15_sec,HV_60_sec,HV_600_sec, HV_PI_600_60_15_sec, HV_IR_value_converted_at_60_C,IV_15_sec,IV_60_sec,IV_600_sec,IV_PI_600_60_15_sec,IV_IR_value_converted_at_60_C,LV_15_sec,LV_60_sec,LV_600_sec,LV_PI_600_60_15_sec,LV_IR_value_converted_at_60_C)VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
                                           
                                             
                                       
                                       
                             
                           
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_IR VALUES DETAILS OF TRANSFORMER I.jsp");
                       }                         
        

       
           
            con.close();
        } catch (Exception e) 
        {
      out.print(e);
   out.print("unable to insert");
         }

       
%>



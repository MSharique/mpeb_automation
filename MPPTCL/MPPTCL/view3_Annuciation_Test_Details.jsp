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

String s1 = request.getParameter("date");
String s2 = request.getParameter("reason");
String s3 = request.getParameter("OTA");
String s4 = request.getParameter("OTT");
String s5 = request.getParameter("WTA");
String s6 = request.getParameter("WTT");
String s7 = request.getParameter("PRV1");
String s8 = request.getParameter("PRV2");
String s9 = request.getParameter("PRV3");
String s10 = request.getParameter("OLTC");
String s11 = request.getParameter("main_alarm");
String s12 = request.getParameter("main_trip");
String s13 = request.getParameter("oil");
String s14 = request.getParameter("differential");
String s15 = request.getParameter("HV");
String s16 = request.getParameter("IV");
String s17 = request.getParameter("mastertrip");
String s18 = request.getParameter("CBair");
String s19 = request.getParameter("CBSF6");
String s20 = request.getParameter("remarks");

int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s= "insert into annunciation_test_details (Date_of_Teting,Reason_of_testing_maintenance,OTA,OTT,WTA,WTT,PRV1_trip,PRV2_trip,PRV3_trip,OLTC_buchhoiztrip,main_buchhalarm,main_bucchtrip,low_oil_level_alarm,differential_trip,HV_over_current_trip,IV_over_current_and_EF_trip,master_trip,CB_low_air_pressure_alarm,CB_low_SF6_alarm,Remarks_and_name_of_Engineer) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
							 ps.setString(11,s1);
                 ps.setString(12,s12);
                   ps.setString(13,s13);
                     ps.setString(14,s14);
                       ps.setString(15,s15);
                         ps.setString(16,s16);
                           ps.setString(17,s17);  
                           ps.setString(18,s18); 
                           ps.setString(19,s19);
                             ps.setString(20,s20);
                           
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_Annuciation_Test_Details.jsp");
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
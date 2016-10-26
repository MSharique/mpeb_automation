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

String s1 = request.getParameter("Date of sampling");
String s2 = request.getParameter("Weather Condition & Temp");
String s3 = request.getParameter("Top/Bottom Sample");
String s4 = request.getParameter("Date of Testing");
String s5 = request.getParameter("Name of Testing lab.");
String s6 = request.getParameter("Routine / Tripping");
String s7 = request.getParameter("Tan Delta at 90 C");
String s8 = request.getParameter("Moisture Content (PPM)");
String s9 = request.getParameter("Density");
String s10 = request.getParameter("IFT");
String s11 = request.getParameter("Flash Point");
String s12 = request.getParameter("Resistivity");
String s13 = request.getParameter("BDV");
String s14 = request.getParameter("Acidity");
String s15 = request.getParameter("Moisture Content");
String s16 = request.getParameter("BDV_oltc");
String s17 = request.getParameter("Relative Saturation");
String s18 = request.getParameter("Remarks Name & Sign of Engineer");
int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s= "INSERT INTO test_results_of_transformer_oil (date_of_sampling,weather_condition_and_temp, top_bottom_sample, date_of_testing, name_of_testing_lab, routing_tripping, tan_delta_at_90_C,moisture_content_PPM, density,IFT, flash_point, resistivity,BDV, acidity,OLTC_moisture_content,OLTC_BDV, relative_saturation,remarks_and_name_of_engineer) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
                   response.sendRedirect("view_TEST RESULTS OF TRANSFORMER OIL.jsp");
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
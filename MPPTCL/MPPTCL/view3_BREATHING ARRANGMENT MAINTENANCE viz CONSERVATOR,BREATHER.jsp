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
String s2 = request.getParameter("CSB");
String s3 = request.getParameter("IAC");
String s4 = request.getParameter("Molmc");
String s5 = request.getParameter("MOG");
String s6 = request.getParameter("ACC");
String s7 = request.getParameter("APR");
String s8 = request.getParameter("TM");
String s9 = request.getParameter("MMBR");
String s10 = request.getParameter("remarks");
int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s= "insert into breathing_arrangment_maintenance (Date,changing_of_Silica_gel_of_Breather,Inflating_of_aircell_in_conservator,Making_up_oil_level_in_main_conservator,maintenance_of_MOG,attending_problem_in_pipeline_conc_conservator_and_main_tank,attending_problems_in_radiators,thermosyphon_maintenance,maintenance_of_main_Buchholz_relay,remarks_and_name_of_Engineer) values (?,?,?,?,?,?,?,?,?,?)";
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
                           
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_BREATHING_ARRANGMENT_MAINTENANCE_viz_CONSERVATOR_BREATHER.jsp");
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
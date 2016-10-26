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

String s1 = request.getParameter("textfield2");
String s2 = request.getParameter("textarea10");
String s3 = request.getParameter("textarea20");
String s4 = request.getParameter("textarea30");
String s5 = request.getParameter("textarea40");
String s6 = request.getParameter("textarea50");
String s7 = request.getParameter("textarea60");
String s8 = request.getParameter("textarea70");
String s9 = request.getParameter("textarea80");
String s10=request.getParameter("textarea90");
int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s= "INSERT INTO checking_of_neutral_earthing_arrangement (`Date`, reason_for_maintenance, `condition_of_1st_neutral_earthing_conductor_of_HV_Neutral`, `condition_of_2nd_neutral_earthing_conductor_of_HV_Neutral`, `condition_of_1st_neutral_earthing_conductor_of_LV_Neutral`, `condition_of_2nd_neutral_earthing_conductor_of_LV_Neutral`, condition_of_clamps_of_all_four_neutral_earthing_conductors, `condition_of_clamps_and_earth_flats_of_LA_earthing_at_earth_pits`, condition_of_clamps_and_coductors_of_ransformer_body_earthing, `remarks_and_name_of_Engineer`)  values (?,?,?,?,?,?,?,?,?,?)";
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
                   response.sendRedirect("view_CHECKING_OF_NEUTRAL_EARTHING_ARRANGEMENT_LIKE_CONDITION_OF_CLAMPS_and_CONDUCTORS.jsp");
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
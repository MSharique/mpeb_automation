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
String s2 = request.getParameter("vib_1st Point");
String s3 = request.getParameter("vib_2nd Point");
String s4 = request.getParameter("vib_3rd Point");
String s5 = request.getParameter("vib_4th Point");
String s6 = request.getParameter("vib_5th Point");
String s7 = request.getParameter("vib_Remarks and Name of Engeineer");
String s8 = request.getParameter("noi_1st Point");
String s9 = request.getParameter("noi_2nd Point");
String s10 = request.getParameter("noi_3rd Point");
String s11 = request.getParameter("noi_4th Point");
String s12 = request.getParameter("noi_5th Point");
String s13 = request.getParameter("noi_Remarks and Name of Engeineer");

int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s="INSERT INTO measurement_of_vibration_and_noise (date, vibration_1st_point, vibration_2nd_point, vibration_3rd_point, vibration_4th_point, vibration_5th_point, vibration_remarks_and_name_of_engineer, noise_1st_point, noise_2nd_point, noise_3rd_point, noise_4th_point, noise_5th_point,noise_remarks_and_name_of_engineer) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
                           
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_MEASUREMENT OF VIBRATION AND NOISE.jsp");
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
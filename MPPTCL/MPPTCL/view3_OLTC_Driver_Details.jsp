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




int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
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

              String s= "update oltc_driver_details set Motor_rating_Data=?,Power=?,Voltage=?,Current=?,Frequency=?,Synchronous_Speed=?,Revolution_of_Driving_Shaft_per_tap_change=?,Running_Speed_for_one_tap_change_operation=?,Revoluion_of_Crank_Shaft_per_tap_change_operation=?,Maximum_No_of_Operating_positions=?,Control_Voltage=?,Wieght=?,Total_No_of_Taps=?,Sr_No=?";
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
                                                
                       
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_OLTC_Driver_Details.jsp");
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
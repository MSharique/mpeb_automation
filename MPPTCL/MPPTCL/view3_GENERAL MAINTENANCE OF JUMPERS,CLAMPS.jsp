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
String s2 = request.getParameter("date");
String s3 = request.getParameter("reason");
String s4 = request.getParameter("details");
String s5 = request.getParameter("remarks");


 int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s= "insert into general_maintenance (date,reason_for_maintenance_Routine_forced,details_of_works_carried_out,remarks_and_name_of_Engineer) values (?,?,?,?)";
              ps=con.prepareStatement(s);
               ps.setString(1,s2);
                 ps.setString(2,s3);
                   ps.setString(3,s4);
                     ps.setString(4,s5);
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                       response.sendRedirect("view_GENERAL MAINTENANCE OF JUMPERS,CLAMPS.jsp");
                       }                         
        

       
           
            con.close();
        } catch (Exception e) 
        {
      
   out.print("unable to insert");
         }

       
%>


</body>


</html>
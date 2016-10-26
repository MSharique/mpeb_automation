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

String s1 = request.getParameter("textarea1");
String s2 = request.getParameter("textarea2");
String s3 = request.getParameter("textfield3");
String s4 = request.getParameter("textfield4");
String s5 = request.getParameter("textfield5");
String s6 = request.getParameter("textfield6");
String s7 = request.getParameter("textfield7");
String s8 = request.getParameter("textarea8");
int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s= "INSERT INTO details_of_oil_placement_and_reconditioning_works (activity, purpose, parameters_temperature, parameters_vaccum, `from_date_time`, `to_date_time`, duration_hrs, remarks_and_name_of_engineer)  values (?,?,?,?,?,?,?,?)";
              ps=con.prepareStatement(s);
               ps.setString(1,s1);
                 ps.setString(2,s2);
                   ps.setString(3,s3);
                     ps.setString(4,s4);
                       ps.setString(5,s5);
                         ps.setString(6,s6);
                           ps.setString(7,s7);  
                           ps.setString(8,s8); 
                        
                           
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_DETAILS_OF_OIL_REPLACEMENT_OR_RECONDITIONING_WORKS.jsp");
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
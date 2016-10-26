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
String s2 = request.getParameter("HV Side Neutral Earthing");
String s3 = request.getParameter("LV Side Neutral Earthing");
String s4 = request.getParameter("HV side L.A. Earthing type");
String s5 = request.getParameter("IV side L.A. Earthing");
String s6 = request.getParameter("LV side L.A. Earthing");
String s7 = request.getParameter("Remarks & Name of Engineer");
int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s= "INSERT INTO transformer_earthpits_ressistance_measurement (date,HV_side_neutral_earthing,LV_side_neutral_earthing,HV_side_LA_earthing,IV_side_LA_earthing,LV_side_LA_earthing,remarks_and_name_of_engineer) values (?,?,?,?,?,?,?)";
              ps=con.prepareStatement(s);
               ps.setString(1,s1);
                 ps.setString(2,s2);
                   ps.setString(3,s3);
                     ps.setString(4,s4);
                       ps.setString(5,s5);
                         ps.setString(6,s6);
                           ps.setString(7,s7);  
                         
                           
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_TRANSFORMER EARTHPITS RESSISTANCE MEASUREMENT.jsp");
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
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
String s2 = request.getParameter("1U");
String s3 = request.getParameter("1V");
String s4 = request.getParameter("1W");
String s5 = request.getParameter("N");
String s6 = request.getParameter("2U");
String s7 = request.getParameter("2V");
String s8 = request.getParameter("2W");
String s9 = request.getParameter("N");
String s10 = request.getParameter("3U");
String s11 = request.getParameter("3V");
String s12 = request.getParameter("3W");
String s13 = request.getParameter("Remarks Name & signature of Engineer");

int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s="insert into ir_values_of_bushing (date,1U,1V, 1W,IR_N,2U,2V,2W,N,3U,3V,3W, remarks_and_name_of_engineer) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
                   response.sendRedirect("view_IR VALUES OF BUSHING.jsp");
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
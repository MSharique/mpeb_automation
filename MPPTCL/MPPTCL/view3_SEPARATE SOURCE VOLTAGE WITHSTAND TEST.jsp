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

String s1 = request.getParameter("1");
String s2 = request.getParameter("2");
String s3 = request.getParameter("3");
String s4 = request.getParameter("4");
String s5 = request.getParameter("5");
String s6 = request.getParameter("6");
String s7 = request.getParameter("7");
String s8 = request.getParameter("8");



int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s= "insert into separate_source_voltage(frequency1,frequency2,KV1,KV2,time1,time2,result1,result2)values(?,?,?,?,?,?,?,?)";
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
                   response.sendRedirect("view_SEPARATE SOURCE VOLTAGE WITHSTAND TEST.jsp");
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
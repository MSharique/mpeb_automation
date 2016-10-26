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

<%String s1=new String();%>
<%String s2=new String();%>
<%String s3=new String();%>
<%String s4=new String();%>
<%String s5=new String();%>
<%String s6=new String();%>
<%String s7=new String();%>
<% Connection con=null;
s1 = request.getParameter("1");
 s2 = request.getParameter("2");
 s3 = request.getParameter("3");
 s4 = request.getParameter("4");
 s5 = request.getParameter("5");
 s6 = request.getParameter("6");
 s7 = request.getParameter("7");
 
 int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
			  String s="insert into `mpeb2`.`mpeb_26_2`(TEST_VOLTAGE, KV_megger, Make_serail_NO, AMBIENT_TEMPERATURE,CORE_TO_TANK, CORE_TO_CORE_CLAMP, CORE_CLAMP_TO_TANK) values(?,?,?,?,?,?,?)";
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
                   response.sendRedirect("view_pre_commisioning_test_result_8.jsp");
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

 
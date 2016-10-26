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
<%String s8=new String();%>
<%String s9=new String();%>
<%String s10=new String();%>
<% Connection con=null;
s1 = request.getParameter("1");
 s2 = request.getParameter("2");
 s3 = request.getParameter("3");
 s4 = request.getParameter("4");
 s5 = request.getParameter("5");
 s6 = request.getParameter("6");
 s7 = request.getParameter("7");
 s8 = request.getParameter("8");
 s9 = request.getParameter("9");
 s10 = request.getParameter("10");
 int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://localhost:3306/mpeb2","root","lokesh");
			  String s="insert into `mpeb2`.`mpeb_26_3`(LEAKAGE_CURRENT_MEASUREMENT, VOLTAGE_GIVEN_ON_HV_SIDE_1U_1V,VOLTAGE_GIVEN_ON_HV_SIDE_1V_1W, VOLTAGE_GIVEN_ON_HV_SIDE_1W_1U, CURRENT_MEASURED_ON_HV_SIDE_1U, CURRENT_MEASURED_ON_HV_SIDE_1V, CURRENT_MEASURED_ON_HV_SIDE_1W, CURRENT_MEASURED_Core_Clamp_Tank, CURRENT_MEASURED_Core_Core_Charge, CURRENT_MEASURED_Core_Tank) values(?,?,?,?,?,?,?,?,?,?)";
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
                   response.sendRedirect("view_pre_commisioning_test_result_9.jsp");
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

 
	
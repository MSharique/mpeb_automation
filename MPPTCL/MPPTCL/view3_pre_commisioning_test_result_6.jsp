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
<%String s11=new String();%>
<%String s12=new String();%>
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
 s11 = request.getParameter("11");
 s12 = request.getParameter("12");
  int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
			  String s="insert into `mpeb2`.`lv_magnetic_current_test_at_normal_tap_no` (3U_3V_3U_3V, 3V_3W_3U_3V, 3W_3U_3U_3V, 3U_3V_3V_3W, 3V_3W_3V_3W, 3W_3U_3V_3W, 3U_3V_3W_3U, 3V_3W_3W_3U, 3W_3U_3W_3U, voltage_1, voltage_2, voltage_3) values (?,?,?,?,?,?,?,?,?,?,?,?)";			
                           ps=con.prepareStatement(s);
                 ps.setString(1,s2);
                 ps.setString(2,s3);
                   ps.setString(3,s4);
                     ps.setString(4,s6);
                       ps.setString(5,s7);
                         ps.setString(6,s8);
                           ps.setString(7,s10);  
                           ps.setString(8,s11); 
                           ps.setString(9,s12);
                             ps.setString(10,s1);
                                 ps.setString(11,s5);
                                     ps.setString(12,s9);
                                         			 updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_pre_commisioning_test_result_6.jsp");
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

 

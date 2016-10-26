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
String s2 = request.getParameter("Routine/ Tripping");
String s3 = request.getParameter("Terminal where Voltage Applied1");
String s4 = request.getParameter("1U-N");
String s5 = request.getParameter("1V-N");
String s6 = request.getParameter("1W-N");
String s7 = request.getParameter("Terminal where Voltage Applied2");
String s8 = request.getParameter("2U-N");
String s9 = request.getParameter("2V-N");
String s10 = request.getParameter("2W-N");
String s11 = request.getParameter("Terminal where Voltage Applied3");
String s12 = request.getParameter("3U-3V");
String s13 = request.getParameter("3V-3W");
String s14 = request.getParameter("3W-3U");
String s15 = request.getParameter("Remarks & Sign of Engineer");



int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s= "INSERT INTO magnetic_balance_test_results (date, Routing_Tripping, HV_terminal_where_voltage_applied, HV_1U_N, HV_1V_N, HV_1W_N, IV_1U_N, IV_terminal_where_voltage_applied, IV_1V_N,IV_1W_N,LV_terminal_where_voltage_applied, LV_1U_N,LV_1V_N,LV_1W_N,remarks_and_name_of_engineer)  values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
                                            ps.setString(15,s15);
                           
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_MAGNETIC BALANCE TEST RESULTS.jsp");
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
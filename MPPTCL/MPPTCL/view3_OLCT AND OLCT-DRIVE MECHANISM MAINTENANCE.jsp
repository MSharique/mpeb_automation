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

String s1 = request.getParameter("Date of Maint");
String s2 = request.getParameter("Reason of Maint");
String s3 = request.getParameter("General Inspection");
String s4 = request.getParameter("Oil Replacement");
String s5 = request.getParameter("Ant other Maintenance carried out_1");
String s6 = request.getParameter("Gear system Maintenance");
String s7 = request.getParameter("Motor Maintenance");
String s8 = request.getParameter("Ant other Maintenance carried out_2");
String s9 = request.getParameter("oil topping");
String s10 = request.getParameter("Silica gel Changing of OLTC Breather");
String s11 = request.getParameter("Remarks and Name of Engineer");
int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s= "INSERT INTO olct_and_olct_drive_mechanism_maintenanceor_oper (date, reason,OLTC_general_inspection,OLTC_oil_replacement,OLTC_other_maintenance_carried_out, drive_gear_system_maintenance, drive_motor_maintenance, driveother_maintenance_carried_out, oil_topping,silica_gel_changing_of_OLTC_breather,remarks_and_name_of_engineer)  values (?,?,?,?,?,?,?,?,?,?,?)";
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
                           
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_OLCT AND OLCT-DRIVE MECHANISM MAINTENANCE.jsp");
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
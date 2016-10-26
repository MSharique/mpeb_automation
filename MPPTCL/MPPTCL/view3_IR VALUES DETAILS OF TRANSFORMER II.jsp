
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

String s1 = request.getParameter("textfield1");
String s2 = request.getParameter("textfield2");
String s3 = request.getParameter("textfield3");
String s4 = request.getParameter("textfield4");
String s5 = request.getParameter("textfield5");
String s6 = request.getParameter("textfield6");
String s7 = request.getParameter("textfield7");
String s8 = request.getParameter("textfield8");
String s9 = request.getParameter("textfield9");
String s10 = request.getParameter("textfield10");
String s11 = request.getParameter("textfield11");
String s12 = request.getParameter("textfield12");
String s13 = request.getParameter("textfield13");
String s14 = request.getParameter("textfield14");
String s15 = request.getParameter("textfield15");
String s16 = request.getParameter("textfield16");
String s17 = request.getParameter("textfield17");
String s18 = request.getParameter("textfield18");

int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
     String s="INSERT INTO ir_values_details_of_transformer_ii (`date`, `time`, `HV_LV_15_sec`, `HV_LV_60_sec`, `HV_LV_600_sec`, `HV_LV_PI_600_60_15_sec`, `HV_LV_IR_value_converted_at_60_C`, `HV_IV_15_sec`, `HV_IV_60_sec`, `HV_IV_600_sec`, `HV_IV_PI_600_60_15_sec`, `HV_IV_IR_value_converted_at_60_C`, `LV_IV_15_sec`, `LV_IV_60_sec`, `LV_IV_600_sec`, `LV_IV_PI_600_60_15_sec`, `LV_IV_IR_value_converted_at_60_C`, `remarks_name_and_sign_of_Engineer`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
                                        ps.setString(16,s16);
                                         ps.setString(17,s17);
                                         ps.setString(18,s18);
                                       
                                           
                                             
                                       
                                       
                             
                           
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_IR VALUES DETAILS OF TRANSFORMER II.jsp");
                       }                         
        

       
           
            con.close();
        } catch (Exception e) 
        {
      out.print(e);
   out.print("unable to insert");
         }

       
%>



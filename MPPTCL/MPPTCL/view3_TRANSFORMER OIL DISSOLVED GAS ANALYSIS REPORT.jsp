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

String s1 = request.getParameter("Date of Sam-pling");
String s2 = request.getParameter("Date of Testing");
String s3 = request.getParameter("Tested at Lab.");
String s4 = request.getParameter("Total Gas Content");
String s5 = request.getParameter("Methane CH4 PPM");
String s6 = request.getParameter("Ethane c2h6 PPM");
String s7 = request.getParameter("EThy-lene C2H4 PPM");
String s8 = request.getParameter("Ace-tylene C2H2 PPM");
String s9 = request.getParameter("Nitr-ogen N2 PPM");
String s10 = request.getParameter("Hydr-ogen H2 PPM");
String s11 = request.getParameter("Carbon mono-oxide CO PPM");
String s12 = request.getParameter("Carbon di-oxide CO2 PPM");
String s13 = request.getParameter("Other Gases");
String s14 = request.getParameter("Interpretation By Testing Lab.");
String s15 = request.getParameter("Corrective Action Taken");
String s16 = request.getParameter("Remarks");

int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
            
              String s="INSERT INTO transformer_oil_dissolved_gas_analysis_report (date_of_sampling, date_of_testing, tested_at_lab, total_gas_content, methan_ppm, ethane_ppm, ethylene_ppm, acetylene_ppm, nitrogen_ppm, hydrogen_ppm, carbon_monooxide_ppm,carbon_di_oxode_ppm, other_gases, interpretation_by_testing_lab, corrective_action_taken, remarks)  values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
                           
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_TRANSFORMER OIL DISSOLVED GAS ANALYSIS REPORT.jsp");
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
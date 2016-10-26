<%@page import ="javax.servlet.*"%>
<%@page import ="javax.servlet.http.*"%>
<%@page import ="java.io.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>TRANSFORMER OIL DISSOLVED GAS ANALYSIS REPORT </title><style type="text/css">

body,td,th {
	color: #000;
}
body {
	background-image: url(website-backgrounds-download-hd-from-hd.jpg);
}
</style>
</head>

<body style="background-color: lavender">
<div align="right">
  <table width="100" border="0">
    <tr>
      <td><div align="right"><a href="index.html">back to index</a></div></td>
    </tr>
    <tr>
      <td><div align="right"><a href="index2.html">logout</a></div></td>
    </tr>
  </table>
</div>

<body>
<% Connection con=null;%>

<%  String s1=request.getParameter("1");
    String s2=request.getParameter("2");
    String s3=request.getParameter("3");
    String s4=request.getParameter("4");
    String s5=request.getParameter("5");
    String s6=request.getParameter("6");
   %>
 <%String s=new String();%>
  <%int updateQuery=0;
         PreparedStatement ps=null;
        try {
           
              Class.forName("com.mysql.jdbc.Driver");
              con =DriverManager.getConnection("jdbc:mysql://198.38.82.101:3306/aalogin_mpeb","aalogin_mpeb","L6?_i6#xUp02");
        
             s="INSERT INTO f_4 (1U_1W, 1V_1U, 1W_1V, Rav_at_tav, Phase_to_Phase, Phase_Value) values (?,?,?,?,?,?)";
              
              ps=con.prepareStatement(s);
               ps.setString(1,s1);
                 ps.setString(2,s2);
                   ps.setString(3,s3);
                     ps.setString(4,s4);
                       ps.setString(5,s5);
					      ps.setString(6,s6);
                        
                                      
                           
                     
                       updateQuery=ps.executeUpdate();
                       if(updateQuery !=0)
                             {
                   response.sendRedirect("view_factory_test_result_6_4.jsp");
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
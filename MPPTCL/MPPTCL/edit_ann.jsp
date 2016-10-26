<%@page language="java"%>
<%@page import="java.sql.*"%>
<form method="post" action="update.jsp">
<table border="1">
<tr><th>Name</th><th>Address</th><th>Contact No</th><th>Email</th><th></th></tr>
<%
String id=request.getParameter("id");
//int no=Integer.parseInt(id);
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/mpeb2", "root", "lokesh");
String query = "select * from annunciation_test_details";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
 <tr>
 					<td><div align="center"></div></td>
   					
    				<td ><input type="text" name="date"  style="width: 100%"></td>
                    <td><input type="text" name="reason"  size="40" style="width: 100% "></td>
                    <td><input type="text" name="OTA"   style="width: 100% "></td>
                    <td><input type="text" name="OTT"   style="width: 100% "></td>
                    <td><input type="text" name="WTA"  style="width: 100%"></td>
                    <td><input type="text" name="WTT"   style="width: 100% "></td>
                    <td><input type="text" name="PRV1"   style="width: 100% "></td>
                    <td><input type="text" name="PRV2"  style="width: 100%"></td>
                    <td><input type="text" name="PRV3"  style="width: 100% "></td>
                    <td><input type="text" name="OLTC"   style="width: 100% "></td>
                    <td><input type="text" name="main_alarm"  style="width: 100% "></td>
                    <td><input type="text" name="main_trip"  style="width: 100%"></td>
                    <td><input type="text" name="oil" style="width: 100% "></td>
                    <td><input type="text" name="differential"  style="width: 100% "></td>
                    <td><input type="text" name="HV"   style="width: 100% "></td>
                    <td><input type="text" name="IV"  style="width: 100%"></td>
                    <td><input type="text" name="mastertrip"   style="width: 100%"></td>
                    <td><input type="text" name="CBair"   style="width: 100% "></td>
                    <td><input type="text" name="CBSF6"   style="width: 100%"></td>
                    <td><input type="text" name="remarks" size="40"  style="width: 100%"></td>
                    <td><input type="hidden" name="id" value="<%=rs.getString(1)%>"></td>
  </tr>
<tr>
<td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
</tr>
<%
}
}
catch(Exception e){}
%>
</table>
</form>


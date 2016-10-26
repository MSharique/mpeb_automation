<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
body {
	background-image: url(last1.JPG);
}
</style>
</head>

<body>
 <div align="right">
   <p align="center">&nbsp;</p>
   
   <p align="center">&nbsp;</p>
   <p align="center"><img src="MP Power Transmission Co. Ltd.jpg" alt="" width="239" height="189" /></p>
   <p align="center">&nbsp;</p>
</div>

<form id="form1" name="form1" method="post" action="userdetail.jsp">

  <div align="center">
    <table width="504" height="54" border="1">
      <tr>
        <td width="92" height="23"><div align="center">Division </div></td>
        <td width="402"><div align="center">
          <% String s1 = request.getParameter("select"); %>
          <%=s1%>
          <% String s2 = "Sorry";%>
          
        </div></td>
      </tr>
      
      
      
      
      
      
      
      
      
      <tr>
        <td height="23"><div align="center">Sub Station</div></td>
        <td><div align="center">
          <select name="select" id="select" size="1">
          <%  if(s1.equals("TESTING DN.I JABALPUR")) {%>
          
          
            <option value="220KV JABALPUR">220KV JABALPUR</option>
            <option value="132KV VF JBP">132KV VF JBP</option>
            <option value="132KV SHAHPURA">132KV SHAHPURA</option>
            <option value="132KV PATAN">132KV PATAN</option>
            <option value="220KV SUKHA">220KV SUKHA</option>
            <option value="132KV MADOTAL">132KV MADOTAL</option>
          
          <%}%>
          <% if(s1.equals("TESTING DN. KATNI")){%>
          
            <option value="400KV KATNI">400KV KATNI</option>
            <option value="220KV KATNI">220KV KATNI</option>
            <option value="132KV KATNI">132KV KATNI</option>
            <option value="132KV MANSAKRA(SIHORA)">132KV MANSAKRA(SIHORA)</option>
            <option value="132KV KYMORE">132KV KYMORE</option>
            <option value="132KV SHEMANABAD">132KV SHEMANABAD</option>
           
          
          <%}%>
          <% if(s1.equals("TESTING DN.II JABALPUR")){%>
         
            <option value="220KV NARSINGHPUR">220KV NARSINGHPUR</option>
            <option value="132KV NARSINGHPUR">132KV NARSINGHPUR</option>
            <option value="132KV V.B.JBP">132KV V.B.JBP</option>
            <option value="132KV GADARWARA">132 GADARWARA</option>
            <option value="132KV BARMAN">132KV BARMAN</option>
            <option value="132KV SHRINAGAR">132KV SHRINAGAR</option>
            <option value="132KV MANERI">132KV MANERI</option>
            <option value="132KV MANDLA(AMANALA)">132KV MANDLA(AMANALA)</option>
            <option value="132KV LAKHNADON">132KV LAKHNADON</option>
            <option value="132KV NAINPUR">132KV NAINPUR</option>
            <option value="132KV DINDORI">132KV DINDORI</option>
          
          
          <%}%>
          <% if(s1.equals("TESTING DN. SEONI")){%>
          
            <option value="220KV SEONI">220KV SEONI</option>
            <option value="132KV SEONI">132KV SEONI</option>
            <option value="132KV AMARWARA">132KV AMARWARA</option>
            <option value="132KV KATANGI">132KV KATANGI</option>
            <option value="132KV BALAGHAT">132KV BALAGHAT</option>
            <option value="132KV BHANEGAON">132KV BHANEGAON</option>
           
          
          <%}%>
          <% if(s1.equals("TESTING DN. CHHINDWARA")){%>
          
            <option value="220KV PANDHURNA">220KV PANDHURNA</option>
            <option value="132KV CHHINDWARA">132KV CHHINDWARA</option>
            <option value="132KV KHAPASWAMI">132KV KHAPASWAMI</option>
            <option value="132KV BOREGAON">132KV BOREGAON</option>
            <option value="132KV CHAURI">132KV CHAURI</option>
            <option value="66KV SAUSAR">66KV SAUSAR</option>
            <option value="220KV CHHINDWARA">220KV CHHINDWARA</option>
           
          
          <%}%>
          <% if(s1.equals("TESTING DN. SAGAR")){%>
         
            <option value="132KV SAGAR">132KV SAGAR</option>
            <option value="132KV GAOURJHAMAR">132KV GAOURJHAMAR</option>
            <option value="132KV GARHAKOTA">132KV GARHAKOTA</option>
            <option value="220KV SAGAR">220KV SAGAR</option>
            <option value="220KV DAMOH">220KV DAMOH</option>
            <option value="132KV DAMOH">132KV DAMOH</option>
            <option value="132KV HATTA">132KV HATTA</option>
            
          
          <%}%>
          <% if(s1.equals("TESTING DN. TIKAMGARH")){%>
         
            <option value="220KV TIKAMGARH">220KV TIKAMGARH</option>
            <option value="132KV TIKAMGARH">132KV TIKAMGARH</option>
            <option value="220KV CHHATARPUR">220KV CHHATARPUR</option>
            <option value="132KV BIJAWAR">132KV BIJAWAR</option>
            <option value="132KV PRITHIVIPUR">132KV PRITHIVIPUR</option>
            <option value="132KV JATARA">132KV JATARA</option>
            <option value="132KV KHAJURAHOO">132KV KHAJURAHOO</option>
            </select>
          
          <%}%>
          <% if(s1.equals("400K TESTING DN. BINA")){%>
         
            <option value="440KV BINA">440KV BINA</option>
            <option value="220KV BINA">220KV BINA</option>
          
          
          <%}%>
          <% if(s1.equals("TESTING DN. SATNA")){%>
          
            <option>220KV SATNA</option>
            <option>132KV SATNA</option>
            <option>220KV MAIHAR</option>
            <option value="132KV PANNA">132KV PANNA</option>
            <option value="132KV RAMPUR BAGHALAN">132KV RAMPUR BAGHALAN</option>
            <option value="132KV AMARPATAN">132KV AMARPATAN</option>
            <option value="132KV MAJHGAWAN">132KV MAJHGAWAN</option>
            <option value="132KV PAWAI">132KV PAWAI</option>
            <option value="132KV NAGOD">132KV NAGOD</option>
            <option value="220KV NAGOD">220KV NAGOD</option>
         
          
          <%}%>
          <% if(s1.equals("TESTING DN. SHAHDOL")){%>
          
        
            <option value="132 KV SHAHDOL">132 KV SHAHDOL</option>
            <option value="132KV KOTMA">132KV KOTMA</option>
            <option value="220KV BIRSINGHPUR">220KV BIRSINGHPUR</option>
            <option value="132KV UMARIYA">132KV UMARIYA</option>
            <option value="132KV BEOHARI">132KV BEOHARI</option>
        
          <%}%>
          <% if(s1.equals("TESTING DN. REWA")){%>
          
         
            <option value="220KV REWA">220KV REWA</option>
            <option value="132KV REWA">132KV REWA</option>
            <option value="220KV SIDHI">220KV SIDHI</option>
            <option value="132KV SIDHI">132KV SIDHI</option>
            <option value="132KV MORWA">132KV MORWA</option>
            <option value="132KV WAIDHAN">132KV WAIDHAN</option>
            <option value="132KV MANGAWAN">132KV MANGAWAN</option>
            <option value="132KV MAUGANJ">132KV MAUGANJ</option>
            <option value="132KV KATRA">132KV KATRA</option>
            <option value="132KV RAJMILAN">132KV RAJMILAN</option>
           
          <%}%>
          <% if(s1.equals("TESTING DN. UJJAIN")){%>
          
          
            <option value="220KV UJJAIN">220KV UJJAIN</option>
            <option value="132KV UJJAIN">132KV UJJAIN</option>
            <option value="132KV AGAR">132KV AGAR</option>
            <option value="132KV INGORIA">132KV INGORIA</option>
            <option value="132KV MAHIDPUR">132KV MAHIDPUR</option>
            <option value="132KV SUSNER">132KV SUSNER</option>
            <option value="132 KV MULLAPURA">132 KV MULLAPURA</option>
            <option value="132KV TARANA">132KV TARANA</option>
            <option value="220KV BADNAGAR">220KV BADNAGAR</option>
            <option value="220KV BADOD">220KV BADOD</option>
            <option value="132KV GHOSLA">132KV GHOSLA</option>
            <option value="132KV ZARDA">132KV ZARDA</option>
            <option value="132KV MAKDON">132KV MAKDON</option>
  
          <%}%>
          <% if(s1.equals("TESTING DN. DEWAS")){%>
        
            <option value="220KV DEWAS">220KV DEWAS</option>
            <option value="132KV SONKATCHH">132KV SONKATCHH</option>
            <option value="132KV DEWAS(MSP)">132KV DEWAS(MSP)</option>
            <option value="132KV DEWAS(BNP)">132KV DEWAS(BNP)</option>
            <option value="132KV CHAPDA">132KV CHAPDA</option>
            <option value="132KV SHAJAPUR">132KV SHAJAPUR</option>
            <option value="132KV PANWADI">132KV PANWADI</option>
            <option value="132KV KANNOD">132KV KANNOD</option>
            <option value="132KV MAXI">132KV MAXI</option>
            <option value="132KV KHATEGAON">132KV KHATEGAON</option>
            <option value="132KV BERCHHA">132KV BERCHHA</option>
           
          
          <%}%>
          <% if(s1.equals("TESTING DN. SUJALPUR")){%>
         
            <option value="220KV SHUJALPUR">220KV SHUJALPUR</option>
            <option value="132KV SHUJALPUR">132KV SHUJALPUR</option>
            <option value="132KV ARNIYAKALA">132KV ARNIYAKALA</option>
            <option value="132KV MOMIN BADODIA">132KV MOMIN BADODIA</option>
            <option value="132KV POLAIKALAN">132KV POLAIKALAN</option>
           
          
          <%}%>
          <% if(s1.equals("TESTING DN. RAJGARH (DHAR)")){%>
        
            <option>220KV RAJGARH</option>
            <option value="132KV RAJGARH">132KV RAJGARH</option>
            <option value="132KV JHABUA">132KV JHABUA</option>
            <option value="132KV MEGHNAGAR">132KV MEGHNAGAR</option>
            <option value="132KV ALIRAJPUR">132KV ALIRAJPUR</option>
            <option value="132KV KUKSHI">132KV KUKSHI</option>
            <option value="132KV PETLAWAD">132KV PETLAWAD</option>
            
          
          <%}%>
          <% if(s1.equals("TESTING DN. RATLAM")){%>
         
            <option>132KV ALOT</option>
            <option>132KV JAORA</option>
            <option>220KV RATLAM</option>
            <option value="132KV RATLAM">132KV RATLAM</option>
            <option value="132KV MANDSAUR">132KV MANDSAUR</option>
            <option value="132KV SUWASRA">132KV SUWASRA</option>
            <option value="132KV DALODA">132KV DALODA</option>
            <option value="132KV GAROTH">132KV GAROTH</option>
            <option value="132KV SAILANA">132KV SAILANA</option>
         
          
          <%}%>
          <% if(s1.equals("TESTING DN. NEEMUCH")){%>
          
            <option value="220KV NEEMUCH">220KV NEEMUCH</option>
            <option value="132KV NEEMUCH">132KV NEEMUCH</option>
            <option value="132KV MANASA">132KV MANASA</option>
            <option value="132KV MALHARGARH">132KV MALHARGARH</option>
            <option value="132KV RATANGARH">132KV RATANGARH</option>
            
          
          <%}%>
          <% if(s1.equals("400KV TESTING DN. NAGDA")){%>
         
            <option value="400KV NAGDA">400KV NAGDA</option>
            <option value="220KV NAGDA">220KV NAGDA</option>
            <option value="132KV KHACHROD">132KV KHACHROD</option>
          
          
          <%}%>
          <% if(s1.equals("TESTING DN.I INDORE")){%>
          
            <option>132KV INDORE(NZ)</option>
            <option value="132KV INDORE CHAMBAL">132KV INDORE CHAMBAL</option>
            <option value="132KV DEPALPUL">132KV DEPALPUL</option>
            <option value="12KV SANWER">12KV SANWER</option>
            <option value="132KV MANGLIA">132KV MANGLIA</option>
            <option value="132KV SATYA SAI IND.">132KV SATYA SAI IND.</option>
            <option value="220KV NIMRANI">220KV NIMRANI</option>
            <option value="132KV DHAMNOD">132KV DHAMNOD</option>
            <option value="132KV GAUTAMPURA">132KV GAUTAMPURA</option>
            <option value="220KV INDORE-II(JAITPURA)">220KV INDORE-II(JAITPURA)</option>
            <option value="220KV INDORE EAST (BICHOLI MARDANA)">220KV INDORE EAST (BICHOLI MARDANA)</option>
         
          
          <%}%>
          <% if(s1.equals("TESTING DN.II INDORE")){%>
        
            <option value="220KV PITHAMPUR">220KV PITHAMPUR</option>
            <option value="132KV DHAR">132KV DHAR</option>
            <option value="132KV PITHAMPUR">132KV PITHAMPUR</option>
            <option value="132KV GHATA BILLOD">132KV GHATA BILLOD</option>
            <option value="132KV MANAWAR">132KV MANAWAR</option>
            <option value="132KV BARWANI">132KV BARWANI</option>
            <option value="132KV KANWAN">132KV KANWAN</option>
            <option value="132KV INDORE WEST(NAVDHA PANTH)">132KV INDORE WEST(NAVDHA PANTH)</option>
            <option value="132KV BAGDI">132KV BAGDI</option>
            <option value="132KV BETMA">132KV BETMA</option>
            
          
          <%}%>
          <% if(s1.equals("TESTING DN. BARWAHA")){%>
      
            <option value="220KV BARAWAHA ">220KV BARAWAHA </option>
            <option value="132KV CHHOTIKHARGONE">132KV CHHOTIKHARGONE</option>
            <option value="132KV SANAWAD">132KV SANAWAD</option>
            <option value="132KV KHARGONE">132KV KHARGONE</option>
            <option value="220KV JULWANIA">220KV JULWANIA</option>
            <option value="132KV SENDHWA">132KV SENDHWA</option>
            <option value="132KV PANSEMAL">132KV PANSEMAL</option>
            <option value="132KV KASRAWAD">132KV KASRAWAD</option>
            <option value="132KV BHIKANGAON">132KV BHIKANGAON</option>
         
          
          <%}%>
          <% if(s1.equals("TESTING DN. KHANDWA")){%>
    
            <option value="132KV KHANDWA">132KV KHANDWA</option>
            <option value="132KV CHHEGAON MAKAN">132KV CHHEGAON MAKAN</option>
            <option value="220KV CHHEGAON">220KV CHHEGAON</option>
            <option value="220KV NEPANAGAR">220KV NEPANAGAR</option>
            <option value="132KV BAHADURPUR">132KV BAHADURPUR</option>
            <option value="132KV BURHANPUR">132KV BURHANPUR</option>
            <option value="132KV BADGAON">132KV BADGAON</option>
            <option value="132KV CHHANERA">132KV CHHANERA</option>
           
          
          <%}%>
          <% if(s1.equals("400KV TESTING DN INDORE")){%>
          
            <option value="400KV INDORE">400KV INDORE</option>
            <option value="220KV INDORE(SZ)">220KV INDORE(SZ)</option>
            <option value="132KV JAMLI">132KV JAMLI</option>
           
          
          <%}%>
          <% if(s1.equals("TESTING DN.I GWALIOR")){%>
       
            <option value="220KV GWALIOR">220KV GWALIOR</option>
            <option value="132KV MOTIJHEEL(GWL)">132KV MOTIJHEEL(GWL)</option>
            <option value="132KV BANMORE">132KV BANMORE</option>
            <option value="132KV TIGRA ROAD">132KV TIGRA ROAD</option>
            <option value="132KV MORAR">132KV MORAR</option>
           
          
          <%}%>
          <% if(s1.equals("TESTING DN. MORENA")){%>
      
            <option value="132KV MORENA">132KV MORENA</option>
            <option value="132KV AMBAH">132KV AMBAH</option>
            <option value="220KV SABALGARH">220KV SABALGARH</option>
            <option value="132KV JORA">132KV JORA</option>
            <option value="132KV PORSA">132KV PORSA</option>
         
          
          <%}%>
          <% if(s1.equals("TESTING DN. II GWALIOR")){%>
       
            <option value="220KV MEHGAON">220KV MEHGAON</option>
            <option value="132KV BHIND">132KV BHIND</option>
            <option value="132KV SEONDHA">132KV SEONDHA</option>
            <option value="132KV DATIA">132KV DATIA</option>
            <option value="132KV DABRA">132KV DABRA</option>
            <option value="220KV MALANPUR">220KV MALANPUR</option>
            <option value="132KV LAHAR">132KV LAHAR</option>
            <option value="132KV RON">132KV RON</option>
           
          
          <%}%>
          <% if(s1.equals("TESTING DN. GUNA")){%>
         
            <option value="220KV GUNA">220KV GUNA</option>
            <option value="132KV ASHOKNAGAR">132KV ASHOKNAGAR</option>
            <option value="132KV RAGHOGARH">132KV RAGHOGARH</option>
            <option value="132KV ARON">132KV ARON</option>
            <option value="132KV BHONRA">132KV BHONRA</option>
            <option value="132KV MAKSUNDANGARH">132KV MAKSUNDANGARH</option>
            <option value="132KV CHANDERI">132KV CHANDERI</option>
           
          
          <%}%>
          <% if(s1.equals("TESTING DN. SHIVPURI")){%>
          
         
            <option value="220KV SHIVPURI">220KV SHIVPURI</option>
            <option value="132KV PICHHORE">132KV PICHHORE</option>
            <option value="132KV SHIVPURI">132KV SHIVPURI</option>
            <option value="132KV SHIVPUR KOLAN">132KV SHIVPUR KOLAN</option>
            <option value="132KV KARERA">132KV KARERA</option>
            <option value="132KV KOLARAS">132KV KOLARAS</option>
            <option value="132KV VIJAYPUR">132KV VIJAYPUR</option>
          
          <%}%>
          <% if(s1.equals("TESTING DN.I BHOPAL")){%>
          
            <option value="132KV LALGHATI BPL">132KV LALGHATI BPL</option>
            <option value="132KV KURAWAR">132KV KURAWAR</option>
            <option value="132KV SEHORE">132KV SEHORE</option>
            <option value="132KV ASHTA">132KV ASHTA</option>
            <option value="220KV BAIRAGARH">220KV BAIRAGARH</option>
            <option value="132KV ASHTA">132KV ASHTA</option>
            <option value="132KV SHAMPUR">132KV SHAMPUR</option>
            <option value="132KV ICCHAPUR">132KV ICCHAPUR</option>
            
          
          <%}%>
          <% if(s1.equals("TESTING DN. BIORA")){%>
          
            <option value="132KV BIORA">132KV BIORA</option>
            <option value="132KV KHILCHIPUR">132KV KHILCHIPUR</option>
            <option value="132KV PACHORE">132KV PACHORE</option>
            <option value="132KV JEERAPUR">132KV JEERAPUR</option>
            <option value="220 KV RAJGARH (BIORA)">220 KV RAJGARH (BIORA)</option>
           
          
          <%}%>
          <% if(s1.equals("TESTING DN. ITARSI")){%>
         
            <option value="220KV ITARSI">220KV ITARSI</option>
            <option value="220KV SARNI">220KV SARNI</option>
            <option value="132KV BETUL">132KV BETUL</option>
            <option value="132KV MULTAI">132KV MULTAI</option>
            <option value="132KV GUDGAON">132KV GUDGAON</option>
            <option value="132KV CHICHOLI">132KV CHICHOLI</option>
            <option value="220KV BETUL">220KV BETUL</option>
         
          
          <%}%>
          <% if(s1.equals("TESTING DN. HOSHANGABAD")){%>
       
            <option value="132KV HARDA">132KV HARDA</option>
            <option value="220KV HANDIYA (31.10.2002)">220KV HANDIYA (31.10.2002)</option>
            <option value="132KV SEONI MALWA">132KV SEONI MALWA</option>
            <option value="220KV HOSHANGABAD">220KV HOSHANGABAD</option>
            <option value="220KV PIPARIYA">220KV PIPARIYA</option>
            <option value="132KV PIPARIYA">132KV PIPARIYA</option>
      
          
          <%}%>
          <% if(s1.equals("TESTING DN.II BHOPAL")){%>
         
            <option value="132KV MACT BHOPAL">132KV MACT BHOPAL</option>
            <option value="132KV MANDIDEEP">132KV MANDIDEEP</option>
            <option value="132KV RAISEN">132KV RAISEN</option>
            <option value="132KV BARELI">132KV BARELI</option>
            <option value="132KV NASURALLAGANJ">132KV NASURALLAGANJ</option>
            <option value="220KV MANDIDEEP">220KV MANDIDEEP</option>
            <option value="132KV GAIRATGANJ">132KV GAIRATGANJ</option>
           
          
          <%}%>
          <% if(s1.equals("TESTING DN. VIDISHA")){%>
          
            <option value="220KV VIDISHA">220KV VIDISHA</option>
            <option value="132KV GANJBASODA">132KV GANJBASODA</option>
            <option value="132KV SIRONJ">132KV SIRONJ</option>
            <option value="132KV BESARIA">132KV BESARIA</option>
            <option value="132KV SHAMSABAD">132KV SHAMSABAD</option>
           
          
          <%}%>
          <% if(s1.equals("400KV TESTING DN.  BHOPAL")){%>
          
            <option>400KV BHOPAL</option>
            <option>220KV BHOPAL</option>
            <option>132KV CHAMBAL BPL</option>
            <option>132KV AYODHYA NAGAR</option>
            <option>132KV BHOPAL CITY (AMRAWAT KHURD)</option>
          
          
          <%}%>
          
          
        </div></td>
      </tr>
    </table>
    <p>&nbsp;</p>
    <p>
      <input type="submit" name="button" id="button" value="select" />
    </p>
  </div>
</form>
 <p>&nbsp;</p>
<p>&nbsp;</p>
 <p>&nbsp;</p>
</body>
</html>
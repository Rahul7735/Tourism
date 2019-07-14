<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="master.utilities.ConnectionFactory"%>
<select>
<%

          String tplace=request.getParameter("tplace");
          ConnectionFactory con =new ConnectionFactory();
          Connection cn=con.getConn();
          Statement stmt=cn.createStatement();
         
          String sql="SELECT HNAME FROM HOTEL_MASTER WHERE TPLACE ='"+tplace+"'";
          System.out.println(sql);
          ResultSet rs=stmt.executeQuery(sql);
          response.setContentType("text/xml");
          out.println("<data>");
          while(rs.next())
           {
              String name=rs.getString(1);
              System.out.println(name);
               out.println("<city>");
              out.println(name);
              out.println("</city>");
            }
            out.println("</data>");

              %>
</select>
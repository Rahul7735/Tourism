package master.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import master.DTO.aldto;
import master.utilities.ConnectionFactory;

public class aldao {
	Connection cn2=null;
	PreparedStatement ps=null;
  Statement st=null;
  ResultSet rs=null;
  String sql1="SELECT * FROM TOUR_ALLOTMENT";
	String sql="INSERT INTO tour_allotment VALUES(?,?)";
	
	public void inserdata(aldto adto)
	{
		try{
		ConnectionFactory cn1=new ConnectionFactory();
	    cn2=cn1.getConn();
	     ps=cn2.prepareStatement(sql);
	     System.out.println(adto.getHid());
		 ps.setString(1,adto.getTid());
		 ps.setString(2,adto.getHid());
		  ps.executeUpdate();
		 cn2.commit();
		}
		catch(SQLException se)
		{
			
			se.printStackTrace();
			
		}
		
	}
	public ArrayList getdata()
	{
		ArrayList arr=new ArrayList();
		
		
		try{
			
			ConnectionFactory cn1=new ConnectionFactory();
			cn2=cn1.getConn();
			st=cn2.createStatement();
			rs=st.executeQuery(sql1);
			while(rs.next())
			{
				
				aldto adto=new aldto();
				adto.setTid(rs.getString(1));
				adto.setHid(rs.getString(2));
				arr.add(adto);
				
				
			}
			
		}
		
		catch(SQLException se)
		{
			
			se.printStackTrace();
			
			
			
		}
		return arr;
		
	}
	
	

}

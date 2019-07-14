package master.DAO;

import java.sql.Connection;
import java.util.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import master.DLT.Hdeleteserve;
import master.DTO.hoteldto;
import master.DTO.tourdto;
import master.utilities.ConnectionFactory;

public class hoteldao {
	
	Connection cn2=null;
	PreparedStatement ps=null;
   Statement st=null;
	ResultSet rs=null;
	String sql1="select * from hotel_master";
			String sql="insert into hotel_master values(?,?,?)";
			String sql2="delete from hotel_master where HID=?";
			String sql3="update  hotel_master set HNAME=? where HID=?";
	public void insertdata( hoteldto hdto)
	{
		
		try{
			
			ConnectionFactory cn1=new ConnectionFactory();
			          cn2=cn1.getConn();
			          ps=cn2.prepareStatement(sql);
					  ps.setString(1,hdto.getHid());
					  ps.setString(2,hdto.getHname());
					  ps.setString(3,hdto.getTplace());
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
			
			hoteldto hdto=new hoteldto();
			hdto.setHid(rs.getString(1));
			hdto.setHname(rs.getString(2));
			hdto.setTplace(rs.getString(3));
			arr.add(hdto);
				
			
		}
		
		
	}
	
	
	catch (SQLException se) {
		// TODO: handle exception
		se.printStackTrace();
	}
	
	
	return arr;
	
	
}
	
public void deleteData(hoteldto htdo)
{
	try{
		
	ConnectionFactory cn1=new ConnectionFactory();
	cn2=cn1.getConn();
	 ps=cn2.prepareStatement(sql2);
       ps.setString(1,htdo.getHid());
	  ps.executeUpdate();
	  cn2.commit();
	
	}
	 catch(SQLException se)
	{
		 se.printStackTrace();		 
	}
	
	
	
}

	
public void updateData(hoteldto hdto)
{
	try{
	ConnectionFactory cn1=new ConnectionFactory();
	cn2=cn1.getConn();
	ps=cn2.prepareStatement(sql3);
	ps.setString(1,hdto.getHname());
	ps.setString(2,hdto.getHid());
	ps.executeUpdate();
	cn2.commit();
	
	}
	catch(SQLException se)
	{
		
		se.printStackTrace();	
	}
	
	
}
	
	
	

}

package master.DAO;
import java.util.*;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;

import master.DTO.RegistrationDto;
import master.utilities.ConnectionFactory;

public class RegistrationDao {
	
	Connection cn2=null;
	PreparedStatement ps=null;
	Statement st=null;
	ResultSet rs=null;
	 String sql="insert into t_registration values(?,?,?,?,?)";
	 String sql1="select * from t_registration";
	public void inserdata(RegistrationDto rdto)
	{
		try{
		ConnectionFactory cn1=new ConnectionFactory();
		cn2=cn1.getConn();
		ps=cn2.prepareStatement(sql);
		ps.setString(1,rdto.getName());
		ps.setString(2,rdto.getUname());
		ps.setString(3,rdto.getPass());
		ps.setString(4,rdto.getPhno());
		ps.setString(5,rdto.getEmail());
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
				RegistrationDto rdto=new RegistrationDto();
				rdto.setName(rs.getString(1));
				rdto.setUname(rs.getString(2));
				rdto.setPass(rs.getString(3));
				rdto.setPhno(rs.getString(4));
				rdto.setEmail(rs.getString(5));
				arr.add(rdto);
				
				
			}
			
			
		}
		catch(SQLException se)
		{
			
			
			se.printStackTrace();
		}
		return arr;
	}
	
	
	public boolean checkLogin(String uname,String pass)
	{
		String sql2="SELECT UNAME,PASS FROM T_REGISTRATION WHERE UNAME='"+uname+"' AND PASS='"+pass+"'";
		boolean flag=false;
		try
		{
			ConnectionFactory cn1 = new ConnectionFactory();
		cn2 = cn1.getConn();
		 st= cn2.createStatement();
		rs = st.executeQuery(sql2);
		if(rs.next())
		{
		 flag=true;
		}
		else
		{
			flag=false;
		}
		
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return flag;
		
	}
	
	
	
	
	
}













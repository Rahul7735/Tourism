package master.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import master.ADTO.adto;
import master.DTO.tourdto;
import master.utilities.ConnectionFactory;

public class tourdao {

	Connection cn2=null;
	PreparedStatement ps=null;
	Statement st=null;
	ResultSet rs=null;
	String sql1="select * from tour_master";
			String sql="insert into tour_master values(?,?,?,?,?,?,?,?,?)";
			String sql2="delete from tour_master where tid=?";
			String sql3="update  tour_master set price=?, stdt=?, btdt=? where tid=?";
			String sql4="select * from as_report";
	public void insertdata( tourdto tdto)
	{
		
		try{
			
			ConnectionFactory cn1=new ConnectionFactory();
			          cn2=cn1.getConn();
			          ps=cn2.prepareStatement(sql);
					  ps.setString(1,tdto.getTid());
					  ps.setString(2,tdto.getTname());
					  ps.setString(3,tdto.getP1());
					  ps.setString(4,tdto.getP2());
					  ps.setString(5,tdto.getP3());
					  ps.setDouble(6,tdto.getPrice());
					  ps.setString(7,tdto.getStdt());
					  ps.setString(8,tdto.getBtdt());
					  ps.setString(9,tdto.getPhno());
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
		try
		{
			ConnectionFactory cn1=new ConnectionFactory();
			cn2=cn1.getConn();
			st=cn2.createStatement();
			rs=st.executeQuery(sql1);
			while(rs.next())
			{
			tourdto tdto=new tourdto();
			tdto.setTid(rs.getString(1));
			tdto.setTname(rs.getString(2));
			tdto.setP1(rs.getString(3));
			tdto.setP2(rs.getString(4));
			tdto.setP3(rs.getString(5));
			tdto.setPrice(rs.getDouble(6));
			tdto.setStdt(rs.getString(7));
			tdto.setBtdt(rs.getString(8));
			tdto.setPhno(rs.getString(9));
			arr.add(tdto);
			}
	
			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
			
			
		}
				
		return arr;
		
		
	}
	
	public void deleteData(tourdto tdto)
	{
		try{
			
		ConnectionFactory cn1=new ConnectionFactory();
		cn2=cn1.getConn();
		 ps=cn2.prepareStatement(sql2);
		  ps.setString(1,tdto.getTid());
		  ps.executeUpdate();
		  cn2.commit();
		
		}
		 catch(SQLException se)
		{
			 se.printStackTrace();
			 
			 
		}
		
		
		
	}
	
	public void updateData(tourdto tdto)
	{
		try{
		ConnectionFactory cn1=new ConnectionFactory();
		cn2=cn1.getConn();
		ps=cn2.prepareStatement(sql3);
		ps.setDouble(1,tdto.getPrice());
		ps.setString(2,tdto.getStdt());
		ps.setString(3,tdto.getBtdt());
		ps.setString(4,tdto.getTid());
		ps.executeUpdate();
		cn2.commit();
		
		}
		catch(SQLException se)
		{
			
			se.printStackTrace();
			
			
			
		}
		
		
	}
	
	
	
	public ArrayList getadata()
	{
		
		ArrayList arr=new ArrayList();
		try{
			
			ConnectionFactory cn1=new ConnectionFactory();
			cn2=cn1.getConn();
			st=cn2.createStatement();
			rs=st.executeQuery(sql4);
			while(rs.next())
			{
				adto dto=new adto();
				dto.setTid(rs.getString(1));
				dto.setTname(rs.getString(2));
				dto.setP1(rs.getString(3));
				dto.setP2(rs.getString(4));
				dto.setP3(rs.getString(5));
				dto.setHid(rs.getString(6));
				dto.setHname(rs.getString(7));
				dto.setTplace(rs.getString(8));
				arr.add(dto);
				
				
				
			}
			
			
			
			
		}
		
		catch(SQLException se)
		{
			
			
			se.printStackTrace();
		}
		
		
		return arr;
		
	}
	
	

			
	}
	
	
	


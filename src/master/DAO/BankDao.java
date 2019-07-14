package master.DAO;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;
import master.DTO.BankDto;
import master.utilities.ConnectionFactory;

public class BankDao {
	
	Connection cn2=null;
	PreparedStatement ps=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="insert into tour_booking values(bid_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	   String sql1= "SELECT * FROM TOUR_BOOKING";
public void insertdata(BankDto bdto)
{
	try
	{
	ConnectionFactory cn1=new ConnectionFactory();
	cn2=cn1.getConn();
	ps=cn2.prepareStatement(sql);
	ps.setString(1,bdto.getTid());
	ps.setString(2,bdto.getTname());
	ps.setString(3,bdto.getP1());
    ps.setString(4,bdto.getHname1());	
    ps.setString(5,bdto.getP2());
    ps.setString(6,bdto.getHname2());
    ps.setString(7,bdto.getP3());
    ps.setString(8,bdto.getHname3());
    ps.setDouble(9,bdto.getPrice());
    ps.setString(10,bdto.getPerson());
    ps.setString(11,bdto.getRoom());
    ps.setDouble(12,bdto.getTprice());
    ps.setString(13,bdto.getStdt());
    ps.setString(14,bdto.getBtdt());
    ps.setString(15,bdto.getCid());
    ps.setString(16,bdto.getCname());
    ps.setString(17,bdto.getCemail());
    ps.setString(18,bdto.getCphno());
    ps.setString(19,bdto.getCard());
    ps.setString(20,bdto.getCvv());
    ps.setString(21,bdto.getValid_upto());
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
				
				BankDto bdto=new BankDto();
				bdto.setBid(rs.getInt(1));
				bdto.setTid(rs.getString(2));
				bdto.setTname(rs.getString(3));
				bdto.setP1(rs.getString(4));
				bdto.setHname1(rs.getString(5));
				bdto.setP2(rs.getString(6));
				bdto.setHname2(rs.getString(7));
				bdto.setP3(rs.getString(8));
				bdto.setHname3(rs.getString(9));
				bdto.setPrice(rs.getDouble(10));
				bdto.setPerson(rs.getString(11));
				bdto.setRoom(rs.getString(12));
				bdto.setTprice(rs.getDouble(13));
				bdto.setStdt(rs.getString(14));
				bdto.setBtdt(rs.getString(15));
				bdto.setCid(rs.getString(16));
				bdto.setCname(rs.getString(17));
				bdto.setCemail(rs.getString(18));
				bdto.setCphno(rs.getString(19));
				bdto.setCard(rs.getString(20));
				bdto.setCvv(rs.getString(21));
				bdto.setValid_upto(rs.getString(22));
				arr.add(bdto);
				
							
					}
			
		
			
		}
		catch(SQLException se)
		{
			
			
			se.printStackTrace();
		}
		
		return arr;
	   
	   
   }


public ArrayList getBidDetails(int bid)
{
	
	String sql2="select * from tour_booking where bid="+bid+"";
	
	 ArrayList arr=new ArrayList();
		try{
			
			ConnectionFactory cn1=new ConnectionFactory();
			cn2=cn1.getConn();
			st=cn2.createStatement();
			rs=st.executeQuery(sql2);
			while(rs.next())
			{
				
				BankDto bdto=new BankDto();
				bdto.setBid(rs.getInt(1));
				bdto.setTid(rs.getString(2));
				bdto.setTname(rs.getString(3));
				bdto.setP1(rs.getString(4));
				bdto.setHname1(rs.getString(5));
				bdto.setP2(rs.getString(6));
				bdto.setHname2(rs.getString(7));
				bdto.setP3(rs.getString(8));
				bdto.setHname3(rs.getString(9));
				bdto.setPrice(rs.getDouble(10));
				bdto.setPerson(rs.getString(11));
				bdto.setRoom(rs.getString(12));
				bdto.setTprice(rs.getDouble(13));
				bdto.setStdt(rs.getString(14));
				bdto.setBtdt(rs.getString(15));
				bdto.setCid(rs.getString(16));
				bdto.setCname(rs.getString(17));
				bdto.setCemail(rs.getString(18));
				bdto.setCphno(rs.getString(19));
				bdto.setCard(rs.getString(20));
				bdto.setCvv(rs.getString(21));
				bdto.setValid_upto(rs.getString(22));
				arr.add(bdto);
				
							
					}
			
		
			
		}
		catch(SQLException se)
		{
			
			
			se.printStackTrace();
		}
		
		return arr;
	   
	   

	
	
	
	
	
}










}
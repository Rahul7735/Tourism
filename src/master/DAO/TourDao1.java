package master.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import master.DTO.tourdto;
import master.utilities.ConnectionFactory;

public class TourDao1 {
	Connection cn2=null;
	Statement st=null;
	ResultSet rs=null;
	 public ArrayList getTIDdetails(String TID)
		{
		String sql7="SELECT TNAME,P1,P2,P3,PRICE,STDT,BTDT FROM TOUR_MASTER WHERE TID='"+TID+"'";
		ArrayList arr=new ArrayList();
		try
		{
			ConnectionFactory cn1=new ConnectionFactory();
			cn2=cn1.getConn();
			st=cn2.createStatement();
			rs=st.executeQuery(sql7);
			while(rs.next())
			{
			tourdto tdto=new tourdto();
			//tdto.setTid(rs.getString(1));
			tdto.setTname(rs.getString(1));
			tdto.setP1(rs.getString(2));
			tdto.setP2(rs.getString(3));
			tdto.setP3(rs.getString(4));
			tdto.setPrice(rs.getDouble(5));
			tdto.setStdt(rs.getString(6));
			tdto.setBtdt(rs.getString(7));
			//tdto.setPhno(rs.getString(9));
			arr.add(tdto);
			}

			
		}
		catch(SQLException se)
		{
			se.printStackTrace();
			
			
		}
				
		return arr;
		

			
			
		}
		
}

package com.learn.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.learn.connector.Connector;
import com.learn.users.Users;

public class UserImpl implements UserInterface{

	private Connection con;
	
	public UserImpl() {
		this.con=Connector.requestConnection();
	}

	@Override
	public Users insertuser(Users u) {
		PreparedStatement ps=null;
		String query="insert into users(name,email,phone,password) values(?,?,?,?)";
		
		int res=0;
		
		try {
			con.setAutoCommit(false);
			ps=con.prepareStatement(query);
			ps.setString(1,u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPhone());
			ps.setString(4, u.getPassword());
			
			res=ps.executeUpdate();
			
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		if(res>0) {
			try {
				con.commit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {
			try {
				con.rollback();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		return null;
		
	}

	@Override
	public boolean insertusers(Users u) {
		PreparedStatement ps=null;
		String query="insert into users(name,email,phone,password) values(?,?,?,?)";
		
		int res=0;
		
		try {
			con.setAutoCommit(false);
			ps=con.prepareStatement(query);
			ps.setString(1,u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPhone());
			ps.setString(4, u.getPassword());
			
			res=ps.executeUpdate();
			
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		if(res>0) {
			try {
				con.commit();
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {
			try {
				con.rollback();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		return false;
	}

	@Override
	public Users getUsers(String email, String password) {
		PreparedStatement ps=null;
		ResultSet rs=null;
		Users u=null;
		String query="select * from users where email=? and password=? ";
		
		try {
			ps=con.prepareStatement(query);
			ps.setString(1,email);
			ps.setString(2,password);
			rs=ps.executeQuery();
			
			if(rs.next()) {
				u=new Users();
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPhone(rs.getString(4));
				u.setPassword(rs.getString(5));
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return u;
		
	}

	@Override
	public boolean updateUsers(Users u) {
		
		int res=0;
		String query="update users set password=? where email=?";
		
		try {
			con.setAutoCommit(false);
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, u.getPassword());
			ps.setString(2, u.getEmail());
			res=ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(res>0) {
			try {
				con.commit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return true;
		}
		else {
			try {
				con.rollback();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return false;
		}
	}
	
	
	

}

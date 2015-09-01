package com.gl.expensetracker.connection;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;



public class DatabaseUtils {

	Connection connection;
	public static Connection getConnection() {
		Properties props = new Properties();
		FileInputStream fis = null;
		Connection con = null;
		try {
			fis = new FileInputStream("/root/dym_java/expense-tracker/ExpenseTracker/src/expensetracker.properties");
			props.load(fis);
			Class.forName(props.getProperty("mysql.driverClass"));
			con = DriverManager.getConnection(props.getProperty("mysql.connectionUrl"),
					props.getProperty("mysql.userName"),
					props.getProperty("mysql.password"));
		} catch (IOException | SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}


	
	public void close() {
		try {

			connection.close();
		} catch (Exception e) {
			System.out.println(" error in closing database connection");
		}

	}
}

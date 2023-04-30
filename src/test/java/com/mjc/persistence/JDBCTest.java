package com.mjc.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

//OJDBC 테스트용 Class
public class JDBCTest {


	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	public void testConnection() {
		try (Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "TEST", "TEST")) {
			System.out.println(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}

	}

}

package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;

import model.Account;
import model.Orders;
import model.Product;

@Controller
public class AccountDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public boolean login(String user, String password) {
		String sql = "select * from [dbo].[Account] where user_mail = '"+user+"' and password = "+password;
		boolean result = false;
		List<Account> list = jdbcTemplate.query(sql, new RowMapper<Account>() {
			public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
				Account Account = new Account();
				Account.setUsr(rs.getString("user_mail"));
				Account.setPwd(rs.getString("password"));
				Account.setRole(rs.getInt("account_role"));
				Account.setName(rs.getString("user_name"));
				return Account;
			}
		});	
		if(!list.isEmpty() && list.get(0).getRole() == 1) {
			result = true;
		}
		return result;
	}
	
	public List<Account> getAllAccount(){
		List<Account> list = new ArrayList<Account>();
		String sql = "SELECT * FROM Account";
		list = jdbcTemplate.query(sql, new RowMapper<Account>() {
			public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
				Account Account = new Account();
				Account.setUsr(rs.getString("user_mail"));
				Account.setPwd(rs.getString("password"));
				Account.setRole(rs.getInt("account_role"));
				Account.setName(rs.getString("user_name"));
				Account.setAddress(rs.getString("user_address"));
				return Account;
			}
		});		
		return list;
	}
		
	public List<Orders> getAllOrders(){
		
		List<Orders> list = new ArrayList<Orders>();
		String sql = "SELECT * FROM Orders";
		list = jdbcTemplate.query(sql, new RowMapper<Orders>() {
			public Orders mapRow(ResultSet rs, int rowNum) throws SQLException {
				Orders Orders = new Orders();
				Orders.setOrderDate(rs.getDate("order_date"));
				Orders.setPrice(rs.getFloat("order_discount_code"));
				Orders.setAddress(rs.getString("order_address"));
				Orders.setUserMail(rs.getString("user_mail"));
				return Orders;
			}
		});		
		return list;
	}
	
	public List<Product> getAllProducts(){
		List<Product> list = new ArrayList<Product>();
		String sql = "SELECT * FROM Products";
		list = jdbcTemplate.query(sql, new RowMapper<Product>() {
			public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
				Product Product = new Product();
				Product.setName(rs.getString("product_name"));
				Product.setSrc(rs.getString("product_img_source"));
				Product.setPrice(rs.getInt("product_price"));
				return Product;
			}
		});		
		return list;
	}
	
}

package bean_user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ItemBean {
	private int itemId;
	private int categoryId;
	private String itemName;
	private double price;
	private String description;
	private String image;
	
	
	
	public int getItemId() 
	{
		return itemId;
	}

	public void setItemId(int itemId) 
	{
		this.itemId = itemId;
	}

	public int getCategoryId() 
	{
		return categoryId;
	}

	public void setCategoryId(int categoryId) 
	{
		this.categoryId = categoryId;
	}

	public String getItemName() 
	{
		return itemName;
	}

	public void setItemName(String itemName) 
	{
		this.itemName = itemName;
	}

	public double getPrice() 
	{
		return price;
	}

	public void setPrice(double price) 
	{
		this.price = price;
	}

	public String getDescription() 
	{
		return description;
	}

	public void setDescription(String description) 
	{
		this.description = description;
	}

	public String getImage() 
	{
		return image;
	}

	public void setImage(String image) 
	{
		this.image = image;
	}

	public static Connection dbConnect() throws SQLException
	{
		//1. Register Driver
 		DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
 		
 		//2. Connection(Url, User, Password)
 		String url = "jdbc:mysql://localhost:3306/book_store";
 		String user = "root"; //bydefault
 		String password = "";
 		
 		Connection conn = DriverManager.getConnection(url, user,password);
 		
 		return conn;
	}
	
	public ArrayList<ItemBean> itembyid(int categoryId) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<ItemBean> viewItems = new ArrayList<>();

        try {
            conn = dbConnect();
            String sql = "SELECT * FROM items WHERE categoryId = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, categoryId);
            rs = ps.executeQuery();

            while (rs.next()) {
                ItemBean item = new ItemBean();
                item.setCategoryId(rs.getInt("categoryId"));
                item.setItemId(rs.getInt("itemId"));
                item.setItemName(rs.getString("itemName"));
                item.setPrice(rs.getDouble("price"));
                item.setDescription(rs.getString("description"));
                item.setImage(rs.getString("image"));
                viewItems.add(item);
            }
        } catch (SQLException e) {
            // Handle or rethrow the exception as needed
            throw e;
        } finally {
            // Close resources in a finally block
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return viewItems;
    }
}
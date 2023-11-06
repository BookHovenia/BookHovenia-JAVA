package bean_user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CategoryBean {
    private int categoryId;
    private String categoryName;

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public static Connection dbConnect() throws SQLException {
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            String url = "jdbc:mysql://localhost:3306/book_store";
            String user = "root"; // by default
            String password = "";

            return DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }
    }

    public ArrayList<CategoryBean> getAllcategories() {
        try {
            Connection conn = dbConnect();
            String sql = "select * from category order by categoryId";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            ArrayList<CategoryBean> allcategories = new ArrayList<CategoryBean>();

            while (rs.next()) {
                CategoryBean new_cat = new CategoryBean();
                new_cat.setCategoryId(rs.getInt("categoryId"));
                new_cat.setCategoryName(rs.getString("categoryName"));
                allcategories.add(new_cat);
            }

            return allcategories;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    
    // You can add a method to retrieve items by category here
    public ArrayList<ItemBean> getItemsByCategory(int categoryId) {
        try {
            Connection conn = dbConnect();
            String sql = "SELECT * FROM items WHERE categoryId = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();

            ArrayList<ItemBean> categoryItems = new ArrayList<ItemBean>();

            while (rs.next()) {
                ItemBean newItem = new ItemBean();
                // Set item details from the result set

                newItem.setItemId(rs.getInt("itemId"));
                newItem.setCategoryId(rs.getInt("categoryId"));
                newItem.setItemName(rs.getString("itemName"));
                newItem.setPrice(rs.getDouble("price"));
                newItem.setDescription(rs.getString("description"));
                newItem.setImage(rs.getString("image"));
                categoryItems.add(newItem);
            }

            return categoryItems;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}

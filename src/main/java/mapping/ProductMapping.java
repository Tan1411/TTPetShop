package mapping;

import java.sql.Blob;
import java.sql.ResultSet;

import Bind.Bindimg;
import beans.Products;

public class ProductMapping {
	public static Products maProducts (ResultSet rs)
	{
		try {
			Products pd = new Products();
			pd.setProductID(rs.getInt("productID"));
			pd.setName(rs.getString("name"));
			pd.setPrice(rs.getInt("price"));
			pd.setCategoryID(rs.getString("categoryID"));
			pd.setDescription(rs.getString("description"));
			pd.setQuantity(rs.getInt("quantity"));
			pd.setViewed(rs.getInt("viewed"));
			pd.setBase64Image(Bindimg.img(rs.getBlob("pic")));
			pd.setRate(rs.getInt("rate"));
			pd.setFormatPriceString(String.format("%,d VNĐ", rs.getInt("price")));
			return pd;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}

}

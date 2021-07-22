package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.Sushi;

public class SushiDAO extends DAO{
	
	public List<Sushi> listUp() throws Exception {
		List<Sushi> list = new ArrayList<>();
		
		Connection con = getConnection();
		
		PreparedStatement st = con.prepareStatement(
				"SELECT * FROM product LIMIT ?"
			);
		st.setInt(1, 5);
		ResultSet rs = st.executeQuery();
		
		while (rs.next()) {
			Sushi sushi = new Sushi();
			sushi.setName(rs.getString("name"));
			sushi.setPrice(rs.getInt("price"));
			list.add(sushi);
		}
		
		st.close();
		con.close();
		
		return list;
	}

}

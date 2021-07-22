package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.Sushi;

public class SDAO extends DAO{
	public List<Sushi> listUp() throws Exception {
		List<Sushi> list = new ArrayList<>();
		
		Connection con = getConnection();
		
		PreparedStatement st = con.prepareStatement(
				"SELECT * FROM product"
			);
//		st.setInt(1, 5);
		try {
			ResultSet rs = st.executeQuery();
			if(rs == null) {
				throw new Exception("nu");
			}
			
			while (rs.next()) {
				Sushi sushi = new Sushi();
				sushi.setName(rs.getString("name"));
				sushi.setPrice(rs.getInt("price"));
				list.add(sushi);
			}
		} catch (Exception e) {
			e.getMessage();
		}

		
		st.close();
		con.close();
		
		return list;
	}
}

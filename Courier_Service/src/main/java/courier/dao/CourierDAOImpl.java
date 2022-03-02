package courier.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import courier.dao.CourierDAO;
import courier.model.Courier;
import courier.model.Users;

public class CourierDAOImpl implements CourierDAO {

	private JdbcTemplate jdbcTemplate;

	public CourierDAOImpl(DataSource dataSoruce) {
		jdbcTemplate = new JdbcTemplate(dataSoruce);
	}

	@Override
	public int create(Courier courier) {
		
		 String sql = "INSERT INTO courier (senderfirstname,senderlastname,senderaddress,sendercity,senderstate,senderzip,senderage,sendermobile,recieverfirstname, recieverlastname, recieveraddress,recievercity, recieverstate, recieverzip,recieverage,recievermobile,weight,cost,status,orderdate,deliverdon)"
  		       + " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,'open',?,'2000-05-10')";

			try {

				int counter = jdbcTemplate.update(sql,
						new Object[] { courier.getSenderfirstname(),
			                    courier.getSenderlastname(), courier.getSenderaddress(), courier.getSendercity(), 
			                    courier.getSenderstate(), courier.getSenderzip(), 
			                    courier.getSenderage(), courier.getSendermobile(),courier.getRecieverfirstname(),
			                    courier.getRecieverlastname(), courier.getRecieveraddress(), courier.getRecievercity(), 
			                    courier.getRecieverstate(), courier.getRecieverzip(), 
			                    courier.getRecieverage(), courier.getRecievermobile(), courier.getWeight(), courier.getCost(), courier.getOrderdate() });

				return counter;

			} catch (Exception e) {
				e.printStackTrace();
				return 0;
			}
	}

	@Override
	public List<Courier> read() {
		List<Courier> courierList = jdbcTemplate.query("SELECT * FROM courier", new RowMapper<Courier>() {

			@Override
			public Courier mapRow(ResultSet rs, int rowNum) throws SQLException {
				Courier courier = new Courier();
				courier.setOrderno(rs.getInt("orderno"));
                courier.setSenderfirstname(rs.getString("senderfirstname"));
                courier.setSenderlastname(rs.getString("senderlastname"));
                courier.setSenderaddress(rs.getString("senderaddress"));
                courier.setSendercity(rs.getString("sendercity"));
                courier.setSenderstate(rs.getString("senderstate"));
                courier.setSenderzip(rs.getInt("senderzip"));
                courier.setSenderage(rs.getInt("senderage"));
                courier.setSendermobile(rs.getInt("sendermobile"));
                courier.setRecieverfirstname(rs.getString("recieverfirstname"));
                courier.setRecieverlastname(rs.getString("recieverlastname"));
                courier.setRecieveraddress(rs.getString("recieveraddress"));
                courier.setRecievercity(rs.getString("recievercity"));
                courier.setRecieverstate(rs.getString("recieverstate"));
                courier.setRecieverzip(rs.getInt("recieverzip"));
                courier.setRecieverage(rs.getInt("recieverage"));
                courier.setRecievermobile(rs.getInt("recievermobile"));
                courier.setWeight(rs.getInt("weight"));
                courier.setCost(rs.getInt("cost"));
                courier.setStatus(rs.getString("status"));
                courier.setOrderdate(rs.getString("orderdate"));
                courier.setDeliverdon(rs.getString("deliverdon"));

				return courier;
			}

		});

		return courierList;
	}

	@Override
	public List<Courier> findCourierById(int orderno) {
		
		
		List<Courier> courierList = jdbcTemplate.query("SELECT * FROM courier WHERE orderno=?",
				new Object[] { orderno }, new RowMapper<Courier>() {

					@Override
					public Courier mapRow(ResultSet rs, int rowNum) throws SQLException {
						Courier courier = new Courier();
						courier.setOrderno(rs.getInt("orderno"));
	                    courier.setSenderfirstname(rs.getString("senderfirstname"));
	                    courier.setSenderlastname(rs.getString("senderlastname"));
	                    courier.setSenderaddress(rs.getString("senderaddress"));
	                    courier.setSendercity(rs.getString("sendercity"));
	                    courier.setSenderstate(rs.getString("senderstate"));
	                    courier.setSenderzip(rs.getInt("senderzip"));
	                    courier.setSenderage(rs.getInt("senderage"));
	                    courier.setSendermobile(rs.getInt("sendermobile"));
	                    courier.setRecieverfirstname(rs.getString("recieverfirstname"));
	                    courier.setRecieverlastname(rs.getString("recieverlastname"));
	                    courier.setRecieveraddress(rs.getString("recieveraddress"));
	                    courier.setRecievercity(rs.getString("recievercity"));
	                    courier.setRecieverstate(rs.getString("recieverstate"));
	                    courier.setRecieverzip(rs.getInt("recieverzip"));
	                    courier.setRecieverage(rs.getInt("recieverage"));
	                    courier.setRecievermobile(rs.getInt("recievermobile"));
	                    courier.setWeight(rs.getInt("weight"));
	                    courier.setCost(rs.getInt("cost"));
	                    courier.setStatus(rs.getString("status"));
	                    courier.setOrderdate(rs.getString("orderdate"));
	                    courier.setDeliverdon(rs.getString("deliverdon"));

						return courier;
					}

				});

		return courierList;
	}

	@Override
	public int update(Courier courier) {
		String sql = "UPDATE courier SET status=?, deliverdon=? WHERE orderno=?";
		try {

			int counter = jdbcTemplate.update(sql,
					new Object[] { courier.getOrderno(),courier.getStatus(),courier.getDeliverdon()  });

			return counter;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public List<Users> checkUser(String username, String password) {
		Users users = new Users();
        String sql = "select username, password from users where username='" +username + "' and password = '"+password+"'";
        List user = jdbcTemplate.queryForList(sql);
       return user;
	}
	
}

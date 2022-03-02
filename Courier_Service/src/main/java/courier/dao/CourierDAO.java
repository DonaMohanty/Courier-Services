package courier.dao;

import java.util.List;

import courier.model.Courier;
import courier.model.Users;


public interface CourierDAO {
    
    public int create(Courier courier);

	public List<Courier> read();

	public List<Courier> findCourierById(int orderno);

	public int update(Courier courier);
	
	
	public List<Users> checkUser(String username, String password);

}
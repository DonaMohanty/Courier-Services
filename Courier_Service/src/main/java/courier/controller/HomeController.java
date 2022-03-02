package courier.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import courier.dao.CourierDAO;
import courier.model.Courier;
import courier.model.Users;

@Controller
public class HomeController {
	@Autowired
	private CourierDAO courierDAO;

	@RequestMapping(value = "/neworder", method = RequestMethod.POST)
	public ModelAndView createCourier(@RequestParam("orderdate") String orderdate,@RequestParam("senderfirstname") String senderfirstname,
			@RequestParam("senderlastname") String senderlastname, @RequestParam("senderaddress") String senderaddress,
			@RequestParam("sendercity") String sendercity, @RequestParam("senderstate") String senderstate,
			@RequestParam("senderzip") int senderzip,@RequestParam("senderage") int senderage,
			@RequestParam("sendermobile") int sendermobile,@RequestParam("recieverfirstname") String recieverfirstname,
			@RequestParam("recieverlastname") String recieverlastname, @RequestParam("recieveraddress") String recieveraddress,
			@RequestParam("recievercity") String recievercity, @RequestParam("recieverstate") String recieverstate,
			@RequestParam("recieverzip") int recieverzip,@RequestParam("recieverage") int recieverage,
			@RequestParam("recievermobile") int recievermobile,@RequestParam("weight") int weight,
			@RequestParam("cost") int cost, ModelAndView mv) {

		Courier courier = new Courier();
		courier.setOrderdate(orderdate);
        courier.setSenderfirstname(senderfirstname);
        courier.setSenderlastname(senderlastname);
        courier.setSenderaddress(senderaddress);
        courier.setSendercity(sendercity);
        courier.setSenderstate(senderstate);
        courier.setSenderzip(senderzip);
        courier.setSenderage(senderage);
        courier.setSendermobile(sendermobile);
        courier.setRecieverfirstname(recieverfirstname);
        courier.setRecieverlastname(recieverlastname);
        courier.setRecieveraddress(recieveraddress);
        courier.setRecievercity(recievercity);
        courier.setRecieverstate(recieverstate);
        courier.setRecieverzip(recieverzip);
        courier.setRecieverage(recieverage);
        courier.setRecievermobile(recievermobile);
        courier.setWeight(weight);
        courier.setCost(cost);

		int counter = courierDAO.create(courier);

		if (counter > 0) {
			mv.addObject("msg", "Courier Added successful.");
		} else {
			mv.addObject("msg", "Something Went Wrong.");
		}

		mv.setViewName("addorder");

		return mv;
	}

	@RequestMapping(value = "/welcome")
	public ModelAndView readCourier(ModelAndView model) throws IOException {
		List<Courier> listCourier = courierDAO.read();
		model.addObject("listCourier", listCourier);
		model.setViewName("welcomeadmin");
		return model;
	}
	@GetMapping(value = "/home")
	public ModelAndView firstView() {
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
	
	@GetMapping(value = "/login")
	public ModelAndView secondView() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
	
	@GetMapping(value = "/add")
	public ModelAndView thirdView() {
		ModelAndView mav = new ModelAndView("addorder");
		return mav;
	}

	@RequestMapping(value = "/update/{orderno}")
	public ModelAndView findCourierById(ModelAndView model, @PathVariable("orderno") int orderno)
			throws IOException {

		List<Courier> listCourier = courierDAO.findCourierById(orderno);
		model.addObject("listCourier", listCourier);
		model.setViewName("updateorder");

		return model;
	}

	@RequestMapping(value = "/track/{orderno}")
	public ModelAndView findTikect(ModelAndView model, @PathVariable("orderno") int orderno)
			throws IOException {

		List<Courier> listCourier = courierDAO.findCourierById(orderno);
		model.addObject("listCourier", listCourier);
		model.setViewName("orderdetails");

		return model;
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView updateCustomer(@RequestParam("orderno") int orderno,
			@RequestParam("status") String status,@RequestParam("deliverdon") String deliverdon, ModelAndView mv) {

		Courier courier = new Courier();
		courier.setOrderno(orderno);
        courier.setStatus(status);
        courier.setDeliverdon(deliverdon);

		int counter = courierDAO.update(courier);

		if (counter > 0) {
			List<Courier> listCourier = courierDAO.read();
			mv.addObject("listCourier", listCourier);
			mv.addObject("msg", "Successfully Updated Courier.");
			mv.setViewName("welcomeadmin");
		} else {
			mv.addObject("msg", "Something Went Wrong.");
			mv.setViewName("updateorder");
		}
		return mv;
	}
	

	 @RequestMapping(value = "/login", method = RequestMethod.POST)
	    public ModelAndView processForm(@RequestParam("username") String username,
	    		@RequestParam("password") String password,ModelAndView model,HttpSession session, Users users) {
	      List<Users> user = courierDAO.checkUser(users.getUsername(), users.getPassword()); 
	        if (user.size() > 0 ) {
	        	List<Courier> listCourier = courierDAO.read();
	        	model.addObject("listCourier", listCourier);
	        	model.setViewName("./welcomeadmin");
	        	session.setAttribute("username", username);
	        	return model;
	        }else{
	        	model.addObject("msg", "invalid credentials");
	        	model.setViewName("./login");
	        	return model;
	        }   
	    }
	 
	 @RequestMapping(value = "logout", method = RequestMethod.GET)
		public String logout(HttpSession session) {
			session.removeAttribute("username");
			return "./login";
		}
	
}

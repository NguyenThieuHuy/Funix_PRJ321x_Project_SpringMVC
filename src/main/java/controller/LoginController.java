package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import dao.AccountDAO;
import model.Account;
import model.Orders;
import model.Product;

@Controller
public class LoginController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	
	AccountDAO AccountDAO = (dao.AccountDAO) context.getBean("databaseAccount");
	
	@RequestMapping(value="/login.html")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
				
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username != null && password != null) {
			if(AccountDAO.login(username, password)) {
				List<Account> accList = AccountDAO.getAllAccount();
				List<Orders> orList = AccountDAO.getAllOrders();
				List<Product> prList = AccountDAO.getAllProducts();
				
				ModelAndView model = new ModelAndView("confirmation","username",username);
				model.addObject("accList",accList);
				model.addObject("orList",orList);
				model.addObject("prList",prList);
				return model;
			}else {
				return new ModelAndView("login","error","Username or password is invalid");
			}
		}
		return new ModelAndView("login","error","");
	}
}
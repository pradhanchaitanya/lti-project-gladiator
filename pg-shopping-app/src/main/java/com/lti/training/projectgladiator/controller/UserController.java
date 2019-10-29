package com.lti.training.projectgladiator.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.training.projectgladiator.dto.UserDTO;
import com.lti.training.projectgladiator.model.Cart;
import com.lti.training.projectgladiator.model.Order;
import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.service.CartService;
import com.lti.training.projectgladiator.service.ProductService;
import com.lti.training.projectgladiator.service.UserService;

@Controller
@SessionAttributes({"user", "isError", "error", "products", "noOfProducts", "cart", "orders", "noOfOrders"})
public class UserController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(path = "/registerUser.do", method = RequestMethod.GET)
	public String showRegisterForUser() {
		return "signup.jsp";
	}
	
	@RequestMapping(path = "/registerUser.do", method = RequestMethod.POST)
	public String registerUser(UserDTO userData, ModelMap model) {
		//model.addAttribute("userDTO", new UserDTO());
		
		User user = new User();
		user.setName(userData.getName());
		user.setEmail(userData.getEmail());
		user.setMobileNumber(userData.getMobileNumber());
		user.setPassword(userData.getPassword());
		user.setAddress(userData.getAddress());
		user.setCreatedAt(LocalDateTime.now());
		try {
			userService.addNewUser(user);
		} catch (Exception e) {
			model.addAttribute("isError", true);
			model.addAttribute("error", "Please enter valid data!");
			return "redirect:/registerUser.do";
		}
		model.addAttribute("user", user);
		return "redirect:/showDashboard.do";
	}
	
	@RequestMapping("/showDashboard.do")
	public String showDashboard(ModelMap model) {
		if (model.containsAttribute("user")) {
			try {
				User currentUser = (User)model.get("user");
				Set<Product> products = productService.fetchProductsFromCartOfUser(currentUser);
				model.addAttribute("noOfProducts", products.size());
				Set<Order> orders = userService.fetchOrdersForUser(currentUser);
				model.addAttribute("noOfOrders", orders.size());
			} catch (Exception e) {
				model.addAttribute("error", e.getMessage());
			}
			return "userDashboard.jsp";
		}
		
		return "redirect:/loginUser.do";
	}
	
	@RequestMapping(path = "/loginUser.do", method = RequestMethod.GET)
	public String showLoginForUser() {
		return "login.jsp";
	}
	
	@RequestMapping(path = "/loginUser.do", method = RequestMethod.POST)
	public String loginUser(@RequestParam("email") String email,
							@RequestParam("password") String password, ModelMap model) {
		model.remove("error");
		try {
			User validatedUser = userService.validateUser(email, password);			
			model.addAttribute("user", validatedUser);
			return "redirect:/showDashboard.do";
		} catch (Exception e) {
			// handle invalid credentials
			model.addAttribute("error", "Invalid Credentials");
			return "redirect:loginUser.do";
		}
	}
	
	@RequestMapping(path = "/showCart.do", method = RequestMethod.GET)
	public String showCart(ModelMap model) {
		if (model.containsAttribute("user")) {
			try {
				User currentUser = (User)model.get("user");
				Set<Product> products = productService.fetchProductsFromCartOfUser(currentUser);
				model.addAttribute("products", products);
				Cart userCart =  cartService.fetchCartForUser(currentUser);
				model.addAttribute("cart", userCart);
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("error", e.getMessage());
			}
			return "cart.jsp";
		}
		
		return "redirect:/loginUser.do";
	}

	@RequestMapping(path = "/logoutUser.do")
	public String logout(ModelMap model, HttpSession session) {
		model.clear();
		session.invalidate();
		return "redirect:/showHomepage.do";
	}
	
	@RequestMapping("/addToCart.do")
	public String addToCart(@RequestParam("id") long productId, ModelMap model) {
		User currentUser = (User) model.get("user");
		Product selectedProduct = productService.fetchProductById(productId);
		Cart userCart = cartService.fetchCartForUser(currentUser);
		try {
			productService.addProductToCart(selectedProduct, userCart, 1);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("error", e.getMessage());
		}
		return "redirect:showHomepage.do";
	}
	
	@RequestMapping("/removeFromCart.do")
	public String removeFromCart(@RequestParam("id") long productId, ModelMap model) {
		User currentUser = (User) model.get("user");
		Product selectedProduct = productService.fetchProductById(productId);
		Cart userCart = cartService.fetchCartForUser(currentUser);
		try {
			productService.removeProductFromCart(selectedProduct, userCart, 1);
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("error", e.getMessage());
		}
		return "redirect:showCart.do";
	}
	
	@RequestMapping(path = "/showCheckout.do", method = RequestMethod.GET)
	public String showCheckoutForUser(ModelMap model) {
		if(model.containsAttribute("user")) {
			User currentUser = (User)model.get("user");
			Cart userCart =  cartService.fetchCartForUser(currentUser);
			model.addAttribute("cart", userCart);
			return "checkout.jsp";
		} else {
			return "redirect:/loginUser.do";
		}
	}
	
	@RequestMapping(path = "confirmOrder.do", method = RequestMethod.GET)
	public String confirmOrder(ModelMap model) {
		if(model.containsAttribute("user")) {
			User currentUser = (User)model.get("user");
			Cart userCart =  cartService.fetchCartForUser(currentUser);
			
			Order order = new Order();
			order.setOrderedOn(LocalDate.now());
			order.setCart(userCart);
			order.setTotalPrice(userCart.getTotalPrice());
			
			userService.placeOrder(order);
			return "redirect:/showDashboard.do";
		} else {
			return "redirect:/loginUser.do";
		}
	}
	
	@RequestMapping(path = "showOrders.do", method = RequestMethod.GET)
	public String showOrders(ModelMap model) {
		if(model.containsAttribute("user")) {
			User currentUser = (User)model.get("user");
			Set<Order> orders = userService.fetchOrdersForUser(currentUser);
			model.addAttribute("orders", orders);
			return "orders.jsp";
		} else {
			return "redirect:/loginUser.do";
		}
	}
}

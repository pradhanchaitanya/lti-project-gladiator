package com.lti.training.projectgladiator.controller;

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
import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.service.CartService;
import com.lti.training.projectgladiator.service.ProductService;
import com.lti.training.projectgladiator.service.UserService;

@Controller
@SessionAttributes({"user", "isError", "error", "products", "noOfProducts"})
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
				Set<Product> products = productService.fetchProductsFromCartOfUser((User)model.get("user"));
				model.addAttribute("noOfProducts", products.size());
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
		User validatedUser = userService.validateUser(email, password);
		// handle invalid credentials
		
		model.addAttribute("user", validatedUser);
		return "redirect:/showDashboard.do";
	}
	
	@RequestMapping(path = "/showCart.do", method = RequestMethod.GET)
	public String showCart(ModelMap model) {
		if (model.containsAttribute("user")) {
			try {
				Set<Product> products = productService.fetchProductsFromCartOfUser((User)model.get("user"));
				model.addAttribute("products", products);
			} catch (Exception e) {
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
		productService.addProductToCart(selectedProduct, userCart, 1);
		return "redirect:showHomepage.do";
	}
}

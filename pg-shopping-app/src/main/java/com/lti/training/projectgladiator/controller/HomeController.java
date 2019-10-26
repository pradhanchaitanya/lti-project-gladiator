package com.lti.training.projectgladiator.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.service.ProductService;

@Controller
@SessionAttributes({"user", "products", "product"})
public class HomeController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping("/showHomepage.do")
	public String showHomePage(ModelMap model) {
		List<Product> products = new ArrayList<>(productService.fetchTopProducts());
		model.addAttribute("products", products);
		
		if (model.containsAttribute("user")) {
			return "index.jsp?loggedin=true";
		}
		return "index.jsp";
	}
	
	@RequestMapping("/showAbout.do")
	public String showAboutPage(ModelMap model) {
		if (model.containsAttribute("user")) {
			return "aboutus.jsp?loggedin=true";
		}
		return "aboutus.jsp";
	}
	
	@RequestMapping("/showRetailerHomepage.do")
	public String showRetailerHomePage(ModelMap model) {
		if (model.containsAttribute("retailer")) {
			return "retailer.jsp?loggedin=true";
		}
		return "retailer.jsp";
	}
	
	@RequestMapping("/showShopPage.do")
	public String showShopPage(ModelMap model) {
		/*if (model.containsAttribute("shop")) {
			return "shop.jsp?loggedin=true";
		}*/
		return "shop.jsp";
	}
	
	@RequestMapping(path = "/showProductDetails.do", method = RequestMethod.GET)
	public String showProductDetails(@RequestParam("id") long productId, ModelMap model) {
		Product product = productService.fetchProductById(productId);
		model.addAttribute("product", product);
		return "product-description.jsp";
	}
	
}

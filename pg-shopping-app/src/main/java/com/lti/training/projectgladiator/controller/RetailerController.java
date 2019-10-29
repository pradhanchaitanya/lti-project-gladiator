package com.lti.training.projectgladiator.controller;

import java.io.File;
import java.time.Instant;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.lti.training.projectgladiator.dto.ProductDTO;
import com.lti.training.projectgladiator.dto.RetailerDTO;
import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.service.RetailerService;

@Controller
@SessionAttributes({"retailer", "isError", "error", "products", "noOfProducts"})
public class RetailerController {

	private static final String FILE_PATH = "D:\\eclipse-workspace\\lti-project-gladiator\\pg-shopping-app\\src\\main\\webapp\\resources\\images\\uploads";
	
	@Autowired
	RetailerService retailerService;
	
	@RequestMapping(path = "/registerRetailer.do", method = RequestMethod.GET)
	public String showRegisterForRetailer() {
		return "retailerRegistration.jsp";
	}
	
	@RequestMapping(path = "/registerRetailer.do", method = RequestMethod.POST)
	public String registerRetailer(RetailerDTO retailerData, ModelMap model) {
		
		Retailer retailer = new Retailer();
		retailer.setName(retailerData.getName());
		retailer.setEmail(retailerData.getEmail());
		retailer.setMobileNumber(retailerData.getMobileNumber());
		retailer.setPassword(retailerData.getPassword());
		retailer.setShopName(retailerData.getShopName());
		retailer.setAddress(retailerData.getAddress());
		retailer.setCreatedAt(LocalDateTime.now());
		
		try {
			retailerService.addNewRetailer(retailer);
		} catch (Exception e) {
			model.addAttribute("isError", true);
			model.addAttribute("error", "Please enter valid data!");
			return "redirect:/registerRetailer.do";
		}
		
		model.addAttribute("retailer", retailer);
		return "redirect:/showRetailerDashboard.do";
	}
	
	@RequestMapping("/showRetailerDashboard.do")
	public String showDashboard(ModelMap model) {
		if (model.containsAttribute("retailer")) {
			Retailer currentRetailer = (Retailer) model.get("retailer");
			List<Product> products = new ArrayList<Product>(retailerService.fetchProductsForRetailer(currentRetailer));
			model.addAttribute("products", products);
			model.addAttribute("noOfProducts", products.size());
			return "retailerDashboard.jsp";
		}
		
		return "redirect:/loginRetailer.do";
	}

	@RequestMapping(path = "/loginRetailer.do", method = RequestMethod.GET)
	public String showLoginForRetailer() {
		return "retailerLogin.jsp";
	}
	
	@RequestMapping(path = "/loginRetailer.do", method = RequestMethod.POST) 
	public String loginRetailer(@RequestParam("email") String email,
								@RequestParam("password") String password, ModelMap model) {
		Retailer validatedRetailer = retailerService.validateRetailer(email, password);
		
		model.addAttribute("retailer", validatedRetailer);
		return "redirect:/showRetailerDashboard.do";
	}
	
	@RequestMapping(path = "/logoutRetailer.do")
	public String logout(ModelMap model, HttpSession session) {
		model.clear();
		session.invalidate();
		return "redirect:/showRetailerHomepage.do";
	}
	
	
	@RequestMapping(path = "/addProduct.do", method = RequestMethod.POST)
	public String addProduct(ProductDTO data, ModelMap model) {
		Retailer currentRetailer = (Retailer) model.get("retailer");
		
		MultipartFile file = data.getImage();
		String imagePath = null;
		String imageName = null;
		if(!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				/*
				// root path
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "tmpFiles");
				if(!dir.exists())
					dir.mkdirs();
				
				serverFile = new File(dir.getAbsolutePath() + File.separator + file.getOriginalFilename());
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				*/
//				Resource resource = resourceLoader.getResource("webapp\\resources\\images");
				
				imageName = Instant.now().getEpochSecond() + "-" + file.getOriginalFilename().trim();
				imagePath = FILE_PATH + "\\" + imageName;
										
				file.transferTo(new File(imagePath));
			} catch (Exception e) {
				model.addAttribute("error", e.getMessage());
			}
		} else {
			model.addAttribute("error", "No file selected");
			return "redirect:/showRetailerDashboard.do";
		}
		
		Product product = new Product();
		product.setName(data.getName());
		product.setDescription(data.getDescription());
		product.setPrice(data.getPrice());
		product.setCategory(data.getCategory());
		product.setBrand(data.getBrand());
		product.setQuantity(data.getQuantity());
		product.setDiscount(data.getDiscount());
		product.setImagePath(imageName);
		product.setRetailer(currentRetailer);
		
		retailerService.addNewProduct(product);
		return "redirect:/showRetailerDashboard.do";
	}
	
}

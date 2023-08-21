package com.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.Dao.ProductDao;
import com.Model.Product;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductController {

	@Autowired
	private ProductDao productdao;

	@RequestMapping("home")
	public String home(Model m) {
		List<Product> products = productdao.getProducts();
		m.addAttribute("product", products);

		return "home";
	}

	// show add form
	@RequestMapping("/add-form")
	public String addProduct() {
		// m.addAttribute("title","Add-Product");
		return "add_product_form";
	}

	@RequestMapping(value = "/Handle-Product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {

		System.out.println(product);
		productdao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/home");
		return redirectView;
	}

	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId, HttpServletRequest request) {

		this.productdao.deleteProduct(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/home");
		return redirectView;
	}

	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") int pid,Model m)
	{
		 Product product=this.productdao.getProduct(pid);
		 m.addAttribute("product", product);
		
		return "update_form";
	}
}

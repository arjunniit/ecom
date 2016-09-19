package com.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.model.CartItems;
import com.model.Product;
import com.service.CartItemsService;
import com.service.ProductService;

@Controller
public class CartController {
	
	@Autowired
	private CartItemsService cartService;
	@Autowired
	private ProductService productService;

	@RequestMapping("addtocart/{product.productid}")
	public String addtocart(@PathVariable("product.productid")int id)
	{
		CartItems cart=new CartItems();
		Product pr=productService.getProduct(id);
		List<CartItems> crt=cartService.getAllProduct();
		System.out.println(crt);
		for(int i=0;i<crt.size();i++)
		{
			int tempid=crt.get(i).getProduct().getproductid();
			System.out.println(tempid);
			System.out.println(id);
			if(tempid==id)
			{	
				int quantity=crt.get(i).getQuantity()+1;
				crt.get(i).setQuantity(quantity);
				int price=pr.getProductprice()*quantity;
				crt.get(i).setTotalPrice(price);
				cartService.update(crt.get(i));
				return"redirect:/viewall";
			}
		}
		
		cart.setQuantity(1);
		cart.setTotalPrice(pr.getProductprice());
		cart.setProduct(pr);
		cartService.add(cart);
		return"redirect:/viewall";
	}
	
	@RequestMapping("delete/cart/{id}")
	public String delcart(@PathVariable("id")int id,ModelMap model)
	{	
		cartService.delete(id);
		return"redirect:/cart";
	}
	
	@RequestMapping("/cart")
	public String getcart(Model map )
	{
		CartItems cart=new CartItems();
		List<CartItems> crt=cartService.getAllProduct();
		map.addAttribute("cart", cart);
		map.addAttribute("cartList", cartService.getAllProduct());
		return "cart";
	}
	
}

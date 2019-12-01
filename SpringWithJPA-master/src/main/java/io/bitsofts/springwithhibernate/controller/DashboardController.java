/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.springwithhibernate.controller;


import io.bitsofts.springwithhibernate.model.Brand;
import io.bitsofts.springwithhibernate.model.Item;
import io.bitsofts.springwithhibernate.model.Product;
import io.bitsofts.springwithhibernate.repository.BrandRepository;
import io.bitsofts.springwithhibernate.repository.ProductRepository;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestScope;

/**
 *
 * @author Administrator
 */
@Controller
public class DashboardController {
    
    @Autowired
    private ProductRepository pr;
    @RequestMapping(value = "/home")
    public String home(HttpServletRequest request, Model model){
        List<Product> products = (List<Product>) pr.findAll();
        List<List<Product>> productRowList = new ArrayList<>();
        List<Product> columnsProducts = new ArrayList<>();
        for(int i=0; i<products.size(); i++){
            if(i%4 == 0){
                productRowList.add(columnsProducts);
                columnsProducts = new ArrayList<>();
            } else if (products.size() % 4 != 0 && products.size()-1 == 1) {
                 productRowList.add(columnsProducts);
            }
            columnsProducts.add(products.get(i));
        }
//        System.out.println("------------------rows "+productRowList.size());
        model.addAttribute("items", productRowList);
        return "homePage";
    }
    
    
    
    @RequestMapping(value = "/cartItems")
    public String cartItems(HttpSession session){
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        if(cart == null) {
//            session.setAttribute("cart", null);
            return "cartPage";
        } else {
            session.setAttribute("cart", cart);
            return "cartPage";
        }
    }
    
    
    @RequestMapping(value = "/addItem/{id}")
    public String addCartItem(@PathVariable Integer id, RequestScope requestScope, HttpServletRequest request, HttpSession session){
        Product p = pr.findOne(id);
//        String path = (String)request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
//       System.out.println("Path ---------------- "+path);
        Item i = new Item();
       
        i.setProduct(p);
        i.setQuantity(1);
        if(session.getAttribute("cart") == null){
            List<Item> cart = new ArrayList<>();
            cart.add(i);
            session.setAttribute("cart", cart);
           
        } else {
            List<Item> cart = (List<Item>) session.getAttribute("cart");
            int index = exists(id, session);
            if(index == -1){
                cart.add(i);    
            }else{
                int qty = cart.get(index).getQuantity()+1;
                cart.get(index).setQuantity(qty);
            }
            
            session.setAttribute("cart", cart);
        }
        return "redirect:/";
        
    
    }
    
    //remove.........
    
    @RequestMapping(value = "/remove/{id}")
	public String remove(@PathVariable( value = "id") Integer id, HttpSession session) {
	
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = exists(id, session);
		cart.remove(index);
                
		session.setAttribute("cart", cart);
                
		return "redirect:/cartItems";
	}
           
	private int exists(Integer id,HttpSession session) {
            List<Item> cart = (List<Item>) session.getAttribute("cart");
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getProduct().getId() == id ) {
                           
				return i;
			}
		}
		return -1;
	}
        
        
}

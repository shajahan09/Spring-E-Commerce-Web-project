/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.springwithhibernate.controller;

import io.bitsofts.springwithhibernate.model.Brand;
import io.bitsofts.springwithhibernate.model.Item;
import io.bitsofts.springwithhibernate.model.Product;
import io.bitsofts.springwithhibernate.model.User;
import io.bitsofts.springwithhibernate.repository.BrandRepository;
import io.bitsofts.springwithhibernate.repository.ProductRepository;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller

public class menuController {
  @Autowired
    private BrandRepository brnd;
    @RequestMapping(value = "/products")
    public String produs(HttpServletRequest request, Model model){
        List<Brand> products = (List<Brand>) brnd.findAll();
        List<List<Brand>> productRowList = new ArrayList<>();
        List<Brand> columnsProducts = new ArrayList<>();
        for(int i=0; i<products.size(); i++){
            if(i%3 == 0){
                productRowList.add(columnsProducts);
                columnsProducts = new ArrayList<>();
            } else if (products.size() % 3 != 0 && products.size()-1 == 1) {
                 productRowList.add(columnsProducts);
            }
            columnsProducts.add(products.get(i));
        }
        System.out.println("------------------rows "+productRowList.size());
        model.addAttribute("item", productRowList);
        return "productsPage";
    }
    
    
    
    
    
    
     @RequestMapping(value = "/addItems/{id}")
    public String addCartItems(@PathVariable Integer id,HttpServletRequest request, HttpSession session){

        Brand pr = brnd.findOne(id);

        Item i = new Item();

        i.setBrand(pr);
        i.setQuantity(1);
        if(session.getAttribute("cart") == null){
            List<Item> cart = new ArrayList<>();
            
            cart.add(i);
            System.out.println("..............."+cart.get(0).getBrand().getName());
            session.setAttribute("cart", cart);
            
        
        }   
        return "redirect:/products";
    }
    @RequestMapping(value = "/brandAddpro",method = RequestMethod.POST)
    public String adminAddproducts(HttpServletRequest request,Model model){
         
        String name = request.getParameter("name");
        int qty =Integer.parseInt(request.getParameter("qty")) ;
        Double price =Double.parseDouble(request.getParameter("price")) ;
         String img = request.getParameter("img");
        
        Brand usr = new Brand();
        usr.setName(name);
        usr.setQty(qty);
        usr.setPrice(price);
        usr.setImg(img);
       
        brnd.save(usr);
        
           
          
        return "addProducts";
        }
   
    }
    
  

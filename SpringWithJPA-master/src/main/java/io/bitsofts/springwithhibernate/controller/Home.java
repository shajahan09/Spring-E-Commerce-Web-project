/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.springwithhibernate.controller;

import io.bitsofts.springwithhibernate.model.Item;
import io.bitsofts.springwithhibernate.model.Product;
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
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Administrator
 */
@Controller

public class Home {
    
    @Autowired
    private ProductRepository pr;
    @RequestMapping("/")
    public String menu(HttpServletRequest request, Model model){
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
        System.out.println("------------------rows "+productRowList.size());
        model.addAttribute("items", productRowList);
       
        return "menuPage";
    
    
    }
    
    @RequestMapping(method = RequestMethod.GET, value = "/house")
    public String products(){
        return "householdPage";
    }
    @RequestMapping(method = RequestMethod.GET, value = "/back")
    public String back(){
        return "menuPage";
    }

}

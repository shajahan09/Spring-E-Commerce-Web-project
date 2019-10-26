/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.springwithhibernate.controller;

import io.bitsofts.springwithhibernate.model.User;

import io.bitsofts.springwithhibernate.repository.UserRepository;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Administrator
 */
@Controller
public class AuthController {
    
    @Autowired
    private UserRepository repository;
    
   
    
    @RequestMapping(method = RequestMethod.GET, value = "/login")
    public String loginGet(){
        return "loginPage";
    }
    @RequestMapping(method = RequestMethod.GET, value = "/signup")
    public String signupGet(){
        return "signupPage";
    }
    @RequestMapping(method = RequestMethod.GET, value = "/products")
    public String products(){
        return "productsPage";
    }
    
//    @RequestMapping(method = RequestMethod.POST, value = "/loginSubmit")
//     public String loginSubmitPost(HttpServletRequest request, Model model) {
//         String name = request.getParameter("name");
//         String password = request.getParameter("password");
////         System.out.println("----------------- "+name);
//         if(!name.isEmpty() && !password.isEmpty()) {
//             User u = repository.findByNameAndPassword(name, password);
//             System.out.println("----- "+u.getName());
//             if(!u.equals(null)) {
//                 return "homePage";
//             } else {
//                 model.addAttribute("error", "User Name or Password does not  match!");
//                 return "loginPage";
//             }
//         }
//         model.addAttribute("error", "Input fileds");
//         return "loginPage";
//     }
//     @RequestMapping(method=RequestMethod.POST,value = "/signupSubmit")
//     public String signup(HttpServletRequest request,Model model){
//         
//        String name = request.getParameter("name");
//        String email = request.getParameter("email");
//        String phone = request.getParameter("phone");
//        String gender = request.getParameter("gender");
//        String password = request.getParameter("password");
//        User usr = new User();
//        usr.setName(name);
//        usr.setEmail(email);
//        usr.setPassword(password);
//        usr.setPhone(phone);
//        usr.setGender(gender);
//        try{
//          repository.save(usr);
//          return "loginPage";
//        }
//        catch(Exception e){
//            System.out.println("Error "+e.getMessage());
//            model.addAttribute("Error", " Update");
//            return "signupPage";
//        }
//       
//     }
      
    
}

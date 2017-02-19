package com.izutov.ssa.controller;

import com.izutov.ssa.model.User;
import com.izutov.ssa.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by user on 16.02.2017.
 */
@Controller
public class UserController
{
    private UserService userService;

    @Autowired(required = true)
    @Qualifier(value = "userService")
    public void setUserService(UserService userService)
    {
        this.userService = userService;
    }

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String listUsers(Model model)
    {
        model.addAttribute("user", new User());
        model.addAttribute("listUsers", userService.listUsers());

        return "user";
    }

    @RequestMapping(value = "/user/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user") User user)
    {
        if (user.getId() == 0)
        {
            userService.addUser(user);
        }else{
            userService.updateUser(user);
        }

        return "redirect:/users";
    }

    @RequestMapping(value = "/remove/{id}")
    public String removeUser(@ModelAttribute("id") int id)
    {
        userService.removeUser(id);

        return "redirect:/users";
    }

    @RequestMapping(value = "/edit/{id}")
    public String editUser(@ModelAttribute("id") int id, Model model)
    {
        model.addAttribute("user", userService.getUserByID(id));
        model.addAttribute("listUsers", userService.listUsers());

        return "user";
    }

    @RequestMapping(value = "/userdetails/{id}")
    public String userDetails(@ModelAttribute("id") int id, Model model)
    {
        model.addAttribute("user", userService.getUserByID(id));

        return "userdetails";
    }

}

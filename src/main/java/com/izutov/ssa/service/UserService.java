package com.izutov.ssa.service;

import com.izutov.ssa.model.User;

import java.awt.print.Pageable;
import java.util.List;

/**
 * Created by user on 16.02.2017.
 */
public interface UserService
{
    void addUser(User user);
    void updateUser(User user);
    void removeUser(int id);
    User getUserByID(int id);
    List<User> listUsers();

}

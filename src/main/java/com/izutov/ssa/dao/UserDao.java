package com.izutov.ssa.dao;

import com.izutov.ssa.model.User;
import java.util.List;

/**
 * Created by user on 16.02.2017.
 */
public interface UserDao
{
    void addUser(User user);
    void updateUser(User user);
    void removeUser(int id);
    User getUserById(int id);
    List<User> listUsers();
}

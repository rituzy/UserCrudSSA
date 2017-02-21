package com.izutov.ssa.service;

import com.izutov.ssa.dao.UserDao;
import com.izutov.ssa.model.User;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.awt.print.Pageable;
import java.util.List;

/**
 * Created by user on 16.02.2017.
 */
@Service
public class UserServiceImpl implements UserService
{
    private UserDao userDao;

    public void setUserDao(UserDao userDao)
    {
        this.userDao = userDao;
    }

    @Transactional
    public void addUser(User user)
    {
        userDao.addUser(user);
    }

    @Transactional
    public void updateUser(User user)
    {
        userDao.updateUser(user);
    }

    @Transactional
    public void removeUser(int id)
    {
        userDao.removeUser(id);
    }

    @Transactional
    public User getUserByID(int id)
    {
        return userDao.getUserById(id);
    }

    @Transactional
    public List<User> listUsers()
    {
        return userDao.listUsers();
    }
}

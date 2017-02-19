package com.izutov.ssa.dao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import com.izutov.ssa.model.User;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by user on 16.02.2017.
 */
@Repository
public class UserDaoImpl implements UserDao
{
    private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory)
    {
        this.sessionFactory = sessionFactory;
    }

    public void addUser(User user)
    {
        Session session = sessionFactory.getCurrentSession();
        session.persist(user);
        logger.info("User successfully saved. User details: " + user);
    }

    public void updateUser(User user)
    {
        Session session = sessionFactory.getCurrentSession();
        session.update(user);
        logger.info("User successfully updated. User details: " + user);

    }

    public void removeUser(int id)
    {
        Session session = sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, new Integer(id));
        if (user != null)
        {
            session.delete(user);
            logger.info("User successfully deleted. User: " + user);
        }else{
            logger.error("User for deletion not found!Invalid user id: " + id);
        }
    }

    public User getUserById(int id)
    {
        Session session = sessionFactory.getCurrentSession();
        User user = (User) session.load(User.class, new Integer(id));
        logger.info("User successfully loaded. User details: " + user);
        return user;
    }

    @SuppressWarnings("unchecked")
    public List<User> listUsers()
    {
        Session session = sessionFactory.getCurrentSession();
        List<User> userList = session.createQuery("from User").list();
        for (User user : userList)
        {
            logger.info("User list. Every user: " + user);
        }
        return userList;
    }
}

package services;

import db.*;
import models.*;
import org.hibernate.*;
import org.hibernate.query.Query;


public class UserServiceImpl implements UserService{


    @Override
    public UserEntity findUserByUsername(String username) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "FROM UserEntity as u WHERE u.userName = :username";
        Query query = session.createQuery(hql);
        query.setParameter("username", username);
        UserEntity user = (UserEntity) query.getSingleResult();
        session.getTransaction().commit();
        session.close();
        return user;
    }

    @Override
    public void save(UserEntity user) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        Long id = getIdByUsername(user.getUserName());
        if (id != null) {
            session.merge(user);
        }
        else {
            session.save(user);
        }
        session.getTransaction().commit();
        session.close();
    }

    private Long getIdByUsername(String username) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "SELECT u.id FROM UserEntity as u WHERE u.userName = :username";
        Query query = session.createQuery(hql);
        query.setParameter("username", username);
        Long id;
        try {
            id = (Long) query.getSingleResult();
        } catch (Exception e) {
            session.getTransaction().commit();
            session.close();
            return null;
        }
        session.getTransaction().commit();
        session.close();
        return id;
    }
}

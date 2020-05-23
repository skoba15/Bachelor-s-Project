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
        UserEntity user;
        try {
            user = (UserEntity) query.getSingleResult();
        } catch (Exception e) {
            user = null;
        }
        session.getTransaction().commit();
        session.close();
        return user;
    }

    @Override
    public Long save(UserEntity user) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        Long result = (Long) session.save(user);
        try {
            session.getTransaction().commit();
        } catch (Exception e) {
            result = null;
        }
        session.close();
        return result;
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

    @Override
    public UserEntity findUserById(Long id) {
        Session session = JdbcConnection.getSessionFactory().openSession();
        session.beginTransaction();
        String hql = "FROM UserEntity as u WHERE u.id = :id";
        Query query = session.createQuery(hql);
        query.setParameter("id", id);
        UserEntity user;
        try {
            user = (UserEntity) query.getSingleResult();
        } catch (Exception e) {
            user = null;
        }
        session.getTransaction().commit();
        session.close();
        return user;
    }
}
